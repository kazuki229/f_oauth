import 'dart:async';
import 'dart:convert';

import 'package:f_oauth/configuration.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class FOauth {
  static const MethodChannel _channel = MethodChannel('f_oauth');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  Future<Configuration> fetchOpenidConfiguration(String url) async {
    final http.Response response = await http.get(url);
    final Map<String, dynamic> responseJson = json.decode(response.body);
    return Configuration.fromJson(responseJson);
  }
}
