import 'package:blitz/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<bool> signUpUser() async {
    return Future<bool>.value(false);
  }

  Future<bool> signInUser(String phone, String secretCode) async {
    UserService().getUserRecord(phone, secretCode);
    return Future<bool>.value(false);
  }

  void signOutUser() {
    UserService().signOutUser();
    // _firebaseAuth.signOut();
  }
}
