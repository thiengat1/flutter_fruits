import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 25, 57, 239),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10))),
      child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: Column(
                children: [
                  Icon(
                    Icons.home,
                    size: 28,
                    color: Colors.amber,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(color: Colors.amber, fontSize: 16),
                  )
                ],
              ),
            ),
            InkWell(
              child: Column(
                children: [
                  Icon(
                    Icons.search,
                    size: 28,
                    color: Colors.amber,
                  ),
                  Text(
                    'Explorer',
                    style: TextStyle(color: Colors.amber, fontSize: 16),
                  )
                ],
              ),
            ),
            InkWell(
              child: Column(
                children: [
                  Icon(
                    CupertinoIcons.cart,
                    size: 28,
                    color: Colors.amber,
                  ),
                  Text(
                    'My Cart',
                    style: TextStyle(color: Colors.amber, fontSize: 16),
                  )
                ],
              ),
            ),
            InkWell(
              child: Column(
                children: [
                  Icon(
                    Icons.person,
                    size: 28,
                    color: Colors.amber,
                  ),
                  Text(
                    'Account',
                    style: TextStyle(color: Colors.amber, fontSize: 16),
                  )
                ],
              ),
            )
          ]),
    );
  }
}
