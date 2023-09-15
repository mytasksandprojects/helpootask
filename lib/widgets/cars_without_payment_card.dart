import 'package:flutter/material.dart';
import 'package:helpootask/Models/cars_without_payment_model.dart';

class CarsWithoutPaymentCard extends StatefulWidget {
  const CarsWithoutPaymentCard(
      {Key? key, required this.carsWithoutPaymentModel})
      : super(key: key);
  final CarsWithoutPaymentModel? carsWithoutPaymentModel;

  @override
  State<CarsWithoutPaymentCard> createState() => _CarsWithoutPaymentCardState();
}

class _CarsWithoutPaymentCardState extends State<CarsWithoutPaymentCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                    Text(
                      'بيانات السيارة المسجلة',
                      style: TextStyle(
                          color: Color(0xff44B649),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width / 8,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color(0xff3C3B3D),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                              widget.carsWithoutPaymentModel?.carModelName ??
                                  '',
                              style: TextStyle(color: Colors.white)),
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 15,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width / 8,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color(0xff3C3B3D),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                              widget.carsWithoutPaymentModel?.carBrandName ??
                                  '',
                              style: TextStyle(color: Colors.white)),
                        )),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 8,
                    ),
                  ],
                ),
                ListTile(
                  leading: Container(
                      width: MediaQuery.of(context).size.width / 7,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  widget.carsWithoutPaymentModel?.image ?? '')),
                          shape: BoxShape.circle,
                          color: Color(0xffD9D9D9),
                          border: Border.all(color: Color(0xff44B649)))),
                  title: Text(
                    widget.carsWithoutPaymentModel?.title ?? '',
                  ),
                  subtitle: Text(
                    widget.carsWithoutPaymentModel?.subTitle ?? '',
                    style: TextStyle(color: Colors.red, fontSize: 10),
                  ),
                )
              ])),
          Positioned(
              right: -5,
              top: -1,
              child: CircleAvatar(
                radius: 12,
                child: Image.asset('assets/images/Frame.png'),
                backgroundColor: Color(0xffD9D9D9),
              )),
          Positioned(
            right: MediaQuery.of(context).size.width / 1.4,
            top: 140,
            child: Container(
                width: MediaQuery.of(context).size.width / 8,
                height: 25,
                decoration: BoxDecoration(
                    color: Color(0xff44B649),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                      'تفعيل',
                      style: TextStyle(color: Colors.white)),
                )),
          ),
        ],
      ),
    );
  }
}
