import 'package:flutter/material.dart';

import 'features/home/presentation/views/data/model/location_model.dart';
import 'generated/l10n.dart';

const Color primaryColor = Color(0xff7d5748);

List<LocationModel> getLocations(BuildContext context) => [
      LocationModel(
        locationID: "123gew",
        name: S.of(context).location_petra_name,
        cityName: S.of(context).location_petra_city,
        description: S.of(context).location_petra_description,
        horizontalImageUrl:
            'https://images.pexels.com/photos/3846629/pexels-photo-3846629.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        verticallImageUrl:
            'https://images.pexels.com/photos/16013064/pexels-photo-16013064/free-photo-of-al-khazneh-temple-in-petra-jordan.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
        googleMapsUrl: 'https://maps.app.goo.gl/b2DFVPeAowuY12Pv5',
      ),
      LocationModel(
        locationID: "rwr123",
        name: S.of(context).location_deadSea_name,
        cityName: S.of(context).location_deadSea_city,
        description: S.of(context).location_deadSea_description,
        horizontalImageUrl:
            'https://images.squarespace-cdn.com/content/v1/64ba44348b6a05559a816bc1/1690282690876-2SQTGOPITAZ68KYJAY1X/Jordan+Dead+Sea+on+a+Budget-02.jpg?format=1500w',
        verticallImageUrl:
            'https://deadsea.com/wp-content/uploads/2020/09/What-is-so-special-about-the-Dead-Sea.jpg',
        googleMapsUrl:
            'https://www.google.com/maps?sca_esv=ea24db7bb2713165&output=search&q=dead+sea+location&source=lnms&fbs=AEQNm0CPNCHHCUfAJzPSQtEdN8cF7a7ddRP-1p8nDxKa7bidrUBsBR07fi-V82lAJvh34HddnRv3HfgdOs0Qz4d8tph6axAPUBeaqD2QEUSluMfVfhYzUyx1WCArI_xTSifeldd0dQzuJtersvrO6-zXI7ipQ-N0T_15Q1YG7GFfsBi3cFfdkatZeEbIcjKKHUyeOnjCXvI_YNm04gpIjCr7L5vvHfk5zx_5RRPVzpyq-N7ZuLdR38Q&entry=mc&ved=1t:200715&ictx=111', // Dead Sea location
      ),
      LocationModel(
        locationID: "asf223",
        name: S.of(context).location_ajloun_name,
        cityName: S.of(context).location_ajloun_city,
        description: S.of(context).location_ajloun_description,
        horizontalImageUrl:
            'https://t4.ftcdn.net/jpg/03/09/38/57/240_F_309385738_TU5AUEpDrEZtElRJHkfr214FokTh7U2R.jpg',
        verticallImageUrl:
            'https://i.pinimg.com/564x/0e/27/17/0e2717430911217eedf3c24533bec53f.jpg',
        googleMapsUrl:
            'https://www.google.com/maps/place/%D9%82%D9%84%D8%B9%D8%A9+%D8%B9%D8%AC%D9%84%D9%88%D9%86%E2%80%AD/@32.3252097,35.7296386,17z/data=!3m1!4b1!4m6!3m5!1s0x151c8888296393d7:0xad15bd4bdbfa4a2c!8m2!3d32.3252097!4d35.7274499!16zL20vMDhrZDN6?entry=ttu&g_ep=EgoyMDI0MTAxNS4wIKXMDSoASAFQAw%3D%3D',
      ),
      LocationModel(
        locationID: "ast223",
        name: S.of(context).location_jerash_name,
        cityName: S.of(context).location_jerash_city,
        description: S.of(context).location_jerash_description,
        horizontalImageUrl:
            'https://images.pexels.com/photos/18682588/pexels-photo-18682588/free-photo-of-ancient-colonnade-in-jerash.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        verticallImageUrl:
            'https://images.pexels.com/photos/18717586/pexels-photo-18717586/free-photo-of-ruins-of-temple-of-artemis-in-amman.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        googleMapsUrl:
            'https://www.google.com/maps/place/%D9%82%D9%88%D8%B3+%D9%87%D8%A7%D8%AF%D8%B1%D9%8A%D8%A7%D9%86%E2%80%AD/@32.2702999,35.8927581,16.5z/data=!4m15!1m8!3m7!1s0x151c802ff49ac08d:0x876c24b1cbded302!2z2KzYsdi0!3b1!8m2!3d32.2746515!4d35.8960765!16zL20vMDE5NTlk!3m5!1s0x151c804ad2222611:0x7c8005dfd13bdb5d!8m2!3d32.2722549!4d35.8914032!16s%2Fm%2F0_1ldh3?entry=ttu&g_ep=EgoyMDI0MTAwOS4wIKXMDSoASAFQAw%3D%3D', // Jerash location
      ),
      LocationModel(
        locationID: "asdf12",
        name: S.of(context).location_wadiRum_name,
        cityName: S.of(context).location_wadiRum_city,
        description: S.of(context).location_wadiRum_description,
        horizontalImageUrl:
            'https://images.pexels.com/photos/17472762/pexels-photo-17472762/free-photo-of-camels-caravan-on-desert-at-sunset.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        verticallImageUrl:
            'https://images.pexels.com/photos/20586106/pexels-photo-20586106/free-photo-of-stars-in-night-sky-over-desert.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        googleMapsUrl:
            'https://www.google.com/maps/place/%D9%88%D8%A7%D8%AF%D9%8A+%D8%B1%D9%85%E2%80%AD/@29.5671121,35.434551,14z/data=!4m10!1m2!2m1!1swadi+rum+location!3m6!1s0x150093a5d3b537b3:0xe9885592958b5d07!8m2!3d29.555872!4d35.4076008!15sChF3YWRpIHJ1bSBsb2NhdGlvbloKIgh3YWRpIHJ1bZIBD25hdHVyZV9wcmVzZXJ2ZeABAA!16zL20vMDU3N3F4?entry=ttu&g_ep=EgoyMDI0MTAwOS4wIKXMDSoASAFQAw%3D%3D', // Wadi Rum location
      ),

      // — Additional Jordanian destinations added on May 7, 2025 —
      LocationModel(
        locationID: "loc_amman",
        name: S.of(context).location_amman_name,
        cityName: S.of(context).location_amman_city,
        description: S.of(context).location_amman_description,
        horizontalImageUrl:
            'https://images.pexels.com/photos/18717582/pexels-photo-18717582.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        verticallImageUrl:
            'https://images.pexels.com/photos/18717582/pexels-photo-18717582.jpeg?auto=compress&cs=tinysrgb&w=600&h=900&dpr=1',
        googleMapsUrl: 'https://www.google.com/maps/place/Amman,+Jordan',
      ), // Amman is Jordan’s capital and most populous city, blending ancient ruins—like the Neolithic ‘Ain Ghazal site—with modern culture :contentReference[oaicite:0]{index=0}. The Amman Citadel and large Roman Theater attest to over 7,000 years of continuous habitation :contentReference[oaicite:1]{index=1}.

      LocationModel(
        locationID: "loc_aqaba",
        name: S.of(context).location_aqaba_name,
        cityName: S.of(context).location_aqaba_city,
        description: S.of(context).location_aqaba_description,
        horizontalImageUrl:
            'https://images.pexels.com/photos/17198743/pexels-photo-17198743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        verticallImageUrl:
            'https://images.pexels.com/photos/17198743/pexels-photo-17198743.jpeg?auto=compress&cs=tinysrgb&w=600&h=900&dpr=1',
        googleMapsUrl: 'https://www.google.com/maps/place/Aqaba,+Jordan',
      ), // Aqaba on the Red Sea offers beach resorts, world‑class snorkeling over coral reefs, plus medieval Ayla ruins :contentReference[oaicite:2]{index=2}. It’s also developing into a regional nightlife hub with major new tourism investments :contentReference[oaicite:3]{index=3}.

      LocationModel(
        locationID: "loc_madaba",
        name: S.of(context).location_madaba_name,
        cityName: S.of(context).location_madaba_city,
        description: S.of(context).location_madaba_description,
        horizontalImageUrl:
            'https://images.pexels.com/photos/20859048/pexels-photo-20859048.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        verticallImageUrl:
            'https://images.pexels.com/photos/20859048/pexels-photo-20859048.jpeg?auto=compress&cs=tinysrgb&w=600&h=900&dpr=1',
        googleMapsUrl: 'https://www.google.com/maps/place/Madaba,+Jordan',
      ), // Madaba is famed as the “City of Mosaics,” home to the 6th‑century Madaba Map—the oldest cartographic depiction of the Holy Land :contentReference[oaicite:4]{index=4}. The nearby Mount Nebo viewpoint lets visitors see across to the Dead Sea and Palestine :contentReference[oaicite:5]{index=5}.

      LocationModel(
        locationID: "loc_mount_nebo",
        name: S.of(context).location_mountNebo_name,
        cityName: S.of(context).location_mountNebo_city,
        description: S.of(context).location_mountNebo_description,
        horizontalImageUrl:
            'https://images.pexels.com/photos/316528/pexels-photo-316528.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        verticallImageUrl:
            'https://images.pexels.com/photos/316528/pexels-photo-316528.jpeg?auto=compress&cs=tinysrgb&w=600&h=900&dpr=1',
        googleMapsUrl: 'https://www.google.com/maps/place/Mount+Nebo,+Jordan',
      ), // Mount Nebo is the biblical site where Moses viewed the Promised Land before his death :contentReference[oaicite:6]{index=6}. Today it features a memorial church and panoramic overlooks of the Jordan Valley and Dead Sea :contentReference[oaicite:7]{index=7}.

      LocationModel(
        locationID: "loc_dana_biosphere",
        name: S.of(context).location_danaBiosphere_name,
        cityName: S.of(context).location_danaBiosphere_city,
        description: S.of(context).location_danaBiosphere_description,
        horizontalImageUrl:
            'https://images.pexels.com/photos/459225/pexels-photo-459225.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        verticallImageUrl:
            'https://images.pexels.com/photos/459225/pexels-photo-459225.jpeg?auto=compress&cs=tinysrgb&w=600&h=900&dpr=1',
        googleMapsUrl:
            'https://www.google.com/maps/place/Dana+Biosphere+Reserve,+Jordan',
      ), // The Dana Biosphere Reserve spans rugged highlands to desert, protecting over 800 plant species and offering hiking through dramatic canyons :contentReference[oaicite:8]{index=8}. It’s Jordan’s largest nature reserve, famed for birdwatching and Bedouin‑run ecolodges :contentReference[oaicite:9]{index=9}.

      LocationModel(
        locationID: "loc_umm_qais",
        name: S.of(context).location_ummQais_name,
        cityName: S.of(context).location_ummQais_city,
        description: S.of(context).location_ummQais_description,
        horizontalImageUrl:
            'https://images.pexels.com/photos/14698425/pexels-photo-14698425.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        verticallImageUrl:
            'https://images.pexels.com/photos/14698425/pexels-photo-14698425.jpeg?auto=compress&cs=tinysrgb&w=600&h=900&dpr=1',
        googleMapsUrl: 'https://www.google.com/maps/place/Umm+Qais,+Jordan',
      ), // Umm Qais (ancient Gadara) overlooks the Sea of Galilee and is famed for its Hellenistic‑Roman ruins, including a theater and colonnaded streets :contentReference[oaicite:10]{index=10}. It’s often called the “Black Gem of the Desert” for its basalt architecture :contentReference[oaicite:11]{index=11}.

      LocationModel(
        locationID: "loc_karak_castle",
        name: S.of(context).location_karakCastle_name,
        cityName: S.of(context).location_karakCastle_city,
        description: S.of(context).location_karakCastle_description,
        horizontalImageUrl:
            'https://images.pexels.com/photos/460947/pexels-photo-460947.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        verticallImageUrl:
            'https://images.pexels.com/photos/460947/pexels-photo-460947.jpeg?auto=compress&cs=tinysrgb&w=600&h=900&dpr=1',
        googleMapsUrl: 'https://www.google.com/maps/place/Karak+Castle,+Jordan',
      ), // Al‑Karak Castle is a Crusader fortress commanding views of the Dead Sea corridor, built in the 12th century and pivotal in regional medieval history :contentReference[oaicite:12]{index=12}. Its massive walls and towers remain among Jordan’s best‑preserved Crusader ruins .

      LocationModel(
        locationID: "loc_shobak_castle",
        name: S.of(context).location_shobakCastle_name,
        cityName: S.of(context).location_shobakCastle_city,
        description: S.of(context).location_shobakCastle_description,
        horizontalImageUrl:
            'https://images.pexels.com/photos/691668/pexels-photo-691668.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        verticallImageUrl:
            'https://images.pexels.com/photos/691668/pexels-photo-691668.jpeg?auto=compress&cs=tinysrgb&w=600&h=900&dpr=1',
        googleMapsUrl:
            'https://www.google.com/maps/place/Shobak+Castle,+Jordan',
      ), // Shobak Castle (Crac de Montréal) was the first Crusader castle built in Transjordan (1115 AD), perched atop a hill with sweeping desert views :contentReference[oaicite:14]{index=14}. Its ruined chapel and bailey reflect Ayyubid and Crusader military architecture :contentReference[oaicite:15]{index=15}.

      LocationModel(
        locationID: "loc_wadi_mujib",
        name: S.of(context).location_wadiMujib_name,
        cityName: S.of(context).location_wadiMujib_city,
        description: S.of(context).location_wadiMujib_description,
        horizontalImageUrl:
            'https://images.pexels.com/photos/461428/pexels-photo-461428.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        verticallImageUrl:
            'https://images.pexels.com/photos/461428/pexels-photo-461428.jpeg?auto=compress&cs=tinysrgb&w=600&h=900&dpr=1',
        googleMapsUrl: 'https://www.google.com/maps/place/Wadi+Mujib,+Jordan',
      ), // Wadi Mujib is a dramatic river gorge dropping 900 m to the Dead Sea, known for its adventurous Siq Trail canyon hike through waterfalls and pools :contentReference[oaicite:16]{index=16}. It’s also a nature reserve for rare plants and Nubian ibex :contentReference[oaicite:17]{index=17}.

      LocationModel(
        locationID: "jordanMuseum13",
        name: S.of(context).location_jordanMuseum_name,
        cityName: S.of(context).location_jordanMuseum_city,
        description: S.of(context).location_jordanMuseum_description,
        horizontalImageUrl:
            'https://universes.art/fileadmin/_migrated/gridelement_uploads/00-Jordan-Museum-2000-750.jpg',
        verticallImageUrl:
            'https://jordan-travel.com/wp-content/uploads/2021/01/collection-of-mosaics-at-Jordan-Folklore-Museum-1.jpg.webp',
        googleMapsUrl: 'https://maps.app.goo.gl/KjEPUbUHqR8zJXtr5',
      ),
      // قصر الحرانه , id : 1
      LocationModel(
        locationID: "qasrKharana03",
        name: S.of(context).location_qasrKharana_name,
        description: S.of(context).location_qasrKharana_description,
        cityName: S.of(context).location_qasrKharana_city,
        horizontalImageUrl:
            'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Qasr_Kharana_in_Jordan.jpg/1200px-Qasr_Kharana_in_Jordan.jpg',
        verticallImageUrl:
            'https://explore.rehlat.ae/static/media/searchdestination/thingstodo/images/amman/qasr_al-kharrana/large_Qasr_Kharana_in_Jordan.webp',
        googleMapsUrl:
            'https://www.google.com/maps/place/Qasr+Kharana/@31.7275,36.4625,17z',
      ),
    ];

// List<LocationModel> locations = [
//   LocationModel(
//     name: 'البتراء',
//     description:
//         'مدينة أثرية منحوتة في الصخر، تعتبر من عجائب الدنيا السبع الجديدة. كانت عاصمة للأنباط وتُعرف باسم "المدينة الوردية" نظراً للون صخورها المميز. تقع في جنوب الأردن وتعتبر من أبرز المواقع السياحية في العالم.',
//     horizontalImageUrl:
//         'https://images.pexels.com/photos/3846629/pexels-photo-3846629.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
//     verticallImageUrl:
//         'https://images.pexels.com/photos/16013064/pexels-photo-16013064/free-photo-of-al-khazneh-temple-in-petra-jordan.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
//     googleMapsUrl:
//         'https://www.google.com/maps/place/%D8%A7%D9%84%D8%A8%D8%AA%D8%B1%D8%A7%E2%80%AD/@30.3483645,35.4645377,14z/data=!4m10!1m2!2m1!1spetra+location!3m6!1s0x15016ef1703b6071:0x199bf908679a2291!8m2!3d30.3284544!4d35.4443622!15sCg5wZXRyYSBsb2NhdGlvbloHIgVwZXRyYZIBDWhpc3RvcmljX3NpdGXgAQA!16zL20vMGM3enk?entry=ttu&g_ep=EgoyMDI0MTAwOS4wIKXMDSoASAFQAw%3D%3D', // Petra location
//   ),
//   LocationModel(
//     name: 'البحر الميت',
//     description:
//         'أخفض نقطة على سطح الأرض، ويتميز بمياهه المالحة الغنية بالمعادن، التي تجعل السباحة فيها تجربة فريدة من نوعها. يُعتقد أن المنطقة كانت جزءاً من مدينة سدوم التوراتية.',
//     horizontalImageUrl:
//         'https://images.squarespace-cdn.com/content/v1/64ba44348b6a05559a816bc1/1690282690876-2SQTGOPITAZ68KYJAY1X/Jordan+Dead+Sea+on+a+Budget-02.jpg?format=1500w',
//     verticallImageUrl:
//         'https://deadsea.com/wp-content/uploads/2020/09/What-is-so-special-about-the-Dead-Sea.jpg',
//     googleMapsUrl:
//         'https://www.google.com/maps?sca_esv=ea24db7bb2713165&output=search&q=dead+sea+location&source=lnms&fbs=AEQNm0CPNCHHCUfAJzPSQtEdN8cF7a7ddRP-1p8nDxKa7bidrUBsBR07fi-V82lAJvh34HddnRv3HfgdOs0Qz4d8tph6axAPUBeaqD2QEUSluMfVfhYzUyx1WCArI_xTSifeldd0dQzuJtersvrO6-zXI7ipQ-N0T_15Q1YG7GFfsBi3cFfdkatZeEbIcjKKHUyeOnjCXvI_YNm04gpIjCr7L5vvHfk5zx_5RRPVzpyq-N7ZuLdR38Q&entry=mc&ved=1t:200715&ictx=111', // Dead Sea location
//   ),
//   LocationModel(
//     name: 'قلعة عجلون',
//     description:
//         'قلعة عجلون هي قلعة إسلامية من القرون الوسطى تقع في شمال غرب الأردن. إنها واحدة من أهم المعالم التاريخية في البلاد وتطل على وادي الأردن.',
//     horizontalImageUrl:
//         'https://t4.ftcdn.net/jpg/03/09/38/57/240_F_309385738_TU5AUEpDrEZtElRJHkfr214FokTh7U2R.jpg',
//     verticallImageUrl:
//         'https://i.pinimg.com/564x/0e/27/17/0e2717430911217eedf3c24533bec53f.jpg',
//     googleMapsUrl:
//         'https://www.google.com/maps/place/%D9%82%D9%84%D8%B9%D8%A9+%D8%B9%D8%AC%D9%84%D9%88%D9%86%E2%80%AD/@32.3252097,35.7296386,17z/data=!3m1!4b1!4m6!3m5!1s0x151c8888296393d7:0xad15bd4bdbfa4a2c!8m2!3d32.3252097!4d35.7274499!16zL20vMDhrZDN6?entry=ttu&g_ep=EgoyMDI0MTAxNS4wIKXMDSoASAFQAw%3D%3D',
//   ),
//   LocationModel(
//     name: 'آثار جرش',
//     description:
//         'مدينة أثرية تضم أطلالاً رومانية محفوظة بشكل جيد. تعتبر واحدة من أكبر المدن الرومانية القديمة، وتحتوي على المسرح الجنوبي، الساحة البيضاوية، وأعمدة كورنثية رائعة.',
//     horizontalImageUrl:
//         'https://images.pexels.com/photos/18682588/pexels-photo-18682588/free-photo-of-ancient-colonnade-in-jerash.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
//     verticallImageUrl:
//         'https://images.pexels.com/photos/18717586/pexels-photo-18717586/free-photo-of-ruins-of-temple-of-artemis-in-amman.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
//     googleMapsUrl:
//         'https://www.google.com/maps/place/%D9%82%D9%88%D8%B3+%D9%87%D8%A7%D8%AF%D8%B1%D9%8A%D8%A7%D9%86%E2%80%AD/@32.2702999,35.8927581,16.5z/data=!4m15!1m8!3m7!1s0x151c802ff49ac08d:0x876c24b1cbded302!2z2KzYsdi0!3b1!8m2!3d32.2746515!4d35.8960765!16zL20vMDE5NTlk!3m5!1s0x151c804ad2222611:0x7c8005dfd13bdb5d!8m2!3d32.2722549!4d35.8914032!16s%2Fm%2F0_1ldh3?entry=ttu&g_ep=EgoyMDI0MTAwOS4wIKXMDSoASAFQAw%3D%3D', // Jerash location
//   ),
//   LocationModel(
//     name: 'وادي رم',
//     description:
//         'وادي رم، المعروف بوادي القمر، هو صحراء تقع في جنوب الأردن تتميز بجمالها الطبيعي وتضاريسها الخلابة. يُعرف الوادي برماله الحمراء وجباله الشاهقة، وقد كان موقعاً لتصوير العديد من الأفلام الشهيرة.',
//     horizontalImageUrl:
//         'https://images.pexels.com/photos/17472762/pexels-photo-17472762/free-photo-of-camels-caravan-on-desert-at-sunset.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
//     verticallImageUrl:
//         'https://images.pexels.com/photos/20586106/pexels-photo-20586106/free-photo-of-stars-in-night-sky-over-desert.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
//     googleMapsUrl:
//         'https://www.google.com/maps/place/%D9%88%D8%A7%D8%AF%D9%8A+%D8%B1%D9%85%E2%80%AD/@29.5671121,35.434551,14z/data=!4m10!1m2!2m1!1swadi+rum+location!3m6!1s0x150093a5d3b537b3:0xe9885592958b5d07!8m2!3d29.555872!4d35.4076008!15sChF3YWRpIHJ1bSBsb2NhdGlvbloKIgh3YWRpIHJ1bZIBD25hdHVyZV9wcmVzZXJ2ZeABAA!16zL20vMDU3N3F4?entry=ttu&g_ep=EgoyMDI0MTAwOS4wIKXMDSoASAFQAw%3D%3D', // Wadi Rum location
//   ),
// ];
