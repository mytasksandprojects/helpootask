import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'cars_without_payment_event.dart';
part 'cars_without_payment_state.dart';

class CarsWithoutPaymentBloc extends Bloc<CarsWithoutPaymentEvent, CarsWithoutPaymentState> {
  TabController? tabController;
  CarsWithoutPaymentBloc() : super(CarsWithoutPaymentInitial()) {
    on<CarsWithoutPaymentEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
