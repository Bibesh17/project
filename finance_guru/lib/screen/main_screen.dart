import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50, // Constrain the width to a fixed value
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.yellow),
                      child: const Icon(CupertinoIcons.person_fill, size: 24),
                    ),
                    const SizedBox(width: 8),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good morning!",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w900,
                              color: Colors.black87),
                        ),
                        Text(
                          "Roman",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87),
                        ),
                      ],
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(CupertinoIcons.bell_circle_fill))
              ],
            ),
            const SizedBox(height: 20),
            // container

            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF32ADE6),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Shrawan 2081',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.white70),
                        ),
                        const SizedBox(width: 80),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.more_vert_outlined),
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 50,
                        width: 110,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.lightBlueAccent),
                        child: Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 39, 159, 196),
                                  shape: BoxShape.circle),
                              child:
                                  const Icon(CupertinoIcons.arrow_down_circle),
                            ),
                            const SizedBox(width: 10),
                            const Column(
                              children: [
                                Text(
                                  'Income',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Rs. 45000",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 50,
                        width: 110,
                        decoration: const BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.lightBlueAccent),
                        child: Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 39, 159, 196),
                                  shape: BoxShape.circle),
                              child:
                                  const Icon(CupertinoIcons.arrow_down_circle),
                            ),
                            const Column(
                              children: [
                                Text(
                                  'Spending',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Rs. 45000",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
