import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../repositories/crypto_coins/crypto_coins.dart';

part 'crypto_list_event.dart';
part 'crypto_list_state.dart';

class CryptoListBloc extends Bloc<CryptoListEvent, CryptoListState> {
  CryptoListBloc(this.coinsRepository) : super(CryptoListInitial()) {
    on<LoadCryptoList>((event, emit) async {
      try {
        if (state is! CryptoListLoaded) {
          emit(CryptoListLoading());
        }

        final coinsList = await coinsRepository.getCoinsList();
        emit(CryptoListLoaded(coinsList: coinsList));
      } catch (e) {
        emit(CryptoListLoadingFaiure(exception: e));
      } finally {
        // event.completer?.complete();
        event.completer?.complete();
      }
    });
  }
  final AbstractCoinsRepository coinsRepository;
}
