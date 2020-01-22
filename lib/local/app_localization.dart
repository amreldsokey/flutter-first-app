import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AppLocalization {


//  load() : It will load/set all the Localized values.
//  You can also call this method if you wish to switch the locale of app manually.
  static Future<AppLocalization> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return AppLocalization();
    });
  }

  /*
  of() : This method will return the instance of current Localization of the app.
   Somewhat like a factory method.
   */
  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  /*
  get heyWorld: This getter returns the value of the heyWorld.
   This property is what will be using to get its translations based on locale of the app.
   For demo purpose i have only set 1 String as for now but you can as many as you can.
   */
  // list of locales
  String get heyWorld {
    return Intl.message(
      'Hey World',
      name: 'heyWorld',
      desc: 'Simpel word for greeting ',
    );
  }




}