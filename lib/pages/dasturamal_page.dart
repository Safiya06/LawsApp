import 'package:flutter/material.dart';

class DasturamalPage extends StatefulWidget {
  const DasturamalPage({super.key});

  @override
  State<DasturamalPage> createState() => _DasturamalPageState();
}

class _DasturamalPageState extends State<DasturamalPage> {
  Widget _dasturContainer(String value, double size) {
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
            child: Text(
              textAlign: TextAlign.center,
              value,
              style: TextStyle(
                color: Colors.white,
                fontSize: size,
                fontWeight: FontWeight.w800,
              ),
            ),
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
                child: _dasturContainer('Чӣ тавр зӯроварӣ дар оиларо метавон муайян намуд?',31),
              ), 
               const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/Dastur2');
                },
                child: _dasturContainer('Агар шумо таҳти зӯроварӣ дар оила қарор дошта бошед, чӣ бояд кард? ',31),
              ), 
                const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur3');
                },
                child: _dasturContainer('Ҳангоми ба зӯроварии шаҳвонӣ дучор шудан чӣ бояд кард?',31),
              ), 
                const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur4');
                },
                child: _dasturContainer('Чӣ бояд кард, агар Шумо шоҳиди зӯроварӣ шудед?',31),
              ), 
                const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur5');
                },
                child: _dasturContainer('Чӣ гуна бояд муайян кард, шиноси Шумо ба зӯроварии оилавӣ дучор шудааст?',31),
              ), 
                const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur6');
                },
                child: _dasturContainer('Қонунгузории\nмиллӣ',31),
              ), 
                const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur7');
                },
                child: _dasturContainer('Қонунгузории байналмилалӣ',31),
              ), 
              
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                   Navigator.pushNamed(context, '/Dastur61');
                },
                child: _dasturContainer('Зӯроварӣ аз нигоҳи дини Ислом',40),
              ), 
                const SizedBox(height: 20),
              // GestureDetector(
              //   onTap: () {
              //      Navigator.pushNamed(context, '/Dastur9');
              //   },
              //   child: _dasturContainer('НАЦИОНАЛЬНОЕ ЗАКОНОДАТЕЛЬСТВО',23),
              // ), 
              //   const SizedBox(height: 20),
              // GestureDetector(
              //   onTap: () {
              //      Navigator.pushNamed(context, '/Dastur10');
              //   },
              //   child: _dasturContainer('МЕЖДУНАРОДНОЕ ЗАКОНОДАТЕЛЬСТВО',23),
              // ), 
              
              // const SizedBox(height: 20),
              // GestureDetector(
              //   onTap: () {
              //      Navigator.pushNamed(context, '/Dastur91');
              //   },
              //   child: _dasturContainer('ДРУГОЕ',42),
              // ), 
            ],
          ),
        ),
      ),
    );
  }
}
