import 'package:portality/data/source/constants.dart';

class UserModel {
  String _id = "";
  String _name = "";
  String _email = "";
  String _password = "";
  String _type = "";
  String _gender = "";
  String _birthday = "";
  String _address = "";
  String _token = "";
  String _verify = "";
  final String _pathImage = imgLink;

  UserModel(this._id, this._name, this._email, this._password, this._type,
      this._gender, this._birthday, this._address);

  String getToken() => _token;
  void setToken(token) {
    _token = token;
  }

  void fromJson(data) {
    _id = data['_id'].toString();
    _name = data['user_name'];
    _email = data['email'];
    _password = data['password'];
    _type = data['type'].toString();
    _gender = data['gender'];
    _birthday = data['birthday'];
    _address = data['address'];
    _verify = data['_verify'].toString();
  }

  String getId() => _id;
  String getName() => _name;
  String getEmail() => _email;
  String getPassword() => _password;
  String getType() => _type;
  String getGender() => _gender;
  String getBirthday() => _birthday;
  String getAddress() => _address;
  String getVerify() => _verify;
  String getPath() => _pathImage;
}
