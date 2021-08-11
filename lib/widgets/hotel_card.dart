import 'package:flutter/material.dart';
import 'package:travel_app/constants/constants.dart';
import 'package:travel_app/data/data.dart';

class HotelCard extends StatelessWidget {
  final HotelModel hotel;
  const HotelCard({
    Key? key,
    required this.hotel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(hotel.image),
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.all(15),
          width: 230,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${hotel.name}, ${hotel.location}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                    size: 20,
                  ),
                  RichText(
                    text: TextSpan(
                        text: "${hotel.rating}",
                        style: TextStyle(
                          color: Colors.orangeAccent,
                        ),
                        children: [
                          TextSpan(
                            text: " / 5 (${hotel.numberOfReviews} Reviews)",
                            style: TextStyle(
                              color: kSecondaryColor,
                            ),
                          )
                        ]),
                  ),
                ],
              ),
              RichText(
                text: TextSpan(
                    text: "\$ ${hotel.price}",
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                    children: [
                      TextSpan(
                        text: " / night",
                        style: TextStyle(
                          color: kSecondaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
