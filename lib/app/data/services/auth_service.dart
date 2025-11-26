import 'dart:convert';
import 'package:coffee_store_app/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user_model.dart';

class AuthService extends GetxService {
  final users = <UserModel>[].obs;
  UserModel? currentUser;
  SharedPreferences? prefs;

  Future<AuthService> init() async {
    prefs = await SharedPreferences.getInstance();

    _loadUsers();
    _loadCurrentUser();

    return this;
  }

  // -------------------------------
  //              REGISTER
  // -------------------------------
  bool register(UserModel user) {
    final isExist = users.any((u) => u.username == user.username || u.email == user.email);

    if (isExist) return false;

    users.add(user);
    _saveUsers();

    currentUser = user;
    _saveCurrentUser(user);

    return true;
  }

  // -------------------------------
  //              LOGIN
  // -------------------------------
  bool login(String username, String password) {
    final user = users.firstWhereOrNull((u) => u.username == username && u.password == password);

    if (user == null) return false;

    currentUser = user;
    _saveCurrentUser(user);
    return true;
  }

  // -------------------------------
  //              LOGOUT
  // -------------------------------
  void logout() {
    currentUser = null;
    prefs?.remove("currentUser");
    Get.offAllNamed(Routes.LOGIN);
  }

  bool isLoggedIn() => currentUser != null;

  // -------------------------------
  //        LOCAL STORAGE
  // -------------------------------
  void _saveUsers() {
    final userListJson = users.map((u) => jsonEncode({"username": u.username, "password": u.password, "email": u.email})).toList();

    prefs?.setStringList("users", userListJson);
  }

  void _loadUsers() {
    final userList = prefs?.getStringList("users") ?? [];

    users.assignAll(
      userList.map((jsonStr) {
        final data = jsonDecode(jsonStr);
        return UserModel(username: data['username'], password: data['password'], email: data['email']);
      }),
    );
  }

  void _saveCurrentUser(UserModel user) {
    prefs?.setString("currentUser", jsonEncode({"username": user.username, "password": user.password, "email": user.email}));
  }

  void _loadCurrentUser() {
    final jsonStr = prefs?.getString("currentUser");
    if (jsonStr == null) return;

    final data = jsonDecode(jsonStr);

    currentUser = UserModel(username: data['username'], password: data['password'], email: data['email']);
  }
}
