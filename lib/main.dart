import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const CryptoCurrenciesList());
}

class CryptoCurrenciesList extends StatelessWidget {
  const CryptoCurrenciesList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Currencies List',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.amber,
        dividerColor: Colors.white24,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.white,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          labelSmall: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Currencies List'),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, i) => ListTile(
          leading: SvgPicture.asset(
            'assets/svg/bitcoin.svg',
            height: 30,
            width: 30,
          ),
          title: Text(
            'Bitcoin',
            style: theme.textTheme.bodyMedium,
          ),
          subtitle: Text(
            '20000\$',
            style: theme.textTheme.labelSmall,
          ),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
