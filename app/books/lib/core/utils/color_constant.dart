import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color purple50087 = fromHex('#87902eb9');

  static Color purpleA40000 = fromHex('#00d300bd');

  static Color whiteA7001c = fromHex('#1cffffff');

  static Color purple40048 = fromHex('#489d35c9');

  static Color purpleA70000 = fromHex('#009400d3');

  static Color black9003f = fromHex('#3f000000');

  static Color purple600Ce = fromHex('#ce851fb0');

  static Color purple500B5 = fromHex('#b5ab309e');

  static Color black900 = fromHex('#000000');

  static Color purple5006d = fromHex('#6daf28a1');

  static Color bluegray400 = fromHex('#888888');

  static Color purpleA700 = fromHex('#9400d3');

  static Color purple500 = fromHex('#c40cb1');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
