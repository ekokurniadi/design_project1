import 'package:flutter/material.dart';
import 'package:flutter_pos/gen/strings.g.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleHelper {
  static String getName(String code) {
    switch (code) {
      case 'ms':
        return 'Melayu';
      case 'en':
        return 'English';
      default:
        return 'English';
    }
  }

  /// [LocaleHelper.init()] initializes the application's localization.
  ///
  /// It reads the saved locale if it has been set previously,  
  /// or automatically sets the locale if no saved locale is found.
  static void init() async {
    final preference = await SharedPreferences.getInstance();
    final locale = preference.getString('locale');
    LocaleSettings.setLocaleRaw(locale ?? 'en');
  }
  
/// Sets the application's locale and updates related settings.
///
/// This method is responsible for updating the app's locale to 
/// the specified [AppLocale]. 
/// It stores the selected locale in shared preferences for persistence, 
/// updates the current locale settings,
/// and refreshes the UI to reflect the changes.
///
/// Parameters:
/// - [context]: The [BuildContext] used to refresh the UI with the new locale.
/// - [locale]: The [AppLocale] to set as the application's active locale.
///
/// Steps:
/// 1. Saves the selected locale to shared preferences using the `locale` key.
/// 2. Updates the current locale through [LocaleSettings.setLocale].
/// 3. Refreshes the UI by invoking [LocaleProvider.refreshLocale] with the 
/// provided context.
  static void setLocale(BuildContext context, AppLocale locale) async {
    final preference = await SharedPreferences.getInstance();
    preference.setString('locale', locale.name);
    LocaleSettings.setLocale(locale);
    LocaleProvider.refreshLocale(context);
  }

  static AppLocale getLocale() => LocaleSettings.currentLocale;
}

class LocaleProvider extends StatefulWidget {
  const LocaleProvider({super.key, required this.child});

  final Widget child;

  static void refreshLocale(BuildContext context) {
    context.findAncestorStateOfType<_LocaleProviderState>()?.refreshLocale();
  }

  @override
  State<LocaleProvider> createState() => _LocaleProviderState();
}

class _LocaleProviderState extends State<LocaleProvider> {
  Key key = UniqueKey();

  void refreshLocale() => setState(() => key = UniqueKey());

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}
