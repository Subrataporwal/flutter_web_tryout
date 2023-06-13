import 'package:flutter/material.dart';

import '../constants/controllers.dart';
import '../routing/router.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigationKey,
      onGenerateRoute: generateRoute,
    );
