import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/presentation/home/widgets/home_movie_list.dart';
import 'package:netflix_app/presentation/home/widgets/home_number_list_movies.dart';
import 'package:netflix_app/presentation/widgets/appbar_widget.dart';
import 'dart:developer';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: ValueListenableBuilder(
          valueListenable: scrollNotifier,
          builder: (BuildContext context, bool select, Widget? _) {
            return Stack(
              children: [
                NotificationListener<UserScrollNotification>(
                  onNotification: (notification) {
                    final ScrollDirection direction = notification.direction;
                    if (direction == ScrollDirection.reverse) {
                      scrollNotifier.value = false;
                    } else if (direction == ScrollDirection.forward) {
                      scrollNotifier.value = true;
                    }
                    return true;
                  },
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 600,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/obvVl1Sgu2AQOQ0lvcNBkiqjRIV.jpg'),
                              ),
                            ),
                          ),
                          Container(
                            height: 600,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.black,
                                    Colors.transparent,
                                    Colors.black
                                  ],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter),
                            ),
                          ),
                          Positioned(
                            bottom: -6,
                            left: 0,
                            right: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const ButttonWithLabel(
                                  icon: Icons.add,
                                  name: 'My List',
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white),
                                    onPressed: () {},
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.play_arrow,
                                          color: Colors.black,
                                        ),
                                        Text(
                                          'Play',
                                          style: TextStyle(color: Colors.black),
                                        )
                                      ],
                                    )),
                                const ButttonWithLabel(
                                  icon: Icons.info,
                                  name: 'Info',
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            // BlocBuilder<CollectionBloc, CollectionState>(
                            //     builder: (context, state) {
                            //   print(state.collection.length);
                            //   if (state.collection.isNotEmpty) {
                            //     HomePageMovieListWidget(
                            //       title: "Trending",
                            //       imageList: state.collection,
                            //     );
                            //   }
                            //   return const Center(
                            //     child: CircularProgressIndicator(),
                            //   );
                            // }),

                            // HomePageMovieListWidget(
                            //   title: 'Released in the Past year',
                            //),

                            HomeNumberListMovies(),
                            // HomePageMovieListWidget(
                            //   title: 'Tense Dramas',
                            //),
                            // HomePageMovieListWidget(
                            //   title: 'South Induiadn Cinema',
                            // ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                scrollNotifier.value == true
                    ? Stack(
                        children: [
                          Container(
                            height: 125,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.black, Colors.transparent],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 125,
                            child: Column(
                              children: [
                                AppBarWidget(
                                  title: Container(
                                    padding: const EdgeInsets.only(
                                        left: 10, top: 20),
                                    height: 50,
                                    width: 30,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                'assets/images/Netflix-logo.png'))),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    HomeScreeenTopTitle(
                                      name: 'TV Shows',
                                    ),
                                    HomeScreeenTopTitle(
                                      name: 'Movies',
                                    ),
                                    HomeScreeenTopTitle(
                                      name: 'Categories',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : const SizedBox(
                        height: 10,
                      ),
              ],
            );
          },
        ));
  }
}

class HomeScreeenTopTitle extends StatelessWidget {
  const HomeScreeenTopTitle({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          name,
          style:
              const TextStyle(color: whiteColor, fontWeight: FontWeight.bold),
        ));
  }
}

class ButttonWithLabel extends StatelessWidget {
  const ButttonWithLabel({
    Key? key,
    required this.icon,
    this.name = '',
    this.size = 20,
  }) : super(key: key);
  final IconData icon;
  final String name;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: size,
          color: whiteColor,
        ),
        Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
