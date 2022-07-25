abstract class LocalStorageInterface {
  void put(String key, dynamic value);
  R get<R>(String key, dynamic defaultValue);
  void delete(String key);
  void clearAll();
}