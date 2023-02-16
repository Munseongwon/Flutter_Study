import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amonut;
  final IconData iconData;
  final bool isInverted;
  final _blackColor = const Color(0xFF1F2123);
  final double order;

  const CurrencyCard(
      {super.key,
      required this.name,
      required this.code,
      required this.amonut,
      required this.iconData,
      required this.isInverted,
      required this.order});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : _blackColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      amonut,
                      style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8), fontSize: 20),
                    )
                  ],
                )
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                // Icon의 x,y 좌표를 움직이기 위해서 사용함
                offset: Offset(-5, (order - 1) * 10),
                child: Icon(
                  iconData,
                  color: isInverted ? _blackColor : Colors.white,
                  size: 88,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
