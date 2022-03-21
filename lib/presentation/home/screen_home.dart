import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/presentation/home/widgets/home_movie_list.dart';
import 'package:netflix_app/presentation/home/widgets/home_number_list_movies.dart';
import 'package:netflix_app/presentation/widgets/appbar_widget.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, bool select, Widget? _) {
        return Stack(
          children: [
            ListView(
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
                    children: const [
                      HomePageMovieListWidget(
                        title: 'Released in the Past year',
                      ),
                      HomePageMovieListWidget(
                        title: 'Trending Now',
                      ),
                      HomeNumberListMovies(),
                      HomePageMovieListWidget(
                        title: 'Tense Dramas',
                      ),
                      HomePageMovieListWidget(
                        title: 'South Induiadn Cinema',
                      ),
                    ],
                  ),
                )
              ],
            ),
            scrollNotifier.value == true
                ? Container(
                    color: Colors.black.withOpacity(0.5),
                    height: 150,
                    child: Column(
                      children: [
                        AppBarWidget(
                          title: Container(
                            padding: const EdgeInsets.only(left: 10, top: 20),
                            height: 70,
                            width: 70,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        'https://www.designmantic.com/blog/wp-content/uploads/2016/07/Netflix-Revamps-Logo.jpg'))),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
