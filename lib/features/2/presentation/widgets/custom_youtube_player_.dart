import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:itsp/features/2/presentation/blocs/youtube_player_cubit/youtube_player_cubit.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class CustomYoutubePlayer extends StatefulWidget {
  const CustomYoutubePlayer({super.key});

  @override
  State<CustomYoutubePlayer> createState() => _CustomYoutubePlayerState();
}

class _CustomYoutubePlayerState extends State<CustomYoutubePlayer> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => YoutubePlayerCubit()..initialize(),
      child: BlocBuilder<YoutubePlayerCubit, YoutubePlayerState>(
        builder: (context, state) {
          YoutubePlayerCubit cubit = YoutubePlayerCubit.getInstance(context);
          return YoutubePlayer(
            controller: cubit.controller,
          );
        },
      ),
    );
  }
}
