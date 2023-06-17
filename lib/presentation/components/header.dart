import 'package:flutter/material.dart';
import 'package:site_kaf_client/presentation/components/icon.dart';

class Header {
  PreferredSizeWidget render() {
    return AppBar(
      leading: Image.asset(
        '/logo/fl_logo.png',
        errorBuilder:
            (BuildContext context, Object exception, StackTrace? stackTrace) {
          return const Icon(Icons.help);
        },
      ),
      leadingWidth: 100,
      title: const Text(
        'КАФЕДРА ИНОСТРАННЫХ ЯЗЫКОВ',
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: const Color(0xff005096),
      toolbarHeight: 65,
      actions: [KafIcon('/logo/logompei.png').render()],
    );
  }
}
