import 'package:flutter/material.dart';

class HelpRuPage extends StatelessWidget {
  const HelpRuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Center(
        child: Container(
          height: 335,
          width: 335,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(200),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 8,
                blurRadius: 10,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Column(
            children: [
              Text(
                '!',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontSize: 175,
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'Помощь',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                    fontSize: 37,
                    fontWeight: FontWeight.w800),
              )
            ],
          ),
        ),
      ),
    );
  }
}
