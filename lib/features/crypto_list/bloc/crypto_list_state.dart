part of 'crypto_list_bloc.dart';

@immutable
abstract class CryptoListState {}

class CryptoListInitial extends CryptoListState {}

class CryptoListLoading extends CryptoListState {}

class CryptoListLoaded extends CryptoListState {
  CryptoListLoaded({
    required this.coinsList,
  });
  final List<CryptoCoin> coinsList;
}

class CryptoListLoadingFaiure extends CryptoListState {
  CryptoListLoadingFaiure({
    this.exception,
  });
  final Object? exception;
}
