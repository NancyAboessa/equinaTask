class LessonListModel {
  int? status;
  List<LessonData>? lessonData;

  LessonListModel({this.status, this.lessonData});

  LessonListModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['lessons'] != null) {
      lessonData = <LessonData>[];
      json['lessons'].forEach((v) {
        lessonData!.add(LessonData.fromJson(v));
      });
    }
  }
}

class LessonData {
  String? name;
  String? description;
  num? classDuration;
  num? clubRating;
  String? clubName;
  List<String>? days;
  num? startingPrice;
  String? lessonCurrency;
  String? lessonType;
  num? discount;
  num? numOfClasses;

  LessonData({
    this.name,
    this.description,
    this.classDuration,
    this.discount,
    this.days,
    this.startingPrice,
    this.lessonCurrency,
    this.clubRating,
    this.clubName,
    this.lessonType,
    this.numOfClasses,
  });

  LessonData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    clubName = json['club_name'];
    classDuration = json['class_duration'];
    discount = json['discount'];
    days = json['days'].cast<String>();
    startingPrice = json['starting_price'];
    lessonCurrency = json['lesson_currency'];
    clubRating = json['club_rating']; 
    lessonType = json['lessontype'];
    numOfClasses = json['num_of_classes'];
  }
}
