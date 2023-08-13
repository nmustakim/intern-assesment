import 'package:get/get.dart';

class SelectionController extends GetxController{
  final List<int> selectedNumbersPowerPlay1 = <int>[].obs;
  final List<int> selectedNumbersPowerPlay2 = <int>[].obs;
  final List<int> selectedNumbersPowerPlay3 = <int>[].obs;
  final List<int> globallySelectedNumbers = <int>[].obs;

  void selectNumber(int number,section) {
    if (!globallySelectedNumbers.contains(number) ) {
      globallySelectedNumbers.add(number);
      if(section == 1) {
        selectedNumbersPowerPlay1.add(number);
      }
      if(section == 2) {
        selectedNumbersPowerPlay2.add(number);
      }
      if(section == 3) {
        selectedNumbersPowerPlay3.add(number);
      }
      update();
    }
  }

  void unselectNumber(int number,section) {
    globallySelectedNumbers.remove(number);
    if(section == 1) {
      selectedNumbersPowerPlay1.remove(number);
    }
    if(section == 2) {
      selectedNumbersPowerPlay2.remove(number);
    }
    if(section == 3) {
      selectedNumbersPowerPlay3.remove(number);
    }
    update();
  }
}