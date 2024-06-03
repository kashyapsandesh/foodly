import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class CategoryController extends GetxController {
  RxString _category = ''.obs;
  String get catListIndex => _category.value;
  //set catListIndex
  set updateCategory(String newCategory) {
    _category.value = newCategory;
  }
} 
