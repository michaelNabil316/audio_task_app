import 'package:flutter/material.dart';
import 'package:cet_e_services/app.dart';
import 'package:cet_e_services/injection_container.dart' as di;
import 'core/shared_pref.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
//  await EasyLocalization.ensureInitialized();
  await initPref();
  await di.init();
  runApp(const TaskApp());
}
