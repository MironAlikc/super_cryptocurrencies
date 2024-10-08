// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:super_cryptocurrencies/repositories/crypto_coins/models/crypto_coin_details.dart';

part 'crypto_coin.g.dart';

@HiveType(typeId: 2)
class CryptoCoin extends Equatable {
  const CryptoCoin({
    required this.name,
    required this.details,
  });

  @HiveField(0)
  final String name; 

  @HiveField(1)
  final CryptoCoinDetail details;

  @override
  List<Object> get props => [name, details];
}
