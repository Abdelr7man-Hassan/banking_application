import 'package:flutter/material.dart';

class fontsSize {
  static double smallfont = 15, madiamfont = 35, bigfont = 55;
}

class colors {
  static Color BackgroundColor = Color(0xFFFFFFFF);
  static Color TextColor = Color(0xFF4A6572);
  static Color ButtonsColor = Color(0xFFF9AA33);
  static Color AppBarColor = Color(0xFF232F34);
  static Color BoldText = Color(0xFF344955);
  static void ColorMood(int choice) {
    if (choice == 1) {
      BackgroundColor = Color(0xFF121212);
      TextColor = Color(0xFFFFFFFF);
      ButtonsColor = Color(0xFFBB86FC);
      AppBarColor = Color(0xFF1F1B24);
      BoldText = Color(0xFF03DAC5);
    } else if (choice == 2) {
      BackgroundColor = Color(0xFFFFFFFF);
      TextColor = Color(0xFF4A6572);
      ButtonsColor = Color(0xFFF9AA33);
      AppBarColor = Color(0xFF232F34);
      BoldText = Color(0xFF344955);
    }
  }
}

class Language {
  static TextDirection direction = TextDirection.ltr;
  static var Lang = [
    'Welcome',
    'Email Address*',
    'Enter your email',
    'Password*',
    'Enter your Password',
    'Sign In',
    'Sign up',
    ////////////////6/////////////////
    'New Account',
    'First Name',
    'Enter your First Name',
    'Last Name',
    'Enter your last name',
    'Email Address*',
    'Enter your email',
    'Phone Number*',
    'Enter your phone Number',
    'Password* ',
    'Enter your Password',
    'Confirm Password*',
    'Enter password',
    'Sign Up',
    /////////////////20////////////////////////
    'Home page',
    'Profile',
    'Nearest Bank',
    'Currency Converter',
    'Services',
    'Language',
    'العربية',
    'Englash',
    'Color Mode',
    'Dark',
    'Light',
    'Log Out',
    //////////////32////////////////////
    'Profile',
    'From',
    'To',
    'Account',
    'Location',
    'Cairo-Egypt',
    'Phone',
    //////////////39//////////////////////
    'Nearest Bank',
    'Currency Converter',
    //////////////41//////////Service/////////////
    'Services',
    'Transfer Money',
    'Transfer',
    'Transfer fees are 1LE will be deducted from the remaining balance from your Vodafone Cash wallet.',
    'Withdraw',
    'Withdrawal amounts between 5 LE and 150 LE are subject to 3LE cash out fees. Amounts above 150 LE are subject to 2% cash out fees.',
    'Money Transfer Amount limet',
    'Customers can transfer money with minimum amount of 5LE and maximum of 30,000LE',
    ///////////49////////////Account Data///////
    'Account Data',
    'Bank Account',
    'Installments',
    'Invoices',
    /////////////53///Transfer//
    'Transfer Money',
    'To Bank Account*',
    'Enter The Bank Account Number',
    'Amount*',
    'Transfer Fees',
    '1% of transfer Amount(Max 10\$)',
    "Estimated arrival",
    "Typically in minutes",
    'Transfer'
  ];
  static void langu(int choice) {
    if (choice == 1) {
      Lang = [
        ///////0////sign in//////////////////
        'مرحبا',
        '*البريد الالكتروني',
        'ادخل بريدك الالكتروني الصحيح',
        'كلمة السر',
        '*ادخل كلمة السر',
        'الدخول',
        'تسجيل جديد',
        ////////////////6///Register////////
        'حساب جديد',
        'الأسم الاول',
        'ادخل اسمك الأول',
        'اللقب',
        'ادخل الاسم الاخير',
        'البريد الألكتروني*',
        'ادخل بريدك الألكتروني',
        'رقم الهاتف*',
        'ادخل رقم الهاتف',
        'كلمة السر*',
        'ادخل كلمة السر',
        'تأكيد كلمة السر*',
        'ادخل كلمة السر*',
        'تسجيل الدخول',
        /////////////////20///////Home /////////////
        'الصفحة الرئيسية',
        'الصفحة الشخصية',
        'اقرب بنك',
        'تحويل عملات',
        'الخدمات',
        'اللغة',
        'العربية',
        'Englash',
        'وضع اللون',
        'غامق',
        'فاتح',
        'تسجيل خروج',
        /////////////////32////////Profile///////////////////
        'الصفحة الشخصية',
        'من',
        'الي',
        'حسابك',
        'الموقع',
        'القاهرة-مصر',
        'رقم الهاتف',
        ////////////////39//////////
        'أقرب بنك',
        'تحويل عملات',
        ////////////////41///////////service///
        'خدمات',
        'تحويل اموال',
        'تحويل',
        "رسوم التحويل 1 جنيه سيتم خصمها من الرصيد المتبقي من محفظة فودافون كاش الخاصة بك.",
        'سحب',
        'المبالغ المسحوبة بين 5 و 150 جنيه تخضع لرسوم سحب نقدي 3 جنيهات. المبالغ التي تزيد عن 150 جنيه تخضع لرسوم صرف 2٪.',
        "الحد اقصي لتحويل الأموال",
        'يمكن للعملاء تحويل الأموال بحد أدنى 5 جنيه وبحد أقصى 30.000 جنيه',
        //////////////49///
        'معلومات حسابك',
        'حسابك البنكي',
        'أقساطك',
        'فواتيرك',
        ///////////////53/////
        'تحويل اموال',
        'الي الحساب البنكي*',
        'ادخل رقم الحساب',
        'المبلغ*',
        'مصاريف التحويل',
        '1% من قيمة التحويل(بحد اقصي 10\$)',
        "زمن الوصول",
        "بضع دقائق",
        'تحويل',
      ];
      direction = TextDirection.rtl;
    }
    else if (choice == 2) {
      direction = TextDirection.ltr;
      Lang = [
        'Welcome',
        'Email Address*',
        'Enter your email',
        'Password*',
        'Enter your Password',
        'Sign In',
        'Sign up',
        ////////////////6/////////////////
        'New Account',
        'First Name',
        'Enter your First Name',
        'Last Name',
        'Enter your last name',
        'Email Address*',
        'Enter your email',
        'Phone Number*',
        'Enter your phone Number',
        'Password* ',
        'Enter your Password',
        'Confirm Password*',
        'Enter password',
        'Sign Up',
        /////////////////20////////////////////////
        'Home page',
        'Profile',
        'Nearest Bank',
        'Currency Converter',
        'Services',
        'Language',
        'العربية',
        'Englash',
        'Color Mode',
        'Dark',
        'Light',
        'Log Out',
        //////////////32////////////////////
        'Profile',
        'From',
        'To',
        'Account',
        'Location',
        'Cairo-Egypt',
        'Phone',
        //////////////39//////////////////////
        'Nearest Bank',
        'Currency Converter',
        //////////////41//////////Service/////////////
        'Services',
        'Transfer Money',
        'Transfer',
        'Transfer fees are 1LE will be deducted from the remaining balance from your Vodafone Cash wallet.',
         'Withdraw',
        'Withdrawal amounts between 5 LE and 150 LE are subject to 3LE cash out fees. Amounts above 150 LE are subject to 2% cash out fees.',
        'Money Transfer Amount limet',
        'Customers can transfer money with minimum amount of 5LE and maximum of 30,000LE',
        ///////////49////////////Account Data///////
        'Account Data',
        'Bank Account',
        'Installments',
        'Invoices',
        /////////////53///Transfer//
        'Transfer Money',
        'To Bank Account*',
        'Enter The Bank Account Number',
        'Amount*',
        'Transfer Fees',
        '1% of transfer Amount(Max 10\$)',
        "Estimated arrival",
        "Typically in minutes",
        'Transfer'
      ];
    }
  }
}
