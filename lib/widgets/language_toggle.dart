import 'package:flutter/material.dart';
import 'package:img_generator/core/models/class/app_language.dart';
import 'package:provider/provider.dart';
import '../services/localization_service.dart';

class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    var appLanguage = Provider.of<AppLanguage>(context);

    return ElevatedButton(
      onPressed: () {
        appLanguage.toggleLanguage();
      },
      child: Text(AppLocalizations.of(context)!.translate('switch_language')),
    );
  }
}
