import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class TabindexController extends GetxController {
  RxInt _tabIndex = 0.obs;
//getter for tab Index
  int get tableIndex => _tabIndex.value;

//setter for tab Index
  set setTabIndex(int newValue) {
    _tabIndex.value = newValue;
  }
}
