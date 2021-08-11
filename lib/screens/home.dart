import 'package:flutter/material.dart';
import 'package:travel_app/constants/constants.dart';
import 'package:travel_app/data/data.dart';
import 'package:travel_app/widgets/header.dart';
import 'package:travel_app/widgets/hotel_card.dart';
import 'package:travel_app/widgets/search_row.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _tags = [
    "Recommended",
    "Popular",
    "Top Rates",
    "Cheapest",
  ];
  int _selectedTag = 0;

  Widget _buildTags(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTag = index;
        });
      },
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            decoration: BoxDecoration(
              color: _selectedTag == index ? kPrimaryColor : Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              _tags[index],
              style: TextStyle(
                color: _selectedTag != index ? Colors.grey[400] : Colors.white,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Find your hotel",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SearchRow(),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 30,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: _tags
                            .asMap()
                            .entries
                            .map((MapEntry map) => _buildTags(map.key))
                            .toList(),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: hotels.length,
                    itemBuilder: (context, index) {
                      return HotelCard(hotel: hotels[index]);
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
