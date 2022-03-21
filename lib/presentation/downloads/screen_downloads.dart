import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/widgets/appbar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wigetlist = [
      Section1(),
      Section2(),
      Section3(),
    ];
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: Text(
              'Downloads',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
          )),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (ctx, index) => wigetlist[index],
        separatorBuilder: (ctx, index) => const SizedBox(
          height: 40,
        ),
        itemCount: wigetlist.length,
      ),
    );
  }
}

class Section1 extends StatelessWidget {
  const Section1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kwidth,
        Icon(
          Icons.settings,
          color: whiteColor,
        ),
        kwidth,
        Text('Smart Downloads')
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final List imageList = [
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ekZobS8isE6mA53RAiGDG93hBxL.jpg',
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/yQgGYiHUoDYeA4TbYlghpA5lmKH.jpg',
      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vHla3Ej2m53rNmvmYkzvennLrKn.jpg',
    ];
    return Column(
      children: [
        const Text(
          'Indrodusing Downloads for you',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
        kheight,
        const Text(
          "we will dowload personlised selection of\n movies and shows for you,so there's\n always somthing to watch on your\n device.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        Container(
          height: size.width * .8,
          width: size.width,
          child: Stack(alignment: Alignment.center, children: [
            CircleAvatar(
              backgroundColor: Color.fromARGB(255, 41, 40, 40),
              radius: size.width * .33,
            ),
            Positioned(
              right: size.width * 0.09,
              bottom: size.width * 0.1,
              child: DownloadsImage(
                height: size.width * 0.48,
                width: size.width * 0.33,
                imageurl: imageList[0],
                margin: const EdgeInsets.only(left: 0),
                angle: 10,
              ),
            ),
            Positioned(
              left: size.width * 0.09,
              bottom: size.width * 0.1,
              child: DownloadsImage(
                height: size.width * 0.48,
                width: size.width * 0.33,
                imageurl: imageList[1],
                margin: const EdgeInsets.only(right: 0),
                angle: -10,
              ),
            ),
            Positioned(
              bottom: size.width * 0.1,
              child: DownloadsImage(
                height: size.width * 0.53,
                width: size.width * 0.35,
                imageurl: imageList[2],
                margin: const EdgeInsets.only(left: 0),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            onPressed: () {},
            child: const Text(
              'Setup',
              style: TextStyle(
                color: whiteColor,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            color: buttonColorBlue,
          ),
        ),
        kheight,
        MaterialButton(
          color: buttonColorWhite,
          onPressed: () {},
          child: const Text(
            'See what you can download',
            style: TextStyle(
                color: fontBlackcolor,
                fontWeight: FontWeight.w700,
                fontSize: 18),
          ),
        ),
      ],
    );
  }
}

class DownloadsImage extends StatelessWidget {
  const DownloadsImage({
    Key? key,
    required this.width,
    required this.imageurl,
    required this.margin,
    required this.height,
    this.angle = 0,
    this.radius = 5,
  }) : super(key: key);

  final double width;
  final double height;
  final String imageurl;
  final EdgeInsets margin;
  final double angle;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 100,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          margin: margin,
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageurl,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
