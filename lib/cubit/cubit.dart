import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldcup/cubit/states.dart';

class WorldCubit extends Cubit<WorldStates> {
  WorldCubit() : super(WorldInitialState());
  static WorldCubit get(context) => BlocProvider.of(context);
}
