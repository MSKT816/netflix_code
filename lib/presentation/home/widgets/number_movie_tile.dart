import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class NumberMovieTile extends StatelessWidget {
  const NumberMovieTile({Key? key, required this.imgUrl, required this.index})
      : super(key: key);
  final String imgUrl;
  final int index;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.accents[index],
                    image: DecorationImage(
                        image: NetworkImage(imgUrl), fit: BoxFit.cover)),
              ),
            ],
          ),
          Positioned(
            top: 78,
            child: BorderedText(
              strokeColor: Colors.white,
              strokeWidth: 2.0,
              child: Text(
                '${index + 1}',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoMono',
                  fontSize: 65,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
