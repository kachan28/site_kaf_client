import 'package:flutter/material.dart';

class KafIcon {
  final String iconPath;

  KafIcon(_iconPath) : iconPath = _iconPath;

  Widget render() {
    return Image.asset(
      iconPath,
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return const Icon(Icons.help);
      },
    );
  }
}
