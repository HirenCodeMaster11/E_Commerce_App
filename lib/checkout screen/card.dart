import 'package:flutter/material.dart';

Column card() {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/homeImage/mas.png'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text('Mastercard',style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/homeImage/paypal.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text('Paypal',style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/homeImage/paytm.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text('Paytm',style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/homeImage/go.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Text('Googlepay',style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),),
            )
          ],
        ),
      ),
    ],
  );
}
