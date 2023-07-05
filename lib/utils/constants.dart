import 'package:flutter/material.dart';

const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;

const String selfDescription = "I'm a mobile developer specializing in native Android development (Java and Kotlin). Substantial knowledge of cross-platform mobile development (Flutter).";
const String underConstructionMsg = "(I know it's a bit boring here right now, but you'll get to see some upgrades real soon!)";