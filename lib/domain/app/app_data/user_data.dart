import 'package:flutter/cupertino.dart';

class UserData with ChangeNotifier {
  UserData({String username = 'guest'}) : username = ValueNotifier(username);

  final ValueNotifier<String> username;
}
