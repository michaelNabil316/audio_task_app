import 'package:get/get.dart';
import 'arabic.dart';
import 'english.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'ar': ar,
      };
}
