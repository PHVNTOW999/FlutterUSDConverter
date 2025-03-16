import 'package:equatable/equatable.dart';

class CurrencyModel extends Equatable {
  final String name; // Код валюты (EUR, USD, etc.)
  final double value; // Курс валюты

  const CurrencyModel({
    required this.name,
    required this.value,
  });

  factory CurrencyModel.fromJson(String name, double value) {
    return CurrencyModel(
      name: name,
      value: value,
    );
  }

  @override
  List<Object?> get props => [name, value];
}
