import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_useradgents/app/presentation/models/item.dart';

part 'menu_state.freezed.dart';

@freezed
class MenuState with _$MenuState {
  const factory MenuState.loading() = Loading;
  const factory MenuState.error(String message) = Error;
  const factory MenuState.loaded(List<Item> items) = Loaded;
}
