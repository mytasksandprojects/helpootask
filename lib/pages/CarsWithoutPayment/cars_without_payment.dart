import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:helpootask/widgets/cars_without_payment_card.dart';
import 'package:helpootask/widgets/cars_without_payment_tab_bar.dart';

import 'cars_without_payment_bloc.dart';

class CarsWithoutPayment extends StatefulWidget {
  const CarsWithoutPayment({Key? key}) : super(key: key);

  @override
  State<CarsWithoutPayment> createState() => _CarsWithoutPaymentState();
}

class _CarsWithoutPaymentState extends State<CarsWithoutPayment> {
  CarsWithoutPaymentBloc? carsWithoutPaymentBloc;

  @override
  void initState() {
    super.initState();
    carsWithoutPaymentBloc = context.read<CarsWithoutPaymentBloc>();
    //  carsWithoutPaymentBloc?.loginBloc = carsWithoutPaymentBloc;
  }

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Group.png',width: MediaQuery.of(context).size.width/30,),
             SizedBox(width: 5,),
             Image.asset('assets/images/Frame (2).png',width: MediaQuery.of(context).size.width/12,),
          ],
        ),
        actions: [

          Text('مرحبا بك ، '),
          Text('Alaa'),
          SizedBox(
            width: mediaQuery.width / 30,
          ),
          Image.asset('assets/images/Frame (1).png'),
          SizedBox(
            width: mediaQuery.width / 20,
          ),
        ],
        backgroundColor: Colors.white,
        toolbarHeight: 120,
      ),
      body: ListView(padding: EdgeInsets.zero, children: [
        CarsWithoutPaymentTabBar(
            tabs: const ['سيارات مضافة لباقة', 'سيارات بدون باقة']),
      ]),
    );
  }
}
