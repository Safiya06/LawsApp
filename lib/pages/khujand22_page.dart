import 'package:flutter/material.dart';
import 'package:lows_app/pages/main_page.dart';

class Khujand22Page extends StatefulWidget {
  const Khujand22Page({super.key});

  @override
  State<Khujand22Page> createState() => _Khujand22PageState();
}

class _Khujand22PageState extends State<Khujand22Page> {
  Widget _khujandContainer(String value) {
    return Container(
      padding: const EdgeInsets.all(18),
      height: 140,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          value,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 40,
            color: Theme.of(context).colorScheme.primary,
          ),
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              _khujandContainer('M33 «ASTI», ш. Хучанд, к. Шуро-24 (8-3422) 62-470; 92-777-90-15 asti.tajikistan@gmail.com'),
              const SizedBox(height: 20),
              _khujandContainer('М33 «Кухсор», н. Айнй, к. Рудакй-55 92-762-40-40; 93-545-19-20 gulchehra.04@mail.ru'),
              const SizedBox(height: 20),
              _khujandContainer('М33 «Занони Шарк», ш. Панчакент, к. Рудакй-85 (8-3475) 54-329; 92-809-29-28 notima@mail.ru'),
              const SizedBox(height: 20),
              _khujandContainer('М33 «Маркази дастгирии чамоати Ворух», ш. Исфара, чамоати Ворух, к. Рудакй-123А 989-10-72-44; golibu@mail.ru'),
              const SizedBox(height: 20),
              _khujandContainer('М33 «Занон барои адолат», ш. Хучанд, к. Кирмоншо-1 93-836-45-45; farosat_kiba@bk.ru'),
              const SizedBox(height: 20),
              _khujandContainer('М33 «Умед», ш. Исфара, к. Марказй-22 (47) 44-10-140; 927-70-04-06 umed_i@mail.ru'),
              const SizedBox(height: 20),
              _khujandContainer('М33 «Занхо зидди зуроварй», н. Истаравшан, к. И. Сомонй-186 988-65-31-65; 918-80-35-54; nasrulloevb@yahoo.com; sheroz-com@mail.ru'),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}