// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get title => 'Hello';

  @override
  String get languageToggle => 'Switch to Vietnamese';

  @override
  String messageCount(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: '$howMany messages',
      one: 'only 1 message',
      zero: 'No messages',
    );
    return '$_temp0';
  }
}
