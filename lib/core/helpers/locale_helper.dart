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

  static void init() async {
    final preference = await SharedPreferences.getInstance();
    final locale = preference.getString('locale');
    LocaleSettings.setLocaleRaw(locale ?? 'en');
  }

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
