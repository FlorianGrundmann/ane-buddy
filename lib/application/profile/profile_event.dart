part of 'profile_bloc.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.save(Profile profile) = _Save;
  const factory ProfileEvent.load() = _Load;
}
