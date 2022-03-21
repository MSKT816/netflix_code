import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/widgets/button_with_label_widget.dart';
import 'package:netflix_app/presentation/widgets/mute_unmute_button_widget.dart';

class ScreenFastLaughs extends StatelessWidget {
  ScreenFastLaughs({Key? key}) : super(key: key);
  final imagList = [
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ekZobS8isE6mA53RAiGDG93hBxL.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/yQgGYiHUoDYeA4TbYlghpA5lmKH.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vHla3Ej2m53rNmvmYkzvennLrKn.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/xBaeUYKNJfX8VhIFvvgPpFSYxBZ.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/dDlEmu3EZ0Pgg93K2SVNLCjCSvE.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iF8ai2QLNiHV4anwY1TuSGZXqfN.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.vertical,
            children: List.generate(
                imagList.length,
                (index) => FastLaughsTile(
                      imageUrl: imagList[index],
                    )),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const MuteUnmuteButtonWidget(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/yQgGYiHUoDYeA4TbYlghpA5lmKH.jpg'),
                      ),
                    ),
                    ButtonWithLabelWidget(
                      icon: Icons.emoji_emotions,
                      name: 'LOL',
                    ),
                    ButtonWithLabelWidget(icon: Icons.add, name: 'My List'),
                    ButtonWithLabelWidget(
                      icon: Icons.share,
                      name: 'Share',
                    ),
                    ButtonWithLabelWidget(
                      icon: Icons.play_arrow,
                      name: 'Play',
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FastLaughsTile extends StatelessWidget {
  const FastLaughsTile({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
