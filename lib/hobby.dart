class hobby {
  final String name;
  bool checked;

  hobby ({required this.name, required this.checked});

  static List<hobby>getHobby() {
    return[
      hobby(name: "play social", checked: false),
      hobby(name: "play game", checked: false),
      hobby(name: "listen to music", checked: false),
    ];
  }
}