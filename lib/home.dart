import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vis_portfolio/pages/main.dart';
import 'package:vis_portfolio/providers/theme_provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  void _toggle(BuildContext context) {
    Provider.of<ThemeChanger>(context, listen: false).toggleTheme();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeChanger>(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            Icons.lightbulb_rounded,
            color: themeProvider.isLightTheme ? Colors.white: Colors.black87,
          ),
          onPressed: () => _toggle(context)),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainPage()
          ],
        ),
      ),
    );
  }
}