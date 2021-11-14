import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fundamental/bloc/name_event.dart';
import 'package:flutter_fundamental/bloc/name_state.dart';

class NameBloc extends Bloc<NameEvent, NameState> {
  NameBloc() : super(NameState(''));

  @override
  Stream<NameState> mapEventToState(NameEvent event) async* {
    if (event is AddName) {
      yield NameState(event.name);
    } else {
      yield NameState('');
    }
  }
}
