class UserModel {
  String? email;
  String? firstName;
  String? lastName;
  String? mobile;
  String? photo;


  UserModel.fromJson(Map<String, dynamic> json) {
    email = json['Email'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    mobile = json['Mobile'];
    photo = json['Photo'];
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'mobile': mobile,
      'email': email,
      'photo': photo,
    };
  }
}
