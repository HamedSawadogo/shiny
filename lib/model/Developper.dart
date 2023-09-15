import 'dart:convert';

class Developper {
  String name;
  String imageUrl;
  String speciality;
  Developper({
    required this.name,
    required this.imageUrl,
    required this.speciality,
  });

  static List<Developper> developpers() {
    return [
      Developper(
          name: "John Doe",
          imageUrl:
              "https://www.portices.fr/wp-content/uploads/2022/11/developpeur-web.jpg",
          speciality: "Developper Web et mobile"),
      Developper(
          name: "Tom Dezt",
          imageUrl:
              "https://f.hellowork.com/obs-static-images/seo/ObsJob/developpeur-c-c.jpg",
          speciality: "Developper C++"),
      Developper(
          name: "John Doe",
          imageUrl:
              "https://www.portices.fr/wp-content/uploads/2022/11/developpeur-web.jpg",
          speciality: "Developper Web et mobile"),
      Developper(
          name: "Tom Dezt",
          imageUrl:
              "https://f.hellowork.com/obs-static-images/seo/ObsJob/developpeur-c-c.jpg",
          speciality: "Developper C++")
    ];
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'speciality': speciality,
    };
  }

  factory Developper.fromMap(Map<String, dynamic> map) {
    return Developper(
      name: map['name'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      speciality: map['speciality'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Developper.fromJson(String source) =>
      Developper.fromMap(json.decode(source));
}
