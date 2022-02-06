import 'package:flutter_bloc/flutter_bloc.dart';

enum BlocProcessState { busy, idle }

abstract class BlocWithState<Event, State> extends Bloc<Event, State> {
  BlocWithState(State initialState) : super(initialState);

  BlocProcessState _state = BlocProcessState.idle;

  BlocProcessState get blocProcessState => _state;

  Stream<State> runBlocProcess(Stream<State> Function() process) async* {
    if (_state == BlocProcessState.idle) {
      _state = BlocProcessState.busy;
      yield* process();
      _state = BlocProcessState.idle;
    }
  }
}
