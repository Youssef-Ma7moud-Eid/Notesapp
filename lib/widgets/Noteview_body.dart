import 'package:flutter/material.dart';

class Notesviewbody extends StatelessWidget {
  const Notesviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: const Color(0XFFFFCC80),
          ),
          child: const Card(
            color: Color(0XFFFFCC80),
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Flutter tips',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Build your Career with',
                    style: TextStyle(
                      color: Color.fromARGB(196, 59, 52, 52),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Youssef mahmoud',
                    style: TextStyle(
                      color: Color.fromARGB(196, 59, 52, 52),
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 5,
          top: 30,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete,
              color: Colors.black,
              size: 28,
            ),
          ),
        ),
        const Positioned(
          right: 25,
          top: 155,
          child: Text(
            'may 2024',
            style: TextStyle(
              color: Color.fromARGB(196, 59, 52, 52),
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
