import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism_app/core/providers/locale_provider.dart';
import 'package:flutter/scheduler.dart';

import '../../../../../generated/l10n.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  bool isDarkMode =
      SchedulerBinding.instance.platformDispatcher.platformBrightness ==
          Brightness.dark;
  late String selectedLang;

  @override
  void initState() {
    super.initState();
    final locale = Provider.of<LocaleProvider>(context, listen: false).locale;
    selectedLang = locale.languageCode;
  }

  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            // 🌗 Dark Mode
            SwitchListTile(
              title: Text(S.of(context).darkMode),
              value: isDarkMode,
              onChanged: (value) {
                setState(() {
                  isDarkMode = value;
                });
                // Optional: Change theme globally using Provider or other method
              },
            ),

            const Divider(),

            // 🌍 Language
            ListTile(
              title: Text(S.of(context).language),
              trailing: DropdownButton<String>(
                value: selectedLang,
                items: const [
                  DropdownMenuItem(value: 'ar', child: Text('العربية')),
                  DropdownMenuItem(value: 'en', child: Text('English')),
                ],
                onChanged: (value) {
                  if (value != null) {
                    setState(() => selectedLang = value);
                    localeProvider.setLocale(Locale(value));
                  }
                },
              ),
            ),

            const Divider(),

            ListTile(
              title: Text(S.of(context).aboutApp),
              leading: Icon(Icons.info_outline),
            ),

            const Divider(),

            const ListTile(
              title: const Text('Version'),
              subtitle: const Text('1.0.0'),
              leading: const Icon(Icons.verified_user_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
