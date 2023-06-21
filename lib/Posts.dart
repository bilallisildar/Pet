import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final String name;

  const Post({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    const double paddingValue = 6.0;
    const TextStyle boldTextStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 18);
    const TextStyle normalTextStyle = TextStyle(fontSize: 16);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              Text(
                name,
                style: boldTextStyle,
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: SizedBox(
            height: 400,
            child: Icon(
              Icons.pets,
              size: 400,
            ),
          ),
        ),
        buildInfoRow("Name", boldTextStyle),
        buildInfoRow("Genus", boldTextStyle),
        buildInfoRow("Gender", boldTextStyle),
        buildInfoRow("Age", boldTextStyle),
        buildInfoRow("City", boldTextStyle),
        buildInfoRow("Vaccins", boldTextStyle),
        const Padding(
          padding: EdgeInsets.only(top: paddingValue, left: paddingValue, right: paddingValue),
          child: Text(
            "şdfhnghslknlkfldjnhlknljsdgöbsdfgbkjsdfbgkjdfbnskfjbdkfgkjhsjkdkökbjfgıkbdklfögjdkfbsg",
            style: normalTextStyle,
          ),
        ),
      ],
    );
  }

  Widget buildInfoRow(String label, TextStyle textStyle) {
    return Padding(
      padding: const EdgeInsets.only(top: 6, left: 8),
      child: Text(
        "$label: ",
        style: textStyle,
      ),
    );
  }
}