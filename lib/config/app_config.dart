import 'package:get/get.dart';
import 'config.dart' show environment;

class AppConfig {

  factory AppConfig() => Get.find<AppConfig>();

  AppConfig._();

  static final AppConfig instance = AppConfig._();

  late String _baseUrl;
  late String _apiToken;

  final Map<String, dynamic> _config = environment;

  Future load() async {
    _baseUrl = _config['baseUrl'];
    _apiToken = _config['apiToken'];
  }

  String get baseUrl => _baseUrl;
  String get apiToken => _apiToken;
}