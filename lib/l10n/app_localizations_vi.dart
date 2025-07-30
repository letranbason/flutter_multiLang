// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get title => 'Xin chào';

  @override
  String get languageToggle => 'Chuyển sang tiếng Anh';

  @override
  String messageCount(num howMany) {
    String _temp0 = intl.Intl.pluralLogic(
      howMany,
      locale: localeName,
      other: '$howMany tin nhắn',
      one: '1 tin nhắn duy nhất',
      zero: 'Không có tin nhắn nào',
    );
    return '$_temp0';
  }
}
