class ApiResponse1 {
  String getResponse() {
    return '''
    [
      {
        "speaker": "Muhammad Ahmad",
        "topic": "Design Patterns with Flutter & Dart"
      },
      {
        "speaker": "Muhammad Hamza",
        "topic": "Routing in Flutter with Go Router"
      }
    ]
    ''';
  }
}

class ApiResponse2 {
  String getResponse() {
    return '''
    [
      {
        "name": "Rivaan Ranawat",
        "title: "Riverpod State Management"
      },
      {
        "name": "Hassam Talha",
        "title": "BloC State Management"
      }
    ]
    ''';
  }
}

class Talk {
  String speaker;
  String topic;
  Talk({
    required this.speaker,
    required this.topic,
  });
}
