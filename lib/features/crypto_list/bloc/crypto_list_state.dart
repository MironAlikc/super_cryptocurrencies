part of 'crypto_list_bloc.dart';

//@immutable
abstract class CryptoListState extends Equatable {}

class CryptoListInitial extends CryptoListState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class CryptoListLoading extends CryptoListState {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class CryptoListLoaded extends CryptoListState {
  CryptoListLoaded({
    required this.coinsList,
  });
  final List<CryptoCoin> coinsList;

  @override
  List<Object?> get props => [coinsList];
}

class CryptoListLoadingFaiure extends CryptoListState {
  CryptoListLoadingFaiure({
    this.exception,
  });
  final Object? exception;

  @override
  List<Object?> get props => [exception];
}
