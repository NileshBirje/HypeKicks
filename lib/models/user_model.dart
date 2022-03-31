class UserModel {
  String? email;
  String? firstname;
  String? secondname;
  String? uid;

  UserModel({this.email, this.firstname, this.secondname, this.uid});

  //receiving  data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      email: map['email'],
      firstname: map['firstname'],
      secondname: map['secondname'],
      uid: map['uid'],
    );
  }

  //sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'firstname': firstname,
      'secondname': secondname,
      'uid': uid
    };
  }
}
