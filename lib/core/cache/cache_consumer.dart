abstract class CacheConsumer {
  Future<dynamic> getData({required String key});
  Future<bool> saveData({required String key, required dynamic value});
  Future<bool> removeData({required String key});
}
