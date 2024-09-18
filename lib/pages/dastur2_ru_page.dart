import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_ru_page.dart';

class Dastur2RuPage extends StatelessWidget {
  const Dastur2RuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const MainRuPage()));
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          color: Theme.of(context).colorScheme.primary,
          iconSize: 40,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(28),
                // height: 390,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Center(
                      child: Text(
                        'Разработка плана действий в кризисной ситуации - как можно скорее покинуть дом и пойти в безопасное место.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(28),
                // height: 390,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Center(
                      child: Text(
                        ' О насилии сообщите своим доверенным лицам (друзьям, родственникам, близким).',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(28),
                // height: 390,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Center(
                      child: Text(
                        'Узнайте телефоны и адреса центров экстренной помощи, приютов, региональных инспекторов полиции.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(28),
                // height: 390,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Center(
                      child: Text(
                        'Соберите самое необходимое (одежду, документы, лекарства, ключи) и спрячьте в укромное место.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(28),
                // height: 390,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Center(
                      child: Text(
                        'Если возможно, зафиксируйте избиение, угрозы и насилие (с помощью фото-, видео- или диктофона).',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(28),
                // height: 390,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Center(
                      child: Text(
                        'Посоветуйтесь со своими соседями, чтобы  при необходимости позвонили в полицию или принесли вам телефон.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(28),
                // height: 390,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Center(
                      child: Text(
                        'Сохраняйте спокойствие, насколько это возможно, после прибытия полиции. Попросите правоохранителей доставить насильника в отделение. После происшествия напишите заявление и зарегистрируйте его в отделе участковой милиции. Подробно опишите в своем заявлении случай насилия.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(28),
                // height: 390,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Center(
                      child: Text(
                        'Если вы подверглись физическому насилию, обратитесь на судебно-медицинскую экспертизу (через травм пункт, поликлинику) для регистрации синяков и попросите врача зафиксировать все повреждения.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(28),
                // height: 390,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Center(
                      child: Text(
                        'Если вы и ваши дети находитесь в опасности и никто не может остановить насильника, лучше временно покинуть дом. Не отвечайте на насилие насилием. Постарайтесь держать себя в руках, разговаривайте с обидчиком спокойно и твердо.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),SizedBox(height: 20,),
              Container(
                padding: const EdgeInsets.all(28),
                // height: 390,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Center(
                  child: Text(
                    'Успокойтесь и примите решение о своих дальнейших действиях. Если вы сомневаетесь в правильности своих действий или не знаете, что делать, получите консультации организаций, которые помогают жертвам насилия.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 300,
                child: Text(
                  textAlign: TextAlign.center,
                  'ПОМНИТЕ!',
                  style: TextStyle(
                    fontSize: 31,
                    fontWeight: FontWeight.w800,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Container(
                    height: 11,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 2)),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width,
                    // height: 170,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Theme.of(context).colorScheme.primary,
                            width: 2),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: const Text(
                      'Вы не виновны в насилии над собой, насильник есть преступник, и с Вашей помощью он будет привлечен к ответственности.',
                      style: TextStyle(
                          color: Color(0xFF654900),
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
