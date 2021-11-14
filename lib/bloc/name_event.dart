// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

abstract class NameEvent extends Equatable {}

class AddName extends NameEvent {
  String name;

  AddName(this.name);

  @override
  List<Object> get props => [name];
}

class ResetName extends NameEvent {
  String name;

  ResetName(this.name);

  @override
  List<Object> get props => [name];
}
