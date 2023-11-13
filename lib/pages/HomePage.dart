import 'package:flutter/material.dart';
import 'package:flutter_fruits/widgets/HomeBottomBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 1; i < 4; i++)
                  Image.asset(
                    'assets/images/deal$i.jpg',
                    height: 250,
                    fit: BoxFit.contain,
                  )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 5,
                      spreadRadius: 1)
                ]),
            child: GridView.count(
              crossAxisCount: 4,
              childAspectRatio: 1,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              shrinkWrap: true,
              children: [
                for (int i = 1; i < 9; i++)
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 5,
                              spreadRadius: 1)
                        ]),
                    child: Image.asset('assets/images/$i.png'),
                  )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                      color: Colors.grey.withOpacity(0.3))
                ]),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Flash Sale',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                shrinkWrap: true,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.7,
                children: [
                  for (int i = 1; i < 9; i++)
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 225, 228, 242),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                spreadRadius: 1,
                                color: Colors.grey.withOpacity(0.3))
                          ]),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, 'itemPage',
                                      arguments: {'itemNumber': i});
                                },
                                child: Hero(
                                  tag: 'item$i',
                                  child: Image.asset(
                                    'assets/images/$i.png',
                                    height: 130,
                                    width: 120,
                                    fit: BoxFit.contain,
                                  ),
                                )),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Item Name',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              children: [
                                Text(
                                  '\$50',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 245, 190, 22),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '/1KG',
                                  style: TextStyle(fontSize: 14),
                                ),
                                Spacer(),
                                Icon(
                                  Icons.favorite,
                                  size: 18,
                                  color: Colors.red,
                                )
                              ],
                            )
                          ]),
                    )
                ],
              )
            ]),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
      bottomNavigationBar: const HomeBottomBar(),
    );
  }
}
