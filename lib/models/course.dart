class Course {
  String name;
  double completedPercentage;
  String author;
  String thumbnail;

  Course({
    required this.author,
    required this.completedPercentage,
    required this.name,
    required this.thumbnail,
  });
}

List<Course> courses = [
  Course(
    author: "DevWheels",
    completedPercentage: .75,
    name: "الترحيب ١",
    thumbnail: "assets/icons/prp4.jpeg",
  ),
  Course(
    author: "DevWheels",
    completedPercentage: .60,
    name: "كيف حالك ١",
   thumbnail: "assets/icons/prp4.jpeg",
  ),
  Course(
    author: "DevWheels",
    completedPercentage: .75,
    name: "المرافقة ١",
     thumbnail: "assets/icons/prp4.jpeg",
  ),
  Course(
    author: "DevWheels",
    completedPercentage: .75,
    name: "الرفض ١",
    thumbnail: "assets/icons/prp4.jpeg",
  ),
  Course(
    author: "DevWheels",
    completedPercentage: .60,
    name: "الشكر والعرفان ١",
    thumbnail: "assets/icons/prp4.jpeg",
  ),
  Course(
    author: "DevWheels",
    completedPercentage: .75,
    name: "الاسف و الاعتزار والموساه ١",
    thumbnail: "assets/icons/prp4.jpeg",
  ),
];
