import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:netflix_app/application/fast_laugh/fastlaugh_bloc.dart';
import 'package:netflix_app/core/strings.dart';
import 'package:netflix_app/domain/downloads/model/downloads.dart';
import 'package:netflix_app/presentation/widgets/button_with_label_widget.dart';
import 'package:netflix_app/presentation/widgets/mute_unmute_button_widget.dart';
import 'package:share_plus/share_plus.dart';
import 'package:video_player/video_player.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget widget;
  final MDownloads movieData;

  const VideoListItemInheritedWidget({
    Key? key,
    required this.widget,
    required this.movieData,
  }) : super(key: key, child: widget);

  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoListItem extends StatelessWidget {
  const VideoListItem({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    final posterPath =
        VideoListItemInheritedWidget.of(context)?.movieData.posterPatch;
    final videoUrl = dummyVideoUrls[index % dummyVideoUrls.length];
    return Stack(
      children: [
        VideoPlayerWidget(videoUrl: videoUrl, onStateChanged: (isPlaying) {}),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const MuteUnmuteButtonWidget(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: CircleAvatar(
                      backgroundImage: posterPath == null
                          ? null
                          : NetworkImage("$kImageBaseUrlr$posterPath"),
                    ),
                  ),
                  ValueListenableBuilder(
                      valueListenable: likedVideoIdsNotifire,
                      builder: (BuildContext context, Set<int> likedList,
                          Widget? _) {
                        if (likedList.contains(index)) {
                          return GestureDetector(
                            onTap: () {
                              likedVideoIdsNotifire.value.remove(index);
                              likedVideoIdsNotifire.notifyListeners();
                            },
                            child: const ButtonWithLabelWidget(
                              icon: Icons.favorite,
                              iconColor: Colors.pink,
                              textStyle: TextStyle(color: Colors.pink),
                              name: 'Liked',
                            ),
                          );
                        } else {
                          return GestureDetector(
                            onTap: () {
                              likedVideoIdsNotifire.value.add(index);
                              likedVideoIdsNotifire.notifyListeners();
                            },
                            child: const ButtonWithLabelWidget(
                              icon: Icons.favorite_border_outlined,
                              name: 'LOL',
                            ),
                          );
                        }
                      }),
                  const ButtonWithLabelWidget(icon: Icons.add, name: 'My List'),
                  GestureDetector(
                    onTap: () {
                      final movieName =
                          VideoListItemInheritedWidget.of(context)!
                              .movieData
                              .title;
                      log(movieName.toString());
                      if (movieName != null) {
                        Share.share(movieName);
                      }
                    },
                    child: const ButtonWithLabelWidget(
                      icon: Icons.share,
                      name: 'Share',
                    ),
                  ),
                  const ButtonWithLabelWidget(
                    icon: Icons.play_arrow,
                    name: 'Play',
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

class VideoPlayerWidget extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  const VideoPlayerWidget(
      {Key? key, required this.videoUrl, required this.onStateChanged})
      : super(key: key);

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _videoPlayerController.initialize().then((value) {
      setState(() {
        _videoPlayerController.play();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _videoPlayerController.pause();
        });
      },
      child: SizedBox(
        width: double.infinity,
        height: 300,
        child: _videoPlayerController.value.isInitialized
            ? VideoPlayer(_videoPlayerController)
            : const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ),
      ),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}

class FastLaughsTile extends StatelessWidget {
  const FastLaughsTile({Key? key, required this.index}) : super(key: key);

  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
        color: Colors.accents[index],
      ),
    );
  }
}
