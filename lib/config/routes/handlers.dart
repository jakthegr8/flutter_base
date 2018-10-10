import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../../pages/home.dart';

var rootHandler = new Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return new Home();
});
