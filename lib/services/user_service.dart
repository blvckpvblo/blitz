import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:blitz/models/user_model.dart' as UserModel;

class UserService extends ChangeNotifier {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  UserModel.User? _user;

  UserModel.User? get user => _user;

  void getUserRecord(String phone, String secretCode) {
    _db
        .collection('users')
        .where('phone', isEqualTo: phone)
        .where('secret_code', isEqualTo: secretCode)
        .snapshots()
        .every((snap) {
      _user = UserModel.User.fromFirestore(snap.docs[0].data());
      notifyListeners();
      return true;
    });
  }

  bool signOutUser() {
    _user = null;
    notifyListeners();
    return true;
  }
}
