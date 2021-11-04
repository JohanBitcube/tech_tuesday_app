import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tech_tuesday/core/utils/config.dart';

class SampleView extends StatefulWidget {
  SampleView({Key? key}) : super(key: key);

  @override
  _SampleViewState createState() => _SampleViewState();
}

class _SampleViewState extends State<SampleView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Text(
          '${AppLocalizations.of(context)!.runningType} ${Config.environment}',
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
