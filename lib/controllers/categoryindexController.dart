import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class CategoryController extends GetxController {
  RxString _category = ''.obs;
  String get catListIndex => _category.value;
  //set catListIndex
  set updateCategory(String newCategory) {
    _category.value = newCategory;
  }

  RxString _title = ''.obs;
  String get titleValue => _title.value;
  //set catListIndex
  set updateTitle(String value) {
    _title.value = value;
  }
}
