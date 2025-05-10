import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import '../../../const.dart';
import '../../../core/utils/secret_key.dart';
import '../../../generated/l10n.dart';
import '../presentation/views/data/model/location_model.dart';
import '../presentation/views/widgets/location_details.dart';

class AiPreferenceBottomSheet extends StatefulWidget {
  const AiPreferenceBottomSheet({super.key});

  @override
  _AiPreferenceBottomSheetState createState() =>
      _AiPreferenceBottomSheetState();
}

class _AiPreferenceBottomSheetState extends State<AiPreferenceBottomSheet> {
  final GlobalKey<FormState> key = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _isLoading = false;
  void _handleUserPreference(String preference) async {
    // Validate the user input
    if (preference.length < 2 || RegExp(r'^[ا]+$').hasMatch(preference)) {
      // Show a warning or return early
      log('Invalid input. Please enter a valid preference.');
      return;
    }
    setState(() {
      _isLoading = true;
    });

    // Initialize the AI model
    final model = GenerativeModel(
      model: 'gemini-1.5-flash-latest',
      apiKey: kApiKey,
    );

    final prompt = sendQuestion(preference, context);
    final content = [Content.text(prompt)];

    // Get AI response
    final response = await model.generateContent(content);
    log('AI Answer: ${response.text!}');
    final aiResponse =
        response.text?.trim(); // AI should only give the place name
    List<LocationModel> locations = getLocations(context);

    LocationModel location = locations.firstWhere(
      (loc) => loc.name.contains(aiResponse!),
      orElse: () => LocationModel(
          locationID: '',
          name: '',
          cityName: '',
          description: '',
          horizontalImageUrl: '',
          verticallImageUrl: '',
          googleMapsUrl: ''),
    );

    if (location.name != '') {
      Navigator.pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LocationDetails(location: location),
        ),
      );
    } else {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          duration: Duration(seconds: 3),
          content: Text('لم يتم العثور على مكان مطابق، حاول مرة أخرى.'),
        ),
      );
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: _focusNode.hasFocus
          ? 200 + MediaQuery.of(context).viewInsets.bottom
          : 250,
      child: Column(
        children: [
          Text(
            S.of(context).aiBottomSheetTitle,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Form(
            key: key,
            autovalidateMode: autovalidateMode,
            child: TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  log('Invalid input. Please enter a valid preference.');

                  return S.of(context).requiredField;
                } else if (RegExp(r'^[ا]+$').hasMatch(value)) {
                  log('Invalid input. Please enter a valid preference.');
                  return S.of(context).invalidValue;
                }
                return null;
              },
              focusNode: _focusNode,
              controller: _controller,
              decoration: InputDecoration(
                focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                  width: 2,
                  color: primaryColor,
                )),
                enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                  width: 2,
                  color: primaryColor,
                )),
                hintText: S.of(context).aiBottomSheetHint,
              ),
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 45,
            child: ElevatedButton(
              style: ButtonStyle(
                foregroundColor: const MaterialStatePropertyAll(Colors.white),
                backgroundColor:
                    MaterialStatePropertyAll(Theme.of(context).primaryColor),
              ),
              onPressed: _isLoading
                  ? null
                  : () {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                      key.currentState!.validate();
                      if (_controller.text.trim().isNotEmpty &&
                          key.currentState!.validate()) {
                        _focusNode.unfocus();
                        _handleUserPreference(_controller.text.trim());
                      }
                    },
              child: _isLoading
                  ? const SizedBox(
                      height: 22,
                      width: 22,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 3,
                      ),
                    )
                  : Text(S.of(context).exploreButton,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
            ),
          ),
        ],
      ),
    );
  }
}

String sendQuestion(String preference, BuildContext context) {
  // Combine all location names into a single string
  List<LocationModel> locations = getLocations(context);

  String places = locations.map((e) => e.name).join(', ');

  // Form a coherent question for the AI to answer
  String question =
      'Based on this user preference: "$preference", where should they visit from the following: $places? Provide only the name of the place or null if no answer.';

  return question;
}
