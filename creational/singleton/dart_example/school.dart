class School {
  School._initSchool(){
    print("ran");
  }

  static final School _instance = School._initSchool();
  static School get instance => _instance;
}