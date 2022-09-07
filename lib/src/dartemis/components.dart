import 'dart:math';

import 'package:dartemis/dartemis.dart';

import '../helpers.dart';

class Sound extends Component {
  String source;
  String clip;
  Sound(this.source, this.clip);
}

class Acceleration extends Component {
  double x;
  double y;

  Acceleration(this.x, this.y);
}

class Velocity extends Component {
  double x;
  double y;

  Velocity(this.x, this.y);

  double get absolute => sqrt(x * x + y * y);
  double get angle => atan2(y, x);
}

class Position extends Component {
  double x;
  double y;

  Position(this.x, this.y);
}

class Mass extends Component {
  double value;

  Mass(this.value);
}

class Orientation extends Component {
  double angle;

  Orientation(this.angle);
}

class Particle extends Component {}

class Color extends Component {
  double r;
  double g;
  double b;
  double a;
  double l;
  double realAlpha;
  double realR;
  double realG;
  double realB;
  String hexValue;

  Color(this.r, this.g, this.b, this.a)
      : realAlpha = a,
        realR = r,
        realG = g,
        realB = b,
        l = rgbToHsl(r, g, b)[2],
        hexValue = '#${_toHex(r)}${_toHex(g)}${_toHex(b)}';

  factory Color.fromHsl(double h, double s, double l, double a) {
    final rgb = hslToRgb(h, s, l);
    final r = rgb[0];
    final g = rgb[1];
    final b = rgb[2];
    return Color(r, g, b, a);
  }

  void setLightness(double lightness) {
    final hsl = rgbToHsl(r, g, b);
    hsl[2] = lightness;
    final rgb = hslToRgb(hsl[0], hsl[1], hsl[2]);
    r = rgb[0];
    g = rgb[1];
    b = rgb[2];
  }

  static String _toHex(double value) =>
      (value * 255.99).round().toRadixString(16).padLeft(2, '0');
}

class Camera extends Component {
  double zoom;
  Camera({this.zoom = 1.0});
}
