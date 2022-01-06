import 'package:shared_preferences/shared_preferences.dart';
import 'package:trabalho_final/utilities/global_variables.dart';

class ReadStoredData {
  readStoredData(dataKey) async {
    final loadData = await SharedPreferences.getInstance();
    if (loadData.containsKey(dataKey)) {
      var savedData = loadData.getString(dataKey);
      return savedData.toString();
    } else {
      return "notFound";
    }
  }
}
