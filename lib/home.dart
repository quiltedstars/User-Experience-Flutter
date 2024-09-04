import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        alignment: WrapAlignment.spaceEvenly,
        children: [
          FractionallySizedBox(
            widthFactor: 0.3,
            child: Card(
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
                child: Column(
                  children: [
                    Image(image: AssetImage('assets/ns.jpeg')),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('This is an example of a text box.'),
                  ),
                  ],
                ),
              ),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.3,
            child: Card(
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
                child: Column(
                  children: [
                    Image(image: AssetImage('assets/ns.jpeg')),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('This is another example of a text box.'),
                  ),
                  ],
                ),
              ),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.3,
            child: Card(
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
                child: Column(
                  children: [
                    Image(image: AssetImage('assets/ns.jpeg')),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Unsurprisingly, this is another example of another text box.'),
                  ),
                  ],
                ),
              ),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.3,
            child: Card(
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
                child: Column(
                  children: [
                    Image(image: AssetImage('assets/ns.jpeg')),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Another one? Another one!'),
                  ),
                  ],
                ),
              ),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.3,
            child: Card(
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
                child: Column(
                  children: [
                    Image(image: AssetImage('assets/ns.jpeg')),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Another one? Another one!'),
                  ),
                  ],
                ),
              ),
            ),
          ),
          FractionallySizedBox(
            widthFactor: 0.3,
            child: Card(
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 5, 5, 10),
                child: Column(
                  children: [
                    Image(image: AssetImage('assets/ns.jpeg')),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Another one? Another one!'),
                  ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}