import 'package:adopt_app/models/pet.dart';
import 'package:dio/dio.dart';

class PetsSerrices {
  final _dio = Dio();

  Future<List<Pet>> getPets() async {
    List<Pet> pets = [];
    try {
      Response res =
          await _dio.get("https://coded-pets-api-crud.herokuapp.com/pets");
      pets = (res.data as List).map((pet) => Pet.fromJson(pet)).toList();
    } on DioError catch (error) {
      print("NetWork Error $Error");
    }
    return pets;
  }
}
