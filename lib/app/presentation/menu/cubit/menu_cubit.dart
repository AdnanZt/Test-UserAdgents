import 'package:bloc/bloc.dart';
import 'package:test_useradgents/app/presentation/menu/cubit/menu_state.dart';
import 'package:test_useradgents/app/presentation/models/item.dart';

import '../../../data/sources/contract/api_source.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit({required ApiSource source})
      : _source = source,
        super(const MenuState.loading());

  final ApiSource _source;

  Future<void> fetchMenus() async {
    final result = await _source.getMenus();

    result.fold(
      (error) => emit(MenuState.error(error)),
      (itemDtos) {
        final items = itemDtos.map((itemDto) => Item.fromItemDto(itemDto)).toList();
        emit(MenuState.loaded(items));
      },
    );
  }
}
