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

  factory CurrencyModel.fromJson(Map<String, Object> json) {
    return CurrencyModel(
      id: json['id'] as int,
      name: json['name'] as String,
      value: (json['value'] as num).toDouble(),
    );
  }

  @override
  List<Object> get props => [id, name, value];
}