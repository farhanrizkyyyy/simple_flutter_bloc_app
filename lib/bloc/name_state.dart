// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class NameState extends Equatable {
  String name = '';

  NameState(this.name);

  @override
  List<Object> get props => [name];
}
