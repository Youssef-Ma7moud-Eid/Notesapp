import 'package:flutter/material.dart';
import 'package:noteapp_project/views/edit_note_view.dart';

class Notesviewbody extends StatelessWidget {
  const Notesviewbody({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, EditNote.id, arguments: text);
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 15),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: const Color(0XFFFFCC80),
            ),
            child: Card(
              color: const Color(0XFFFFCC80),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Build your Career with',
                      style: TextStyle(
                        color: Color.fromARGB(196, 59, 52, 52),
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Youssef mahmoud',
                      style: TextStyle(
                        color: Color.fromARGB(196, 59, 52, 52),
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                  ],
                ),
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
