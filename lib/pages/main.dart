

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';
import '../utils/constants.dart';
import '../utils/screen_helper.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.height;
    double containerWidth = MediaQuery.of(context).size.width;

    return Container(
        height: containerHeight,
        width: containerWidth,
        child: ScreenHelper(
          desktop: _buildDesktopIntro(context),
          mobile: _buildMobileIntro(context),
          tablet: _buildDesktopIntro(context),
        ));
  }

  Widget _buildDesktopIntro(BuildContext context) {
    final themeProvider = Provider.of<ThemeChanger>(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(60.0, 10.0, 60.0, 10.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 20.0),
                alignment: Alignment.centerLeft,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello!",
                      style: TextStyle(
                          fontSize: 60.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "I am Elvis Antero.",
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      selfDescription,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      underConstructionMsg,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontStyle: FontStyle.italic
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMobileIntro(BuildContext context) {
    final themeProvider = Provider.of<ThemeChanger>(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
        child: Wrap(
          spacing: 15.0,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: const Text(
                      "Hello!",
                      style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.w700)
                  ),
                ),
                const Text(
                  "I am Elvis Antero.",
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  selfDescription,
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  underConstructionMsg,
                  style: TextStyle(
                      fontSize: 14.0,
                      fontStyle: FontStyle.italic
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
