import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_app/application/flutter%20packages%20pub%20run%20build_runner%20watch%20--use-polling-watcher%20--delete-conflicting-outputs/search_page_switch_block_bloc.dart';
import 'package:netflix_app/core/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/core/enum.dart';
import 'package:netflix_app/presentation/search/widgets/search_idle.dart';
import 'package:netflix_app/presentation/search/widgets/search_result_page.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchEditingController =
        TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              CupertinoSearchTextField(
                controller: searchEditingController,
                backgroundColor: const Color.fromARGB(255, 27, 26, 26),
                style: const TextStyle(color: Colors.white),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: Colors.grey,
                ),
                onChanged: (text) {
                  if (text != '') {
                    context
                        .read<SearchPageSwitchBlockBloc>()
                        .add(SearchResultWidget());
                  } else {
                    context.read<SearchPageSwitchBlockBloc>().add(IdleWidget());
                  }
                },
              ),
              kheight,
              BlocBuilder<SearchPageSwitchBlockBloc,
                  SearchPageSwitchBlockState>(
                builder: (context, state) {
                  return state.searchScreen == SearchScreen.idle
                      ? const SearchIdleWidget()
                      : const SearchResultPage();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
