import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:need_moto/widget/Request2.dart';
import 'package:need_moto/widget/request.dart';
import 'package:need_moto/screens/tenth.dart';

class VehicleTile extends StatefulWidget {
  final String imgUrl;
  final String vehicleName;
  final String seats;
  final String rentalPricePerKm;
  final String perKm;
  final String distanceFromYou;
  final String kpml;
  final String type;
  final String ownerName;
  final String ownerPhoneNumber;
  final String average;
  // final String userId;

  RxString userseats;
  String vehicleLocation;
  String source;
  String destination;
  String pickupDateTime;
  String returnDateTime;
  String delivery;
  String purpose;

  VehicleTile({
    required this.imgUrl,
    required this.vehicleName,
    required this.seats,
    required this.rentalPricePerKm,
    required this.perKm,
    required this.distanceFromYou,
    required this.kpml,
    required this.type,
    required this.ownerName,
    required this.ownerPhoneNumber,
    required this.average,
    required this.userseats,
    required this.vehicleLocation,
    required this.source,
    required this.destination,
    required this.pickupDateTime,
    required this.returnDateTime,
    required this.delivery,
    required this.purpose,
    // required this.userId
  });

  @override
  State<VehicleTile> createState() => _VehicleTileState();
}

class _VehicleTileState extends State<VehicleTile> {
  bool kycdone = false;
  // getKycStatus() async {
  //   await CheckKyc.checkKycdone(widget.userId).then((iskycdone) {
  //     setState(() {
  //       // isLoading = false;
  //       kycdone = iskycdone;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                elevation: 1,
                child: Container(
                  height: 210,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Vehicle Details
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Vehicle Name

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.vehicleName,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 23.0,
                                      ),
                                    ),
                                    Text(
                                      '(${widget.distanceFromYou} km away from you)',
                                      style: TextStyle(
                                          fontSize: 12.0, color: Colors.grey),
                                    ),
                                  ],
                                ),

                                // Seats

                                Row(
                                  children: [
                                    Text(
                                      'Seats :',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      '${widget.seats}',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    // Icon(Icons.event_seat_sharp),
                                  ],
                                ),

                                // Rental Price Per Km and Per Km

                                Row(
                                  children: [
                                    Text(
                                      'Rent Amount : ',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      '₹${widget.rentalPricePerKm}/-',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: [
                                    Text(
                                      'Daily Limit :',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    Text(
                                      '  ${widget.perKm} km',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ],
                                ),

                                // Book Now Button
                              ],
                            ),
                          ),
                        ),

                        // Vehicle Image
                        Expanded(
                          child: Hero(
                              tag: widget.rentalPricePerKm,
                              child: Image.asset(
                                'assets/i30n.png',
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Card(
              //   elevation: 0,
              //   child: Row(
              //     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       // Vehicle Details
              //       Expanded(
              //         flex: 2,
              //         child: Padding(
              //           padding: const EdgeInsets.only(left: 8.0, right: 8),
              //           child: Column(
              //             mainAxisAlignment: MainAxisAlignment.spaceAround,
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               // Vehicle Name

              //               Text(
              //                 widget.vehicleName,
              //                 style: TextStyle(
              //                   fontWeight: FontWeight.bold,
              //                   fontSize: 18.0,
              //                 ),
              //               ),

              //               SizedBox(height: 8.0),

              //               // Seats

              //               Row(
              //                 children: [
              //                   Text(
              //                     '${widget.seats}',
              //                     style: TextStyle(
              //                       fontSize: 16.0,
              //                     ),
              //                   ),
              //                   Icon(Icons.event_seat_sharp),
              //                 ],
              //               ),

              //               SizedBox(height: 8.0),

              //               // Rental Price Per Km and Per Km
              //               Text(
              //                 'Rs ${widget.rentalPricePerKm}/- Per day ${widget.perKm} km',
              //                 style: TextStyle(
              //                   fontSize: 16.0,
              //                 ),
              //               ),

              //               SizedBox(height: 8.0),

              //               // Distance From You
              //               Text(
              //                 '${widget.distanceFromYou} km away from you',
              //                 style: TextStyle(fontSize: 12.0, color: Colors.grey),
              //               ),

              //               SizedBox(height: 16.0),
              //               Container(
              //                 decoration: BoxDecoration(
              //                   boxShadow: [
              //                     BoxShadow(
              //                         color: Colors.black26,
              //                         offset: Offset(0, 4),
              //                         blurRadius: 5.0)
              //                   ],
              //                   gradient: LinearGradient(
              //                     begin: Alignment.topLeft,
              //                     end: Alignment.bottomRight,
              //                     stops: [0.0, 1.0],
              //                     colors: [Color(0xFF20A4F3), Color(0xFF182B3A)],
              //                   ),
              //                   color: Colors.deepPurple.shade300,
              //                   borderRadius: BorderRadius.circular(20),
              //                 ),
              //                 child: ElevatedButton(
              //                   style: ButtonStyle(
              //                     shape: MaterialStateProperty.all<
              //                         RoundedRectangleBorder>(
              //                       RoundedRectangleBorder(
              //                         borderRadius: BorderRadius.circular(20.0),
              //                       ),
              //                     ),
              //                     minimumSize:
              //                         MaterialStateProperty.all(Size(10, 10)),
              //                     backgroundColor:
              //                         MaterialStateProperty.all(Colors.transparent),
              //                     // elevation: MaterialStateProperty.all(3),
              //                     shadowColor:
              //                         MaterialStateProperty.all(Colors.transparent),
              //                   ),
              //                   onPressed: () {
              //                     // Handle booking logic here
              //                     // showCupertinoAlertDialog(context);
              //                     Get.to(
              //                       DetailsPage(
              //                           milage: widget.kpml,
              //                           type: widget.type,
              //                           speed: widget.average,
              //                           bags: '5',
              //                           carImage: 'assets/i30n.png',
              //                           carName: widget.vehicleName,
              //                           carPrice: widget.rentalPricePerKm,
              //                           carRating: '4.5',
              //                           isRotated: true,
              //                           people: widget.seats,
              //                           ownername: widget.ownerName,
              //                           phonenumber: widget.ownerPhoneNumber),
              //                     );
              //                     // Get.to(Request(
              //                     //     vehicleLocation: widget.vehicleLocation,
              //                     //     source: widget.source,
              //                     //     destination: widget.destination,
              //                     //     delivery: widget.delivery,
              //                     //     pickupDateTime: widget.pickupDateTime,
              //                     //     returnDateTime: widget.returnDateTime,
              //                     //     purpose: widget.purpose,
              //                     //     imgUrl: widget.imgUrl,
              //                     //     vehicleName: widget.vehicleName,
              //                     //     seats: widget.seats,
              //                     //     average: widget.average,
              //                     //     kpml: widget.kpml,
              //                     //     type: widget.type,
              //                     //     ownerName: widget.ownerName,
              //                     //     ownerPhoneNumber: widget.ownerPhoneNumber));
              //                   },
              //                   child: Padding(
              //                     padding: const EdgeInsets.only(left: 5, right: 5),
              //                     child: Text(
              //                       'Book Now',
              //                       style: TextStyle(
              //                         fontSize: 15,
              //                         // fontWeight: FontWeight.w700,
              //                         color: Colors.white,
              //                       ),
              //                     ),
              //                   ),
              //                 ),
              //               ),

              //               // // Book Now Button
              //               // ElevatedButton(
              //               //   onPressed: () {
              //               //     // Handle booking logic here
              //               //     // showCupertinoAlertDialog(context);
              //               //     Get.to(
              //               //       DetailsPage(
              //               //           milage: widget.kpml,
              //               //           type: widget.type,
              //               //           speed: widget.average,
              //               //           bags: '5',
              //               //           carImage: 'assets/i30n.png',
              //               //           carName: widget.vehicleName,
              //               //           carPrice: widget.rentalPricePerKm,
              //               //           carRating: '4.5',
              //               //           isRotated: true,
              //               //           people: widget.seats,
              //               //           ownername: widget.ownerName,
              //               //           phonenumber: widget.ownerPhoneNumber),
              //               //     );
              //               //     // Get.to(Request(
              //               //     //     vehicleLocation: widget.vehicleLocation,
              //               //     //     source: widget.source,
              //               //     //     destination: widget.destination,
              //               //     //     delivery: widget.delivery,
              //               //     //     pickupDateTime: widget.pickupDateTime,
              //               //     //     returnDateTime: widget.returnDateTime,
              //               //     //     purpose: widget.purpose,
              //               //     //     imgUrl: widget.imgUrl,
              //               //     //     vehicleName: widget.vehicleName,
              //               //     //     seats: widget.seats,
              //               //     //     average: widget.average,
              //               //     //     kpml: widget.kpml,
              //               //     //     type: widget.type,
              //               //     //     ownerName: widget.ownerName,
              //               //     //     ownerPhoneNumber: widget.ownerPhoneNumber));
              //               //   },
              //               //   child: Text('Book Now'),
              //               //   style: ElevatedButton.styleFrom(
              //               //     backgroundColor: Colors.lightBlueAccent,
              //               //     shape: RoundedRectangleBorder(
              //               //       borderRadius: BorderRadius.circular(20.0),
              //               //     ),
              //               //   ),
              //               // ),
              //             ],
              //           ),
              //         ),
              //       ),

              //       // Vehicle Image
              //       Expanded(
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Hero(
              //               tag: widget.vehicleName,
              //               child: Image.asset('assets/i30n.png')),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
        Positioned(
          bottom: 20.0,
          right: 15.0,
          child: ElevatedButton(
            onPressed: () {
              // Handle booking logic here
              // showCupertinoAlertDialog(context);
              Get.to(
                DetailsPage(
                    milage: widget.kpml,
                    type: widget.type,
                    speed: widget.average,
                    bags: '5',
                    carImage: 'assets/i30n.png',
                    carName: widget.vehicleName,
                    carPrice: widget.rentalPricePerKm,
                    carRating: '4.5',
                    isRotated: true,
                    people: widget.seats,
                    ownername: widget.ownerName,
                    phonenumber: widget.ownerPhoneNumber),
              );
              // Get.to(Request(
              //     vehicleLocation: widget.vehicleLocation,
              //     source: widget.source,
              //     destination: widget.destination,
              //     delivery: widget.delivery,
              //     pickupDateTime: widget.pickupDateTime,
              //     returnDateTime: widget.returnDateTime,
              //     purpose: widget.purpose,
              //     imgUrl: widget.imgUrl,
              //     vehicleName: widget.vehicleName,
              //     seats: widget.seats,
              //     average: widget.average,
              //     kpml: widget.kpml,
              //     type: widget.type,
              //     ownerName: widget.ownerName,
              //     ownerPhoneNumber: widget.ownerPhoneNumber));
            },
            child: Text('Book Now'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
      ]),
    );
  }

//   showCupertinoAlertDialog(BuildContext context) {
//     showDialog(
//         builder: (context) => CupertinoAlertDialog(
//               title: Column(
//                 children: <Widget>[
//                   Text(
//                     "Complete your KYC",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ],
//               ),
//               content: Text(
//                 "Please complete your KYC\n to book vehicle",
//                 style: TextStyle(fontSize: 16),
//               ),
//               actions: <Widget>[
//                 CupertinoDialogAction(
//                   child: Text("Yes"),
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => Tenth(
//                                   seats: widget.userseats,
//                                   vehicleLocation: widget.vehicleLocation,
//                                   source: widget.source,
//                                   destination: widget.destination,
//                                   pickupDateTime: widget.pickupDateTime,
//                                   returnDateTime: widget.returnDateTime,
//                                   delivery: widget.delivery,
//                                   purpose: widget.purpose,
//                                 )));
//                   },
//                 ),
//                 CupertinoDialogAction(
//                   child: Text("No"),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                 ),
//               ],
//             ),
//         context: context);
//   }
// }
}
