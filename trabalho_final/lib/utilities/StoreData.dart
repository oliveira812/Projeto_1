import 'package:shared_preferences/shared_preferences.dart';

class StoreData {
  storeData(dataKey, dataValue) async {
    // sharedPreference is need to save the data in the device
    final saveData = await SharedPreferences.getInstance();
    // set the value to save in the device
    saveData.setString(dataKey, dataValue);
  }
}