import 'package:flutter/material.dart';

import 'features/home/presentation/views/data/model/location_model.dart';

const kApiKey = 'AIzaSyDSGAV3b6UuBJMLiR-eD7BtGMUdFstnXlU';
const Color primaryColor = Color(0xff7d5748);

List<LocationModel> locations = [
  LocationModel(
    name: 'البتراء',
    description:
        'مدينة أثرية منحوتة في الصخر، تعتبر من عجائب الدنيا السبع الجديدة. كانت عاصمة للأنباط وتُعرف باسم "المدينة الوردية" نظراً للون صخورها المميز. تقع في جنوب الأردن وتعتبر من أبرز المواقع السياحية في العالم.',
    horizontalImageUrl:
        'https://images.pexels.com/photos/3846629/pexels-photo-3846629.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    verticallImageUrl:
        'https://images.pexels.com/photos/16013064/pexels-photo-16013064/free-photo-of-al-khazneh-temple-in-petra-jordan.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
    googleMapsUrl:
        'https://www.google.com/maps/place/%D8%A7%D9%84%D8%A8%D8%AA%D8%B1%D8%A7%E2%80%AD/@30.3483645,35.4645377,14z/data=!4m10!1m2!2m1!1spetra+location!3m6!1s0x15016ef1703b6071:0x199bf908679a2291!8m2!3d30.3284544!4d35.4443622!15sCg5wZXRyYSBsb2NhdGlvbloHIgVwZXRyYZIBDWhpc3RvcmljX3NpdGXgAQA!16zL20vMGM3enk?entry=ttu&g_ep=EgoyMDI0MTAwOS4wIKXMDSoASAFQAw%3D%3D', // Petra location
  ),
  LocationModel(
    name: 'البحر الميت',
    description:
        'أخفض نقطة على سطح الأرض، ويتميز بمياهه المالحة الغنية بالمعادن، التي تجعل السباحة فيها تجربة فريدة من نوعها. يُعتقد أن المنطقة كانت جزءاً من مدينة سدوم التوراتية.',
    horizontalImageUrl:
        'https://images.squarespace-cdn.com/content/v1/64ba44348b6a05559a816bc1/1690282690876-2SQTGOPITAZ68KYJAY1X/Jordan+Dead+Sea+on+a+Budget-02.jpg?format=1500w',
    verticallImageUrl:
        'https://deadsea.com/wp-content/uploads/2020/09/What-is-so-special-about-the-Dead-Sea.jpg',
    googleMapsUrl:
        'https://www.google.com/maps?sca_esv=ea24db7bb2713165&output=search&q=dead+sea+location&source=lnms&fbs=AEQNm0CPNCHHCUfAJzPSQtEdN8cF7a7ddRP-1p8nDxKa7bidrUBsBR07fi-V82lAJvh34HddnRv3HfgdOs0Qz4d8tph6axAPUBeaqD2QEUSluMfVfhYzUyx1WCArI_xTSifeldd0dQzuJtersvrO6-zXI7ipQ-N0T_15Q1YG7GFfsBi3cFfdkatZeEbIcjKKHUyeOnjCXvI_YNm04gpIjCr7L5vvHfk5zx_5RRPVzpyq-N7ZuLdR38Q&entry=mc&ved=1t:200715&ictx=111', // Dead Sea location
  ),
  LocationModel(
    name: 'قلعة عجلون',
    description:
        'قلعة عجلون هي قلعة إسلامية من القرون الوسطى تقع في شمال غرب الأردن. إنها واحدة من أهم المعالم التاريخية في البلاد وتطل على وادي الأردن.',
    horizontalImageUrl:
        'https://media.istockphoto.com/id/464777909/photo/the-castle-of-ajloun.jpg?s=612x612&w=0&k=20&c=5SomH0OXebuoCZfmrTcyj4TbL3doikvrKI9IcoZAGn4=',
    verticallImageUrl:
        'https://i.pinimg.com/564x/0e/27/17/0e2717430911217eedf3c24533bec53f.jpg',
    googleMapsUrl:
        'https://www.google.com/maps/place/%D9%82%D9%84%D8%B9%D8%A9+%D8%B9%D8%AC%D9%84%D9%88%D9%86%E2%80%AD/@32.3252097,35.7296386,17z/data=!3m1!4b1!4m6!3m5!1s0x151c8888296393d7:0xad15bd4bdbfa4a2c!8m2!3d32.3252097!4d35.7274499!16zL20vMDhrZDN6?entry=ttu&g_ep=EgoyMDI0MTAxNS4wIKXMDSoASAFQAw%3D%3D',
  ),
  LocationModel(
    name: 'آثار جرش',
    description:
        'مدينة أثرية تضم أطلالاً رومانية محفوظة بشكل جيد. تعتبر واحدة من أكبر المدن الرومانية القديمة، وتحتوي على المسرح الجنوبي، الساحة البيضاوية، وأعمدة كورنثية رائعة.',
    horizontalImageUrl:
        'https://images.pexels.com/photos/18682588/pexels-photo-18682588/free-photo-of-ancient-colonnade-in-jerash.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    verticallImageUrl:
        'https://images.pexels.com/photos/18717586/pexels-photo-18717586/free-photo-of-ruins-of-temple-of-artemis-in-amman.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    googleMapsUrl:
        'https://www.google.com/maps/place/%D9%82%D9%88%D8%B3+%D9%87%D8%A7%D8%AF%D8%B1%D9%8A%D8%A7%D9%86%E2%80%AD/@32.2702999,35.8927581,16.5z/data=!4m15!1m8!3m7!1s0x151c802ff49ac08d:0x876c24b1cbded302!2z2KzYsdi0!3b1!8m2!3d32.2746515!4d35.8960765!16zL20vMDE5NTlk!3m5!1s0x151c804ad2222611:0x7c8005dfd13bdb5d!8m2!3d32.2722549!4d35.8914032!16s%2Fm%2F0_1ldh3?entry=ttu&g_ep=EgoyMDI0MTAwOS4wIKXMDSoASAFQAw%3D%3D', // Jerash location
  ),
  LocationModel(
    name: 'وادي رم',
    description:
        'وادي رم، المعروف بوادي القمر، هو صحراء تقع في جنوب الأردن تتميز بجمالها الطبيعي وتضاريسها الخلابة. يُعرف الوادي برماله الحمراء وجباله الشاهقة، وقد كان موقعاً لتصوير العديد من الأفلام الشهيرة.',
    horizontalImageUrl:
        'https://images.pexels.com/photos/17472762/pexels-photo-17472762/free-photo-of-camels-caravan-on-desert-at-sunset.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    verticallImageUrl:
        'https://images.pexels.com/photos/20586106/pexels-photo-20586106/free-photo-of-stars-in-night-sky-over-desert.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    googleMapsUrl:
        'https://www.google.com/maps/place/%D9%88%D8%A7%D8%AF%D9%8A+%D8%B1%D9%85%E2%80%AD/@29.5671121,35.434551,14z/data=!4m10!1m2!2m1!1swadi+rum+location!3m6!1s0x150093a5d3b537b3:0xe9885592958b5d07!8m2!3d29.555872!4d35.4076008!15sChF3YWRpIHJ1bSBsb2NhdGlvbloKIgh3YWRpIHJ1bZIBD25hdHVyZV9wcmVzZXJ2ZeABAA!16zL20vMDU3N3F4?entry=ttu&g_ep=EgoyMDI0MTAwOS4wIKXMDSoASAFQAw%3D%3D', // Wadi Rum location
  ),
];
