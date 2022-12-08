import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  final box = GetStorage();
  RxInt data = 0.obs;

  void decrement() {
    data--;
    simpanData();
  }

  void increment() {
    data++;
    simpanData();
  }

  void simpanData() async {
    print("Simpan Data");

    if (box.read('angkaTerakhir') != null) {
      await box.remove('angkaTerakhir');
    }
    await box.write('angkaTerakhir', data.value);
  }

  void bacaData() async {
    if (box.read('angkaTerakhir') != null) {
      data.value = box.read('angkaTerakhir')!;
    }
  }

  void resetData() async {
    if (box.read('angkaTerakhir') != null) {
      await box.remove('angkaTerakhir');
      data.value = 0;
    }
  }

  @override
  void onInit() {
    bacaData();
    super.onInit();
  }

  // void bacaData() async {
  //   print("Baca Data");
  //   final prefs = await SharedPreferences.getInstance();
  //   if (prefs.getString('name') != null) {
  //     data.value = prefs.getString('name')!;
  //   }
  // }
}
