import 'package:shared_preferences/shared_preferences.dart';
import 'package:trabalho_final/utilities/global_variables.dart';

class ReadStoredData {
  readStoredData(dataKey) async {
    final loadData = await SharedPreferences.getInstance();
    var savedData = loadData.getString(dataKey);
    storedDataValue = savedData.toString();
  }
}