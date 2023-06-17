import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:site_kaf_client/presentation/components/header.dart';
import 'package:site_kaf_client/internal/states.dart';
import 'package:site_kaf_client/presentation/components/icon.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final state = stateProducer.aboutState;

  @override
  void initState() {
    super.initState();
    state.getAnnouncements();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header().render(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _getAnnouncementsSlider(),
          ],
        ),
      ),
    );
  }

  Widget _getAnnouncementsSlider() {
    return Observer(
      builder: (_) {
        if (state.isLoading) {
          return KafIcon('/Loading_icon.gif').render();
        }
        return Image.network('');
      },
    );
  }
}
