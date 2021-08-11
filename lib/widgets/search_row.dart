import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/constants/constants.dart';

class SearchRow extends StatelessWidget {
  const SearchRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                labelText: "Search Hotels",
                contentPadding: EdgeInsets.zero,
                filled: true,
                fillColor: Colors.white,
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        InkWell(
          borderRadius: BorderRadius.circular(12),
          splashColor: kSecondaryColor,
          onTap: () {},
          child: Ink(
            padding: EdgeInsets.all(15),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              FontAwesomeIcons.filter,
              color: kPrimaryColor,
              size: 20,
            ),
          ),
        )
      ],
    );
  }
}
