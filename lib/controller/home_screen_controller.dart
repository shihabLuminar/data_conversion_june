import 'package:data_conversion_june/dummy_db.dart';
import 'package:data_conversion_june/model/student_model.dart';

class HomeScreenController {
  static StudentModel? modelObject;
  static List<StudentModel> studentModelList = [];

  static convertStuenttoModel() {
    modelObject = StudentModel(
        name: DummyDb.studentMap["name"],
        phone: DummyDb.studentMap["ph"],
        place: DummyDb.studentMap["place"],
        course: DummyDb.studentMap["course"]);
  }

  static convertStudentlistModel() {
    // studentModelList = List.generate(
    //   DummyDb.studentsList.length,
    //   (index) => StudentModel(
    //     name: DummyDb.studentsList[index]["name"],
    //     phone: DummyDb.studentsList[index]["ph"],
    //     place: DummyDb.studentsList[index]["place"],
    //     course: DummyDb.studentsList[index]["course"],
    //   ),
    // );

    studentModelList = DummyDb.studentsList
        .map(
          (e) => StudentModel(
            name: e['name'],
            place: e['place'],
            phone: e['ph'],
            course: e['course'],
          ),
        )
        .toList();

    print(studentModelList[1].name);
  }
}
