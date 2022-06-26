import 'package:adopt_app/models/pet.dart';
import 'package:adopt_app/services/pets_services.dart';
import 'package:flutter/material.dart';

class PetsProvider extends ChangeNotifier {
  List<Pet> pets = [];

  Future<List> getPetsFromProvider() async {
    pets = await PetsSerrices().getPets();
    return pets;
    // notifyListeners();
  }
}
