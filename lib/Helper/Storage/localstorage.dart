import 'package:get_storage/get_storage.dart';

class LocalStorageManager {
  static final LocalStorageManager instance = LocalStorageManager._internal();
  factory LocalStorageManager() => instance;

  LocalStorageManager._internal();
  final storage = GetStorage();

  //Generic Method to save Data to the local storage
  Future<void> saveDataToLocalStorage<T>(String key, T value) async {
    await storage.write(key, value);
  }

  //Generic Method to get Data from the local storage
  Future<T> getDataFromLocalStorage<T>(String key) async {
    return await storage.read(key);
  }

  //Generic Method to delete Data from the local storage
  Future<void> deleteDataFromLocalStorage(String key) async {
    await storage.remove(key);
  }

  //Generic Method to clear all Data from the local storage
  Future<void> clearAllDataFromLocalStorage() async {
    await storage.erase();
  }
}
