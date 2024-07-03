import 'package:flutter/material.dart';

class DasturamalPage extends StatefulWidget {
  const DasturamalPage({super.key});

  @override
  State<DasturamalPage> createState() => _DasturamalPageState();
}

class _DasturamalPageState extends State<DasturamalPage> {
  Widget _dasturContainer(String value) {
    return Container(
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Center(
            // child: FittedBox(
            // fit:  BoxFit.scaleDown,
            child: Text(
              textAlign: TextAlign.center,
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 31,
                fontWeight: FontWeight.w800,
              ),
            ),
            // ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            const Text(
                'Дастурамал',
                style: TextStyle(
                  fontSize: 37,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF654900),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Dastur1');
                },
                child: _dasturContainer('Чи гуна зуровари дар оиларо аник кард?'),
              ), 
               const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Dastur2');
                },
                child: _dasturContainer('Агар шумо тахти зуроварй дар оила карор дошта бошед, чй бояд кард?'),
              ), 
                const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur3');
                },
                child: _dasturContainer('Ҳангоми ба зӯроварии ҷинсӣ дучор шудан чӣ бояд кард?'),
              ), 
                const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur4');
                },
                child: _dasturContainer('Дастурамалҳо дар формати видео барои ҷабрдидагон'),
              ), 
                const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur5');
                },
                child: _dasturContainer('Чӣ бояд кард, агар Шумо шоҳиди зӯроварӣ шудед?'),
              ), 
                const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur6');
                },
                child: _dasturContainer('Зӯроварии оилавӣ: афсонаҳо ва ҳақиқатҳо'),
              ), 
                const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur7');
                },
                child: _dasturContainer('Чӣ гуна бояд муайян кард, шиноси Шумо ба зӯроварии оилавӣ дучор шудааст?'),
              ), 
              
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur8');
                },
                child: _dasturContainer('Чӣ гуна худро аз зӯроварии оилавӣ ҳимоя кард, агар Шумо аз синни 18 сола поён ҳастед?'),
              ), 
            ],
          ),
        ),
      ),
    );
  }
}
