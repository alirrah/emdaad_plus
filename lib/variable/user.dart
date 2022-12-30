class User{
  int id;
  String token;
  String firstname;
  String lastname;
  String phoneNumber;
  String birthday;
  String image;
  String blood;
  bool nurse;
  // 0 -> unknown, 1 -> man, 2 -> woman
  int gender;
  String about;
  int language;
  bool light;
  int count;

  User([
    this.id = -1,
    this.firstname = '',
    this.lastname = '',
    this.phoneNumber = '',
    this.birthday = '',
    this.gender = 0,
    this.about = '',
    this.token = '',
    this.language = 0,
    this.light = true,
    this.image = '',
    this.count = -1,
    this.blood = '',
    this.nurse = false,
  ]);
}