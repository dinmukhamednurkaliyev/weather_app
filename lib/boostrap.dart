import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  runZonedGuarded(
    () async {
      runApp(await builder());
    },
    (error, stackTrace) => log('$error', name: 'Error', stackTrace: stackTrace),
  );
}
