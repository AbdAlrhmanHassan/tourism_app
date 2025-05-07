// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Explore Jordan`
  String get appBarTitle {
    return Intl.message(
      'Explore Jordan',
      name: 'appBarTitle',
      desc: '',
      args: [],
    );
  }

  /// `What do you prefer in your visit?`
  String get aiBottomSheetTitle {
    return Intl.message(
      'What do you prefer in your visit?',
      name: 'aiBottomSheetTitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your preference (e.g., sea, mountains...)`
  String get aiBottomSheetHint {
    return Intl.message(
      'Enter your preference (e.g., sea, mountains...)',
      name: 'aiBottomSheetHint',
      desc: '',
      args: [],
    );
  }

  /// `This field is required`
  String get requiredField {
    return Intl.message(
      'This field is required',
      name: 'requiredField',
      desc: '',
      args: [],
    );
  }

  /// `This value cannot be used`
  String get invalidValue {
    return Intl.message(
      'This value cannot be used',
      name: 'invalidValue',
      desc: '',
      args: [],
    );
  }

  /// `Explore`
  String get exploreButton {
    return Intl.message('Explore', name: 'exploreButton', desc: '', args: []);
  }

  /// `No matching location found, please try again.`
  String get noMatchSnackBar {
    return Intl.message(
      'No matching location found, please try again.',
      name: 'noMatchSnackBar',
      desc: '',
      args: [],
    );
  }

  /// `Show on Map`
  String get showOnMap {
    return Intl.message('Show on Map', name: 'showOnMap', desc: '', args: []);
  }

  /// `Petra`
  String get location_petra_name {
    return Intl.message(
      'Petra',
      name: 'location_petra_name',
      desc: '',
      args: [],
    );
  }

  /// `An ancient city carved into the rock, considered one of the New Seven Wonders of the World. It was the capital of the Nabataeans and is known as the "Rose City" due to the color of its stones. Located in southern Jordan, it's one of the most visited tourist sites in the world.`
  String get location_petra_description {
    return Intl.message(
      'An ancient city carved into the rock, considered one of the New Seven Wonders of the World. It was the capital of the Nabataeans and is known as the "Rose City" due to the color of its stones. Located in southern Jordan, it\'s one of the most visited tourist sites in the world.',
      name: 'location_petra_description',
      desc: '',
      args: [],
    );
  }

  /// `Dead Sea`
  String get location_deadSea_name {
    return Intl.message(
      'Dead Sea',
      name: 'location_deadSea_name',
      desc: '',
      args: [],
    );
  }

  /// `The lowest point on Earth, known for its salty, mineral-rich waters that make floating effortless. It is believed to have been part of the biblical city of Sodom.`
  String get location_deadSea_description {
    return Intl.message(
      'The lowest point on Earth, known for its salty, mineral-rich waters that make floating effortless. It is believed to have been part of the biblical city of Sodom.',
      name: 'location_deadSea_description',
      desc: '',
      args: [],
    );
  }

  /// `Ajloun Castle`
  String get location_ajloun_name {
    return Intl.message(
      'Ajloun Castle',
      name: 'location_ajloun_name',
      desc: '',
      args: [],
    );
  }

  /// `Ajloun Castle is a medieval Islamic fortress located in northwestern Jordan. It's one of the country’s most important historical landmarks and overlooks the Jordan Valley.`
  String get location_ajloun_description {
    return Intl.message(
      'Ajloun Castle is a medieval Islamic fortress located in northwestern Jordan. It\'s one of the country’s most important historical landmarks and overlooks the Jordan Valley.',
      name: 'location_ajloun_description',
      desc: '',
      args: [],
    );
  }

  /// `Jerash Ruins`
  String get location_jerash_name {
    return Intl.message(
      'Jerash Ruins',
      name: 'location_jerash_name',
      desc: '',
      args: [],
    );
  }

  /// `An archaeological city featuring well-preserved Roman ruins. It’s one of the largest Roman cities in the Middle East, including the South Theater, the Oval Plaza, and magnificent Corinthian columns.`
  String get location_jerash_description {
    return Intl.message(
      'An archaeological city featuring well-preserved Roman ruins. It’s one of the largest Roman cities in the Middle East, including the South Theater, the Oval Plaza, and magnificent Corinthian columns.',
      name: 'location_jerash_description',
      desc: '',
      args: [],
    );
  }

  /// `Wadi Rum`
  String get location_wadiRum_name {
    return Intl.message(
      'Wadi Rum',
      name: 'location_wadiRum_name',
      desc: '',
      args: [],
    );
  }

  /// `Wadi Rum, known as the Valley of the Moon, is a desert in southern Jordan famous for its dramatic landscapes. It features red sand dunes and towering rock formations, and has served as a filming location for several major movies.`
  String get location_wadiRum_description {
    return Intl.message(
      'Wadi Rum, known as the Valley of the Moon, is a desert in southern Jordan famous for its dramatic landscapes. It features red sand dunes and towering rock formations, and has served as a filming location for several major movies.',
      name: 'location_wadiRum_description',
      desc: '',
      args: [],
    );
  }

  /// `Talk to AI`
  String get aiViewTitle {
    return Intl.message('Talk to AI', name: 'aiViewTitle', desc: '', args: []);
  }

  /// `Welcome to the Explore Jordan app! Here you can explore the amazing tourist attractions in Jordan. If you have any questions or need assistance, feel free to ask.`
  String get aiWelcomeMessage {
    return Intl.message(
      'Welcome to the Explore Jordan app! Here you can explore the amazing tourist attractions in Jordan. If you have any questions or need assistance, feel free to ask.',
      name: 'aiWelcomeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Ask `
  String get askAQuestion {
    return Intl.message('Ask ', name: 'askAQuestion', desc: '', args: []);
  }

  /// `Profile`
  String get profileViewTitle {
    return Intl.message(
      'Profile',
      name: 'profileViewTitle',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get darkMode {
    return Intl.message('Dark Mode', name: 'darkMode', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `About the App`
  String get aboutApp {
    return Intl.message('About the App', name: 'aboutApp', desc: '', args: []);
  }

  /// `Version`
  String get appVersion {
    return Intl.message('Version', name: 'appVersion', desc: '', args: []);
  }

  /// `Home`
  String get BottomNavigationBarHome {
    return Intl.message(
      'Home',
      name: 'BottomNavigationBarHome',
      desc: '',
      args: [],
    );
  }

  /// `AI`
  String get BottomNavigationBarAi {
    return Intl.message(
      'AI',
      name: 'BottomNavigationBarAi',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get BottomNavigationBarFaviority {
    return Intl.message(
      'Favorites',
      name: 'BottomNavigationBarFaviority',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get BottomNavigationBarSettings {
    return Intl.message(
      'Settings',
      name: 'BottomNavigationBarSettings',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
