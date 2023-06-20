import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:need_moto/customer/controllers/controllerkyc.dart';
import 'package:need_moto/customer/screens/chooseVehicle.dart';

class KycPopUp extends StatefulWidget {
  KycPopUp({
    Key? key,
    required this.seats,
    required this.vehicleLocation,
    required this.source,
    required this.destination,
    required this.pickupDateTime,
    required this.returnDateTime,
    required this.delivery,
    required this.purpose,
  }) : super(key: key);
  RxString seats;
  String vehicleLocation;
  String source;
  String destination;
  String pickupDateTime;
  String returnDateTime;
  String delivery;
  String purpose;
  @override
  State<KycPopUp> createState() => _KycPopUpState();
}

class _KycPopUpState extends State<KycPopUp> {
  final KycController kycPopUpController = Get.find<KycController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Icon(
            Icons.check_circle,
            size: 60.0,
            color: Colors.green[400],
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Container(
              child: Text(
                'Successfully Uploaded!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
              ),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.2,
              margin: EdgeInsets.all(4.0),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'You have uploaded all documents successfully.\n'
                  'Verification will be done by Rush wheels within short time.',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          GestureDetector(
            onTap: () {
              Get.offAll(ChooseVehicle(
                seats: widget.seats,
                vehicleLocation: widget.vehicleLocation,
                source: widget.source,
                destination: widget.destination,
                pickupDateTime: widget.pickupDateTime,
                returnDateTime: widget.returnDateTime,
                delivery: widget.delivery,
                purpose: widget.purpose,
              ));
              // Get.offAll(Home());
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.04,
              decoration: BoxDecoration(
                color: Colors.green[400],
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Center(
                child: Text(
                  'ok',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
