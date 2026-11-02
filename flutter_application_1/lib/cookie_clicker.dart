import 'package:flutter/material.dart';

class CookieClicker extends StatefulWidget {
  const CookieClicker({super.key});

  @override
  State<CookieClicker> createState() => _CookieClickerState();
}

class _CookieClickerState extends State<CookieClicker> {
  int cookies = 0;
  int cookiesPerClick = 1;
  int grandmaCost = 10;
  int factoryCost = 50;

  void buyUpgrade(int cost, int increase) {
    if (cookies < cost) return;

    setState(() {
      cookies -= cost;
      cookiesPerClick += increase;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Cookies: $cookies', style: const TextStyle(fontSize: 28)),
            const SizedBox(height: 8),
            Text('Cookies per klik: $cookiesPerClick'),
            const SizedBox(height: 24),
            IconButton(
              onPressed: () {
                setState(() {
                  cookies += cookiesPerClick;
                });
              },
              icon: const Icon(Icons.cookie, size: 100),
              tooltip: 'Klik op de cookie',
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: cookies >= grandmaCost
                  ? () {
                      buyUpgrade(grandmaCost, 1);
                      grandmaCost += 10;
                    }
                  : null,
              child: Text('Oma - $grandmaCost cookies (+1 per klik)'),
            ),
            ElevatedButton(
              onPressed: cookies >= factoryCost
                  ? () {
                      buyUpgrade(factoryCost, 5);
                      factoryCost += 50;
                    }
                  : null,
              child: Text('Fabriek - $factoryCost cookies (+5 per klik)'),
            ),
          ],
        ),
      ),
    );
  }
}
