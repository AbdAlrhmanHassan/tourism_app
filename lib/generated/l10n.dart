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

  /// `Ma'an`
  String get location_petra_city {
    return Intl.message(
      'Ma\'an',
      name: 'location_petra_city',
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

  /// `Amman`
  String get location_deadSea_city {
    return Intl.message(
      'Amman',
      name: 'location_deadSea_city',
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

  /// `Ajloun`
  String get location_ajloun_city {
    return Intl.message(
      'Ajloun',
      name: 'location_ajloun_city',
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

  /// `Jerash`
  String get location_jerash_city {
    return Intl.message(
      'Jerash',
      name: 'location_jerash_city',
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

  /// `Aqaba`
  String get location_wadiRum_city {
    return Intl.message(
      'Aqaba',
      name: 'location_wadiRum_city',
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

  /// `Amman`
  String get location_amman_name {
    return Intl.message(
      'Amman',
      name: 'location_amman_name',
      desc: '',
      args: [],
    );
  }

  /// `Amman`
  String get location_amman_city {
    return Intl.message(
      'Amman',
      name: 'location_amman_city',
      desc: '',
      args: [],
    );
  }

  /// `Amman is Jordan’s capital and most populous city, blending ancient ruins—like the Neolithic ‘Ain Ghazal site—with modern culture.`
  String get location_amman_description {
    return Intl.message(
      'Amman is Jordan’s capital and most populous city, blending ancient ruins—like the Neolithic ‘Ain Ghazal site—with modern culture.',
      name: 'location_amman_description',
      desc: '',
      args: [],
    );
  }

  /// `Aqaba`
  String get location_aqaba_name {
    return Intl.message(
      'Aqaba',
      name: 'location_aqaba_name',
      desc: '',
      args: [],
    );
  }

  /// `Aqaba`
  String get location_aqaba_city {
    return Intl.message(
      'Aqaba',
      name: 'location_aqaba_city',
      desc: '',
      args: [],
    );
  }

  /// `Aqaba on the Red Sea offers beach resorts, world‑class snorkeling over coral reefs, plus medieval Ayla ruins.`
  String get location_aqaba_description {
    return Intl.message(
      'Aqaba on the Red Sea offers beach resorts, world‑class snorkeling over coral reefs, plus medieval Ayla ruins.',
      name: 'location_aqaba_description',
      desc: '',
      args: [],
    );
  }

  /// `Madaba`
  String get location_madaba_name {
    return Intl.message(
      'Madaba',
      name: 'location_madaba_name',
      desc: '',
      args: [],
    );
  }

  /// `Madaba`
  String get location_madaba_city {
    return Intl.message(
      'Madaba',
      name: 'location_madaba_city',
      desc: '',
      args: [],
    );
  }

  /// `Madaba is famed as the “City of Mosaics,” home to the 6th‑century Madaba Map—the oldest cartographic depiction of the Holy Land.`
  String get location_madaba_description {
    return Intl.message(
      'Madaba is famed as the “City of Mosaics,” home to the 6th‑century Madaba Map—the oldest cartographic depiction of the Holy Land.',
      name: 'location_madaba_description',
      desc: '',
      args: [],
    );
  }

  /// `Mount Nebo`
  String get location_mountNebo_name {
    return Intl.message(
      'Mount Nebo',
      name: 'location_mountNebo_name',
      desc: '',
      args: [],
    );
  }

  /// `Madaba`
  String get location_mountNebo_city {
    return Intl.message(
      'Madaba',
      name: 'location_mountNebo_city',
      desc: '',
      args: [],
    );
  }

  /// `Mount Nebo is the biblical site where Moses viewed the Promised Land before his death, featuring a memorial church and panoramic overlooks.`
  String get location_mountNebo_description {
    return Intl.message(
      'Mount Nebo is the biblical site where Moses viewed the Promised Land before his death, featuring a memorial church and panoramic overlooks.',
      name: 'location_mountNebo_description',
      desc: '',
      args: [],
    );
  }

  /// `Dana Biosphere Reserve`
  String get location_danaBiosphere_name {
    return Intl.message(
      'Dana Biosphere Reserve',
      name: 'location_danaBiosphere_name',
      desc: '',
      args: [],
    );
  }

  /// `Tafila`
  String get location_danaBiosphere_city {
    return Intl.message(
      'Tafila',
      name: 'location_danaBiosphere_city',
      desc: '',
      args: [],
    );
  }

  /// `The Dana Biosphere Reserve spans rugged highlands to desert, protecting over 800 plant species and offering hiking through dramatic canyons.`
  String get location_danaBiosphere_description {
    return Intl.message(
      'The Dana Biosphere Reserve spans rugged highlands to desert, protecting over 800 plant species and offering hiking through dramatic canyons.',
      name: 'location_danaBiosphere_description',
      desc: '',
      args: [],
    );
  }

  /// `Umm Qais`
  String get location_ummQais_name {
    return Intl.message(
      'Umm Qais',
      name: 'location_ummQais_name',
      desc: '',
      args: [],
    );
  }

  /// `Irbid`
  String get location_ummQais_city {
    return Intl.message(
      'Irbid',
      name: 'location_ummQais_city',
      desc: '',
      args: [],
    );
  }

  /// `Umm Qais (ancient Gadara) overlooks the Sea of Galilee and is famed for its Hellenistic‑Roman ruins, including a theater and colonnaded streets.`
  String get location_ummQais_description {
    return Intl.message(
      'Umm Qais (ancient Gadara) overlooks the Sea of Galilee and is famed for its Hellenistic‑Roman ruins, including a theater and colonnaded streets.',
      name: 'location_ummQais_description',
      desc: '',
      args: [],
    );
  }

  /// `Karak Castle`
  String get location_karakCastle_name {
    return Intl.message(
      'Karak Castle',
      name: 'location_karakCastle_name',
      desc: '',
      args: [],
    );
  }

  /// `Karak`
  String get location_karakCastle_city {
    return Intl.message(
      'Karak',
      name: 'location_karakCastle_city',
      desc: '',
      args: [],
    );
  }

  /// `Al‑Karak Castle is a 12th‑century Crusader fortress commanding views of the Dead Sea corridor, with massive walls and towers.`
  String get location_karakCastle_description {
    return Intl.message(
      'Al‑Karak Castle is a 12th‑century Crusader fortress commanding views of the Dead Sea corridor, with massive walls and towers.',
      name: 'location_karakCastle_description',
      desc: '',
      args: [],
    );
  }

  /// `Shobak Castle`
  String get location_shobakCastle_name {
    return Intl.message(
      'Shobak Castle',
      name: 'location_shobakCastle_name',
      desc: '',
      args: [],
    );
  }

  /// `Ma'an`
  String get location_shobakCastle_city {
    return Intl.message(
      'Ma\'an',
      name: 'location_shobakCastle_city',
      desc: '',
      args: [],
    );
  }

  /// `Shobak Castle (Crac de Montréal) was the first Crusader castle built in Transjordan (1115 AD), perched atop a hill with sweeping desert views.`
  String get location_shobakCastle_description {
    return Intl.message(
      'Shobak Castle (Crac de Montréal) was the first Crusader castle built in Transjordan (1115 AD), perched atop a hill with sweeping desert views.',
      name: 'location_shobakCastle_description',
      desc: '',
      args: [],
    );
  }

  /// `Wadi Mujib`
  String get location_wadiMujib_name {
    return Intl.message(
      'Wadi Mujib',
      name: 'location_wadiMujib_name',
      desc: '',
      args: [],
    );
  }

  /// `Karak`
  String get location_wadiMujib_city {
    return Intl.message(
      'Karak',
      name: 'location_wadiMujib_city',
      desc: '',
      args: [],
    );
  }

  /// `Wadi Mujib is a dramatic river gorge dropping 900 m to the Dead Sea, known for its adventurous Siq Trail canyon hike through waterfalls and pools.`
  String get location_wadiMujib_description {
    return Intl.message(
      'Wadi Mujib is a dramatic river gorge dropping 900 m to the Dead Sea, known for its adventurous Siq Trail canyon hike through waterfalls and pools.',
      name: 'location_wadiMujib_description',
      desc: '',
      args: [],
    );
  }

  /// `Jordan Museum`
  String get location_jordanMuseum_name {
    return Intl.message(
      'Jordan Museum',
      name: 'location_jordanMuseum_name',
      desc: '',
      args: [],
    );
  }

  /// `Amman`
  String get location_jordanMuseum_city {
    return Intl.message(
      'Amman',
      name: 'location_jordanMuseum_city',
      desc: '',
      args: [],
    );
  }

  /// `The Jordan Museum in Amman showcases the history and culture of Jordan from ancient to modern times.`
  String get location_jordanMuseum_description {
    return Intl.message(
      'The Jordan Museum in Amman showcases the history and culture of Jordan from ancient to modern times.',
      name: 'location_jordanMuseum_description',
      desc: '',
      args: [],
    );
  }

  /// `Qasr Kharana`
  String get location_qasrKharana_name {
    return Intl.message(
      'Qasr Kharana',
      name: 'location_qasrKharana_name',
      desc: '',
      args: [],
    );
  }

  /// `Tafila`
  String get location_qasrKharana_city {
    return Intl.message(
      'Tafila',
      name: 'location_qasrKharana_city',
      desc: '',
      args: [],
    );
  }

  /// `Qasr Kharana is one of the Umayyad desert castles, located in eastern Jordan and is famous for its unique architectural design.`
  String get location_qasrKharana_description {
    return Intl.message(
      'Qasr Kharana is one of the Umayyad desert castles, located in eastern Jordan and is famous for its unique architectural design.',
      name: 'location_qasrKharana_description',
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
