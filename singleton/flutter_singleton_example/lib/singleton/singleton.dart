class Database {
  // This is a private constructor
  Database._init();
  String text = "Hello";

  // Generate a single instance
  static final Database instance = Database._init();
}