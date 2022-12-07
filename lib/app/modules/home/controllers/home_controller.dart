import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController {
  RxString data = "'No data available...".obs;

  void simpanData() async {
    print("Simpan Data");
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', 'Laura');
  }

  void bacaData() async {
    print("Baca Data");
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getString('name') != null) {
      data.value = prefs.getString('name')!;
    }
  }
}
