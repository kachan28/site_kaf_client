import 'package:site_kaf_client/domain/state/about_state.dart';
import 'package:site_kaf_client/internal/dependencies.dart';

class StateProducer {
  final AboutState aboutState = AboutModule.aboutState();
}

var stateProducer = StateProducer();
