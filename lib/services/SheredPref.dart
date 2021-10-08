import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  // General functions
  savePref(Map<String, String> preferences) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    for (var key in preferences.keys) {
      await prefs.setString(key, preferences[key].toString());
    }
  }

  showInfo(String preferenceName) async {
    //TODO DELETE
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? value = prefs.getString(preferenceName);
    print('The code that\'s on the phone is: $value');
  }

  getSavedPref(List<String> preferenceNames) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String?> values =
        preferenceNames.map((name) => prefs.getString(name)).toList();
    return values;
  }

  removePref(List<String> preferenceNames) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    for (var name in preferenceNames) {
      prefs.remove(name);
    }
  }

  // Specific
  saveGroupAndNickname(String groupCode, String groupPass, String nickname) {
    savePref({
      'mehzGrpCode': groupCode,
      'mehzGrpPass': groupPass,
      'mehzNick': nickname
    });
  }

  clearMehzPref() {
    removePref(['mehzGrp', 'mehzNick']);
  }
}
