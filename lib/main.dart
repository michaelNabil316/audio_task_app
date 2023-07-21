import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:cet_e_services/app.dart';
import 'package:cet_e_services/injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await di.init();
  runApp(const TaskApp());
}
