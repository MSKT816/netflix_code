import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/appbar_widget.dart';
import 'package:netflix_app/presentation/widgets/button_with_label_widget.dart';

import 'widget/new_hot_video_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const AppBarWidget(title: Text('New&Hot')),
          bottom: TabBar(
              isScrollable: true,
              labelColor: kblackColor,
              unselectedLabelColor: whiteColor,
              labelStyle:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              indicator:
                  BoxDecoration(color: whiteColor, borderRadius: kradius30),
              tabs: const [
                Tab(text: '🎁Comming soon'),
                Tab(text: "👀Everyone's watching"),
              ]),
        ),
        body: TabBarView(children: [
          ListView.separated(
            itemBuilder: (ctx, index) {
              return const CommingSoonTileWidget();
            },
            separatorBuilder: (ctx, index) {
              return kheight;
            },
            itemCount: 10,
          ),
          ListView.separated(
            itemBuilder: (ctx, index) {
              return EveryOnesWatchingWidget();
            },
            separatorBuilder: (ctx, index) {
              return kheight;
            },
            itemCount: 10,
          ),
        ]),
      ),
    );
  }
}

class EveryOnesWatchingWidget extends StatelessWidget {
  const EveryOnesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Friends',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          tempDetail,
          style: TextStyle(color: kgrey),
        ),
        const NewAndHotVideoWidget(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ButtonWithLabelWidget(
              icon: Icons.share,
              name: 'Share',
              iconSize: 18,
              textStyle: hotNewBtnLabelStyle,
            ),
            kwidth,
            ButtonWithLabelWidget(
                icon: Icons.add,
                name: 'My List',
                iconSize: 18,
                textStyle: hotNewBtnLabelStyle),
            kwidth,
            ButtonWithLabelWidget(
                icon: Icons.play_arrow,
                name: 'Play',
                iconSize: 18,
                textStyle: hotNewBtnLabelStyle),
            kwidth
          ],
        )
      ],
    );
  }
}

class CommingSoonTileWidget extends StatelessWidget {
  const CommingSoonTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Row(children: [
        SizedBox(
          width: 50,
          child: Column(
            children: const [
              Text(
                'FEB',
                style: TextStyle(color: Colors.grey),
              ),
              Text(
                '11',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NewAndHotVideoWidget(),
              kheight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'TALL GIRL2',
                    style: TextStyle(fontSize: 30),
                  ),
                  Spacer(),
                  ButtonWithLabelWidget(
                    icon: Icons.add_alert,
                    name: 'Remind Me',
                    iconSize: 20,
                    textStyle: hotNewBtnLabelStyle,
                  ),
                  kwidth,
                  ButtonWithLabelWidget(
                    icon: Icons.info,
                    iconSize: 20,
                    textStyle: hotNewBtnLabelStyle,
                    name: 'Info',
                  ),
                  kwidth
                ],
              ),
              Text(
                'Comming on Friday',
                style: TextStyle(color: kgrey),
              ),
              kheight20,
              Text(
                'Tall Girl 2',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                tempDetail,
                style: TextStyle(fontSize: 12, color: kgrey),
              )
            ],
          ),
        )
      ]),
    );
  }

  Column _buttonWithLabel(IconData iconName, String name) {
    return Column(
      children: [
        Icon(
          iconName,
          size: 20,
          color: whiteColor,
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
