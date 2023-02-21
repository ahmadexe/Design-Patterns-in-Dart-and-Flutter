class School {
  School._initSchool(){
    print("ran");
  }
  static final School instance = School._initSchool();
}