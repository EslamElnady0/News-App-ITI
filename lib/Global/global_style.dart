import 'package:flutter/material.dart';

LinearGradient redGradient = const LinearGradient(colors: [
  Color(0xffFF3A44),
  Color(0xffFF8086),
], begin: Alignment.topLeft, end: Alignment.bottomRight);

LinearGradient greyGradient = LinearGradient(stops: const [
  0.7,
  1
], colors: [
  const Color(0xff626262).withOpacity(0.35),
  const Color(0xff000000)
], begin: Alignment.topCenter, end: Alignment.bottomCenter);
