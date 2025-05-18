import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  runZonedGuarded(
    () async {
      runApp(ProviderScope(child: (await builder())));
    },
    (error, stackTrace) => log('$error', name: 'Error', stackTrace: stackTrace),
  );
}
