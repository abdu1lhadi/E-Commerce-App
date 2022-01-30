import 'package:flutter/material.dart';
import './models/category.dart';
import 'models/product.dart';

const Categories_data = const [
  Category(
    id: 'c1',
    title: 'الكيك',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625522084_LXtadE.jpeg',
  ),
  Category(
    id: 'c2',
    title: 'كيك صغير',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625336744_2iro7s.png',
  ),
  Category(
    id: 'c3',
    title: 'ترايفل',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1633695848_xEmNz9.jpeg',
  ),
  Category(
    id: 'c4',
    title: 'ميني',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/691543_1625316110_93d256f0-f31e-44fd-b9e1-ccec00a4d87a.jpg',
  ),
  Category(
    id: 'c5',
    title: 'ميلفيه',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625332226_SjC0Ga.jpeg',
  ),
  Category(
    id: 'c6',
    title: 'تشيز كيك',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625338804_K3SR0E.jpeg',
  ),
  Category(
    id: 'c7',
    title: 'اكلير & تارت',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625523097_SmjsBf.jpeg',
  ),
  Category(
    id: 'c6',
    title: 'جار',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625608900_q7CuF6.jpeg',
  ),
  Category(
    id: 'c6',
    title: 'بايكري',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/691543_1623884817_93b103c5-51a7-4198-ac63-128afc1417e7.jpeg',
  ),
];

const Products_data = const [
  Product(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'فيريرو شوكلت توليب',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625468851_InBFOm.jpeg',
    price: 180,
    subDescribe: '8 - 10 اشخاص',
    describe:
        'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
    isInSummer: false,
    isForFamilies: true,
    isInWinter: true,
  ),
  Product(
    id: 'm2',
    categories: [
      'c1',
    ],
    title: 'كيكة الفستق بالرمان',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625522084_LXtadE.jpeg',
    price: 170,
    subDescribe: '8 - 10 أشخاص',
    describe:
        'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Product(
    id: 'm3',
    categories: [
      'c1',
    ],
    title: 'كيكة فيريرو روشية',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625469208_sbBxMO.jpeg',
    price: 165,
    subDescribe: '8 - 10 أشخاص',
    describe:
        'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
    isInSummer: false,
    isForFamilies: false,
    isInWinter: true,
  ),
  Product(
    id: 'm4',
    categories: [
      'c1',
    ],
    title: 'كيك البيناكولادا',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625469784_VrwVaA.jpeg',
    price: 155,
    subDescribe: '8 - 10 أشخاص',
    describe:
        'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
    isInSummer: false,
    isForFamilies: false,
    isInWinter: false,
  ),
  Product(
    id: 'm5',
    categories: [
      'c2',
    ],
    title: 'كيكة العسل',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625519205_TsuSgR.jpeg',
    price: 25,
    subDescribe: 'تكفي شخص واحد',
    describe:
        'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
  ),
  Product(
    id: 'm6',
    categories: [
      'c2',
    ],
    title: 'كيكة الفشار مع الكراميل المملح',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625336744_2iro7s.png',
    price: 25,
    subDescribe: 'تكفي شخص واحد',
    describe:
        'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Product(
    id: 'm7',
    categories: [
      'c3',
    ],
    title: 'مانغو ترايفل',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625348428_q3sxn3.jpeg',
    price: 22,
    subDescribe: 'تكفي شخص واحد',
    describe:
        'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Product(
    id: 'm8',
    categories: [
      'c3',
    ],
    title: 'كنافة ترايفل مع كريم بروليه',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1633695848_xEmNz9.jpeg',
    price: 165,
    subDescribe: '',
    describe:
        'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
    isInSummer: true,
    isForFamilies: false,
    isInWinter: true,
  ),
  Product(
    id: 'm9',
    categories: [
      'c3',
    ],
    title: 'مانجو ترايفل',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625348122_Gofr5R.jpeg',
    price: 130,
    subDescribe: '6 - 8 أشخاص',
    describe:
        'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
    isInSummer: true,
    isForFamilies: false,
    isInWinter: false,
  ),
  Product(
    id: 'm10',
    categories: [
      'c4',
    ],
    title: 'ميني بوكس - اكلير وتارت',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/691543_1625316110_93d256f0-f31e-44fd-b9e1-ccec00a4d87a.jpg',
    price: 100,
    subDescribe: '',
    describe:
        'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Product(
    id: 'm11',
    categories: [
      'c5',
    ],
    title: 'ميلفيه فواكه - 8 سم',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625520849_SwQ8Z9.jpeg',
    price: 25,
    subDescribe: 'تكفي شخص واحد',
    describe:
        'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Product(
    id: 'm12',
    categories: [
      'c5',
    ],
    title: 'ميلفيه فواكه - ١٧ سم',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625332226_SjC0Ga.jpeg',
    price: 130,
    subDescribe: '4 - 5 أشخاص',
    describe:
        'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Product(
    id: 'm13',
    categories: [
      'c5',
    ],
    title: 'ميلفيه فواكه - ٢٠ سم',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625521749_bzrRl3.jpeg',
    price: 175,
    subDescribe: '5 - 6 أشخاص',
    describe:
        'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Product(
    id: 'm14',
    categories: [
      'c5',
    ],
    title: 'ميلفيه فواكه -٣٠ سم',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625521367_mbR68P.jpeg',
    price: 220,
    subDescribe: '8 - 10 أشخاص',
    describe:
        'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Product(
    id: 'm15',
    categories: [
      'c6',
    ],
    title: 'تشيز كيك فانيلا',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625338804_K3SR0E.jpeg',
    price: 180,
    subDescribe: '8 - 10 أشخاص',
    describe:
        'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Product(
    id: 'm16',
    categories: [
      'c7',
    ],
    title: 'اكلير التوت الأحمر',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/1625523097_SmjsBf.jpeg',
    price: 14,
    subDescribe: 'تكفي شخص واحد',
    describe:
        'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
  Product(
    id: 'm17',
    categories: [
      'c7',
    ],
    title: 'تارت التوت',
    imageUrl:
        'https://taker-images.s3.us-east-2.amazonaws.com/mousseline/691543_1624366253_93bc3959-d5f1-40ef-9d3e-a92bddbfa171.jpeg',
    price: 20,
    subDescribe: 'تكفي شخص واحد',
    describe:
        'أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.يسكينج أليايت سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا.لوريم ايبسوم دولار ات دولار ماجنا أليكيوا.',
    isInSummer: true,
    isForFamilies: true,
    isInWinter: true,
  ),
];
