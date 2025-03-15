import 'package:equatable/equatable.dart';

class CurrencyModel extends Equatable {
  final int id;
  final String name;
  final double value;

  const CurrencyModel({
    required this.id,
    required this.name,
    required this.value,
  });

  @override
  List<Object> get props => [id, name, value];
}