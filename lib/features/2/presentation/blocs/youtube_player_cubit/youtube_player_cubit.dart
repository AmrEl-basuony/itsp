import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

part 'youtube_player_state.dart';

class YoutubePlayerCubit extends Cubit<YoutubePlayerState> {
  YoutubePlayerCubit() : super(YoutubePlayerInitial());

  static YoutubePlayerCubit getInstance(context) =>
      BlocProvider.of<YoutubePlayerCubit>(context);

  late final YoutubePlayerController controller;

  void initialize() {
    controller = YoutubePlayerController(
      params: const YoutubePlayerParams(
        mute: false,
        showControls: true,
        enableCaption: false,
        showVideoAnnotations: false,
        showFullscreenButton: false,
      ),
    );
    controller
        .cueVideoById(videoId: 'FxJ3zPUU6Y4')
        .then((value) => emit(YoutubePlayerInitialized()));
  }

  void play() {
    controller.playVideo();
    emit(YoutubePlayerPlaying());
  }

  void pause() {
    controller.pauseVideo();
    emit(YoutubePlayerPaused());
  }

  void dispose() {
    controller.close();
  }

  @override
  Future<void> close() async {
    dispose();
    return super.close();
  }
}
