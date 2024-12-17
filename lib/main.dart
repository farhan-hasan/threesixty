import 'package:enigma/src/core/app/app.dart';
import 'package:enigma/src/core/global/global_variables.dart';
import 'package:enigma/src/shared/dependency_injection/dependency_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();

  setupService();
  runApp(UncontrolledProviderScope(container: container,child: const App()));
}

