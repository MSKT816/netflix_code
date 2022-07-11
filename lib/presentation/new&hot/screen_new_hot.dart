import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix_app/application/new%20and%20hot/comming%20soon/comming_soon_bloc.dart';
import 'package:netflix_app/application/new%20and%20hot/everuones%20watching/bloc/hot_and_new_block_bloc.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/domain/new%20and%20hot/comming%20soon/model/comming_soon.dart';
import 'package:netflix_app/domain/new%20and%20hot/everuones%20watching/evey_ones_watching/model/evey_ones_watching.dart';
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
        body: const TabBarView(children: [
          CommingSoonWidget(),
          EveryOneWatching(),
        ]),
      ),
    );
  }
}

class EveryOneWatching extends StatelessWidget {
  const EveryOneWatching({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBlockBloc>(context)
          .add(const HotAndNewBlockEvent.loadDataInEveryOneWaching());
    });
    return BlocBuilder<HotAndNewBlockBloc, HotAndNewBlockState>(
        builder: (BuildContext context, HotAndNewBlockState state) {
      if (state.isLoading) {
        return const Center(
            child: CircularProgressIndicator(
          strokeWidth: 2,
        ));
      } else if (state.hasError) {
        return const Center(
          child: Text('Some error occured'),
        );
      } else if (state.everyOneWatchingList.isEmpty) {
        return const Center(
          child: Text('List is empty'),
        );
      } else {
        return ListView.separated(
          itemBuilder: (ctx, index) {
            final _movie = state.everyOneWatchingList[index];
            return EveryOnesWatchingWidget(
              movie: _movie,
            );
          },
          separatorBuilder: (ctx, index) {
            return kheight;
          },
          itemCount: 10,
        );
      }
    });
  }
}

class CommingSoonWidget extends StatelessWidget {
  const CommingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HotAndNewBlockBloc>(context)
          .add(const HotAndNewBlockEvent.loadDataInCommingSoon());
    });
    return BlocBuilder<HotAndNewBlockBloc, HotAndNewBlockState>(
        builder: (BuildContext context, HotAndNewBlockState state) {
      if (state.isLoading) {
        return const Center(child: CircularProgressIndicator(strokeWidth: 2));
      } else if (state.hasError) {
        return const Center(
          child: Text('Some error occured'),
        );
      } else if (state.commingSoonList.isEmpty) {
        return const Center(
          child: Text('Comming soon list is empty'),
        );
      } else {
        return ListView.separated(
          itemBuilder: (ctx, index) {
            final _data = state.commingSoonList[index];
            final date = DateTime.parse(_data.releaseDate!);
            final formatedDate = DateFormat.yMMMMd('en_US').format(date);
            return CommingSoonTileWidget(
              index: index,
              overview: _data.overview!,
              day: _data.releaseDate!.split('-')[1],
              month:
                  formatedDate.split(' ').first.substring(0, 3).toUpperCase(),
              title: _data.title ?? "No title",
              posterPath: _data.posterPath ?? "No description",
            );
          },
          separatorBuilder: (ctx, index) {
            return kheight;
          },
          itemCount: state.commingSoonList.length,
        );
      }
    });
  }
}

class EveryOnesWatchingWidget extends StatelessWidget {
  const EveryOnesWatchingWidget({
    Key? key,
    required this.movie,
  }) : super(key: key);
  final HotAndNEwData movie;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          movie.originalName ?? "No name",
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          movie.overview ?? "No description",
          style: TextStyle(color: kgrey),
        ),
        NewAndHotVideoWidget(
          imgUrl: "$kImageBaseUrlr${movie.posterPath}",
        ),
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
  const CommingSoonTileWidget({
    Key? key,
    required this.index,
    required this.overview,
    required this.title,
    required this.posterPath,
    required this.day,
    required this.month,
  }) : super(key: key);
  final int index;
  final String day;
  final String month;
  final String title;
  final String overview;
  final String posterPath;

  @override
  Widget build(BuildContext context) {
    // final month = DateFormat("yyyy-MM-dd hh:mm:ss").parse(releaseDate);

    // final day = releaseDate.split('-').last;
    // print("$month  $day");

    return SizedBox(
      height: 400,
      child: Row(children: [
        SizedBox(
          width: 50,
          child: Column(
            children: [
              Text(
                month,
                style: const TextStyle(color: Colors.grey),
              ),
              Text(
                day,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NewAndHotVideoWidget(
                imgUrl: "$kImageBaseUrlr$posterPath",
              ),
              kheight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      overflow: TextOverflow.clip,
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                  const ButtonWithLabelWidget(
                    icon: Icons.add_alert,
                    name: 'Remind Me',
                    iconSize: 20,
                    textStyle: TextStyle(fontSize: 12),
                  ),
                  kwidth,
                  const ButtonWithLabelWidget(
                    icon: Icons.info,
                    iconSize: 20,
                    textStyle: TextStyle(fontSize: 12),
                    name: 'Info',
                  ),
                  kwidth
                ],
              ),
              Text(
                'Comming on $month $day',
                style: TextStyle(color: kgrey),
              ),
              kheight20,
              Text(
                title,
                style: const TextStyle(fontSize: 18),
              ),
              Text(
                overview,
                maxLines: 4,
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
