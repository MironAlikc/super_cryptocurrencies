import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:talker_flutter/talker_flutter.dart';

import 'router/router.dart';
import 'theme/theme.dart';

class CryptoCurrenciesList extends StatelessWidget {
  const CryptoCurrenciesList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Currencies List',
      theme: darkTheme,
      routes: routes,
      navigatorObservers: [
        TalkerRouteObserver(GetIt.I<Talker>()),
      ],
    );
  }
}
