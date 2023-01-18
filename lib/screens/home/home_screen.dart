import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var inkWell = InkWell(
      onTap: () {},
      child: Container(
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 15, bottom: 15),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Reçu de Momar Cisse',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  '100 000 F',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Decembre 2, 2022 à 23:52',
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.orange,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 60.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Column(
            children: [
              const Text(
                '100 000 F',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Stack(
                  children: const [
                    Align(
                      alignment: AlignmentDirectional(-0.15, -0.02),
                      child: Icon(
                        Icons.arrow_upward,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.01, 0.21),
                      child: Icon(
                        Icons.arrow_downward_outlined,
                        color: Colors.black,
                        size: 40,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '972 846.30',
                    style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.currency_bitcoin,
                    color: Colors.grey.shade800,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        child: Text(
                          'Transférer'.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.orange,
                            fontSize: 10,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              child: ListView(
                padding: const EdgeInsets.only(top: 10, bottom: 40),
                children: [
                  inkWell,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
