import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/fast_laugh/fastlaugh_bloc.dart';
import 'package:netflix_app/presentation/fast&laughs/widget/video_list_item.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<FastlaughBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: BlocBuilder<FastlaughBloc, FastlaughState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 4,
              ),
            );
          } else if (state.isError) {
            return const Text("Some error occured");
          } else if (state.videosList.isEmpty) {
            return const Center(
              child: Text("Video list is empty"),
            );
          } else {
            return PageView(
              scrollDirection: Axis.vertical,
              children: List.generate(
                state.videosList.length,
                (index) => VideoListItemInheritedWidget(
                    widget: VideoListItem(
                      key: Key(index.toString()),
                      index: index,
                    ),
                    movieData: state.videosList[index]),
              ),
            );
          }
        },
      ),
    );
  }
}
