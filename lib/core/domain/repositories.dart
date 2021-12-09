import 'package:dartz/dartz.dart';
import 'package:picspeak/core/domain/entities/entities.dart';
import 'package:picspeak/core/utils/result/result.dart';

abstract class ChannelsRepository {
  List<Channel> getChannelList();
  Future<Result<void>> refesh();

  Option<Channel> getCachedChannel(String id);
  Future<Result<Channel>> loadChannel(String id);
}

abstract class AppRepository {
  Future<LocalData> loadLocalData();
  Future<Result<ClientRepository>> authenticate(LocalData localData);
}

abstract class ClientRepository {

}

abstract class UnauthenticatedClientRepository {
  Future<Result<ClientRepository>> register();
  Future<Result<ClientRepository>> signUp();
}
