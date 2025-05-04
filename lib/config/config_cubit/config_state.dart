part of 'config_cubit.dart';

sealed class ConfigState {}

final class ConfigInitial extends ConfigState {}

final class DarkModeChangedState extends ConfigState {}
