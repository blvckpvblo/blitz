class User {
  final String firstName;
  final String lastName;
  final String? messagingToken;
  final String phone;
  final String secretCode;
  final String uid;

  User(
      {required this.firstName,
      required this.lastName,
      required this.messagingToken,
      required this.phone,
      required this.secretCode,
      required this.uid});

  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'phone': phone,
      'secret_code': secretCode,
      'uid': uid,
    };
  }

  factory User.fromFirestore(Map<String, dynamic> doc) {
    return User(
      firstName: doc['first_name'],
      lastName: doc['last_name'],
      messagingToken: doc['messaging_token'],
      phone: doc['phone'],
      secretCode: doc['secret_code'],
      uid: doc['uid'],
    );
  }
}
