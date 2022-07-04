import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/presentation/downloads/screen_downloads.dart';
import 'package:netflix_app/presentation/fast&laughs/screen_fast_laughs.dart';
import 'package:netflix_app/presentation/home/screen_home.dart';
import 'package:netflix_app/presentation/main_page/widgets/bottom_navigation.dart';
import 'package:netflix_app/presentation/new&hot/screen_new_hot.dart';
import 'package:netflix_app/presentation/search/screen_search.dart';
import 'package:netflix_app/presentation/widgets/appbar_widget.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);

  final _pages = [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaughs(),
    ScreenSearch(),
    ScreenDownloads()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifire,
        builder: (context, value, child) {
          return _pages[indexChangeNotifire.value];
        },
      ),
      bottomNavigationBar: BottomNavigationWidgets(),
    );
  }
}
