 import 'package:flutter/material.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import '../../../../const.dart';

class AiChatView extends StatefulWidget {
  const AiChatView({super.key});

  @override
  AiChatViewState createState() => AiChatViewState();
}

class AiChatViewState extends State<AiChatView> {
  // Lists to store questions and messages
  List<String> questions = [];
  List<String> messages = []; // Change to List<String>

  @override
  void initState() {
    super.initState();

    // Optionally, you can send a question to the AI immediately
    _sendQuestion(
        'هذه الرسالة سوف تظهر للمستخدم عند فتح الصفحة. لا تقل بالتاكيد هل يمكنك مساعدتي في اختيار مكان في الأردن للزيارة؟');
  }

  // Text controller for input
  final TextEditingController _controller = TextEditingController();
  bool _isLoading = false;

  // Function to send the user's question and get the AI response
  Future<void> _sendQuestion(String prompt) async {
    setState(() {
      _isLoading = true;
    });

    // Add the question to the list
    questions.add(prompt);

    // Combine the entire conversation history into a single string
    String conversationHistory = "";
    for (int i = 0; i < questions.length; i++) {
      conversationHistory += "سؤال: ${questions[i]}\n";
      if (i < messages.length) {
        conversationHistory += "جواب: ${messages[i]}\n";
      }
    }

    conversationHistory += "سؤال: $prompt\n";

    // Initialize the AI model
    final model = GenerativeModel(
      model: 'gemini-1.5-flash-latest',
      apiKey: kApiKey,
    );

    final content = [Content.text(conversationHistory)];

    // Get AI response
    final response = await model.generateContent(content);

    // Get the response text
    String responseText = response.text.toString();

    // Add the response to the messages list
    messages.add(responseText); // Change to add responseText directly

    // Update UI
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'تحدث مع الذكاء الاصطناعي',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Question Bubble (on the right)
                        index == 0
                            ? Container()
                            : Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                          vertical: 4.0, horizontal: 8.0)
                                      .copyWith(left: 32),
                                  padding: const EdgeInsets.all(12.0),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[300],
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15),
                                    ),
                                  ),
                                  child: Text(
                                    questions[index],
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),

                        // Answer Bubble (on the left)
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                    vertical: 4.0, horizontal: 8.0)
                                .copyWith(right: 32),
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Text(
                              messages[index],
                              style: const TextStyle(color: Colors.black87),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          const  Divider(
              height: 0,
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.grey[100],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onSubmitted: (value) {
                        if (_controller.text.trim().isNotEmpty) {
                          // Send the question and get the AI response
                          _sendQuestion(_controller.text.trim());
                          _controller.clear();
                        }
                      },
                      controller: _controller,
                      decoration: const InputDecoration(
                        hintText: 'اسأل سؤالًا...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {
                      if (_controller.text.trim().isNotEmpty) {
                        // Send the question and get the AI response
                        _sendQuestion(_controller.text.trim());
                        _controller.clear();
                        FocusScope.of(context).unfocus(); // Hide the keyboard
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
