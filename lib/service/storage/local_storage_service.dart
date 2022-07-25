import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:movies/interface/local_storage_interface.dart';

class LocalStorageService implements LocalStorageInterface {
  LocalStorageService._();

  final GetStorage box = GetStorage();

  static final LocalStorageService instance = LocalStorageService._();

  factory LocalStorageService() => Get.find<LocalStorageService>();

  @override
  void delete(String key) {
    box.remove(key);
  }

  @override
  R get<R>(String key, [dynamic defaultValue]) {
    return box.read<R>(key) ?? defaultValue;
  }

  @override
  void put(String key, dynamic value) {
    box.write(key, value);
  }

  @override
  Future clearAll() => box.erase();

  Future clearAllExcept(List<String> keys) async {
    final exceptValues = keys.map((key) {
      final value = get(key);
      return [key, value];
    }).toList();

    await clearAll();

    for (var element in exceptValues) {
      final key = element.first;
      final value = element.last;
      if (value != null) put(key, value);
    }
  }

  void listenKey(String key, dynamic Function(dynamic) callback) => box.listenKey(key, callback);
}