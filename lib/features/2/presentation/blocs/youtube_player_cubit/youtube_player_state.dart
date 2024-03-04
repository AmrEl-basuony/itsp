part of 'youtube_player_cubit.dart';

@immutable
sealed class YoutubePlayerState {}

final class YoutubePlayerInitial extends YoutubePlayerState {}
final class YoutubePlayerInitialized extends YoutubePlayerState {}
final class YoutubePlayerloading extends YoutubePlayerState {}
final class YoutubePlayerPlaying extends YoutubePlayerState {}
final class YoutubePlayerPaused extends YoutubePlayerState {}
