import 'package:bloc/bloc.dart';
import 'channel_state.dart';

class ChannelCubit extends Cubit<ChannelState> {
  ChannelCubit() : super(const ChannelState.loading());

  
}
