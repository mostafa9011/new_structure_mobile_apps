import 'package:flutter/material.dart';

import 'constants_manager.dart';

class PhoneNumber {
  String number;
  String dialCode;

  PhoneNumber({
    this.number = '',
    this.dialCode = ConstantsManager.initialDialCode,
  });

  bool get isValid {
    return dialCodePhoneLengths[dialCode] != null &&
        number.length == dialCodePhoneLengths[dialCode];
  }

  PhoneNumber copyWith({
    String? number,
    String? dialCode,
  }) {
    return PhoneNumber(
      number: number ?? this.number,
      dialCode: dialCode ?? this.dialCode,
    );
  }

  /// dial code + number
  String get completeNumber => '$dialCode$number';

  int get fullLength =>
      (dialCodePhoneLengths[dialCode] ?? 100) + dialCode.length;

  int get numberLength => (dialCodePhoneLengths[dialCode] ?? 100);

  int get dialCodeLength => dialCode.length;

  factory PhoneNumber.fromString(String phone) {
    final phoneNumber = PhoneNumber();

    // Search for dial code
    for (String dialCode in _dialCodes) {
      if (phone.startsWith(dialCode)) {
        phoneNumber.dialCode = dialCode;
        phoneNumber.number = phone.substring(dialCode.length);
        break;
      }
    }

    return phoneNumber;
  }
}

typedef PhoneNumberNotifier = ValueNotifier<PhoneNumber?>;

const List<String> _dialCodes = [
  "+93", // "افغانستان"
  "+355", // "Shqipëria"
  "+213", // "الجزائر"
  "+1684", // "American Samoa"
  "+376", // "Andorra"
  "+244", // "Angola"
  "+1264", // "Anguilla"
  "+672", // "Antarctica"
  "+1268", // "Antigua and Barbuda"
  "+54", // "Argentina"
  "+374", // "Հայաստան"
  "+297", // "Aruba"
  "+61", // "Australia"
  "+43", // "Österreich"
  "+994", // "Azərbaycan"
  "+1242", // "Bahamas"
  "+973", // "البحرين"
  "+880", // "Bangladesh"
  "+1246", // "Barbados"
  "+375", // "Белару́сь"
  "+32", // "België"
  "+501", // "Belize"
  "+229", // "Bénin"
  "+1441", // "Bermuda"
  "+975", // "ʼbrug-yul"
  "+591", // "Bolivia"
  "+387", // "Bosna i Hercegovina"
  "+267", // "Botswana"
  "+55", // "Brasil"
  "+246", // "British Indian Ocean Territory"
  "+673", // "Negara Brunei Darussalam"
  "+359", // "България"
  "+226", // "Burkina Faso"
  "+257", // "Burundi"
  "+855", // "Cambodia"
  "+237", // "Cameroon"
  "+1", // "Canada"
  "+238", // "Cabo Verde"
  "+1345", // "Cayman Islands"
  "+236", // "Ködörösêse tî Bêafrîka"
  "+235", // "Tchad"
  "+56", // "Chile"
  "+86", // "中国"
  "+61", // "Christmas Island"
  "+61", // "Cocos (Keeling) Islands"
  "+57", // "Colombia"
  "+269", // "Komori"
  "+242", // "République du Congo"
  "+243", // "République démocratique du Congo"
  "+682", // "Cook Islands"
  "+506", // "Costa Rica"
  "+225", // "Côte d'Ivoire"
  "+385", // "Hrvatska"
  "+53", // "Cuba"
  "+357", // "Κύπρος"
  "+420", // "Česká republika"
  "+45", // "Danmark"
  "+253", // "Djibouti"
  "+1767", // "Dominica"
  "+1", // "República Dominicana"
  "+593", // "Ecuador"
  "+20", // "مصر"
  "+503", // "El Salvador"
  "+240", // "Guinea Ecuatorial"
  "+291", // "ኤርትራ"
  "+372", // "Eesti"
  "+251", // "ኢትዮጵያ"
  "+500", // "Falkland Islands"
  "+298", // "Føroyar"
  "+679", // "Fiji"
  "+33", // "France"
  "+594", // "Guyane française"
  "+689", // "Polynésie française"
  "+262", // "Territoire des Terres australes et antarctiques fr"
  "+241", // "Gabon"
  "+220", // "Gambia"
  "+995", // "საქართველო"
  "+49", // "Deutschland"
  "+233", // "Ghana"
  "+350", // "Gibraltar"
  "+30", // "Ελλάδα"
  "+299", // "Kalaallit Nunaat"
  "+1473", // "Grenada"
  "+590", // "Guadeloupe"
  "+1671", // "Guam"
  "+502", // "Guatemala"
  "+44", // "Guernsey"
  "+224", // "Guinée"
  "+245", // "Guiné-Bissau"
  "+592", // "Guyana"
  "+509", // "Haïti"
  "+0", // "Heard Island and McDonald Islands"
  "+379", // "Vaticano"
  "+504", // "Honduras"
  "+852", // "香港"
  "+36", // "Magyarország"
  "+354", // "Ísland"
  "+91", // "भारत"
  "+62", // "Indonesia"
  "+98", // "ایران"
  "+964", // "العراق"
  "+353", // "Éire"
  "+44", // "Isle of Man"
  "+972", // "ישראל"
  "+39", // "Italia"
  "+1876", // "Jamaica"
  "+81", // "日本"
  "+44", // "Jersey"
  "+962", // "الأردن"
  "+7", // "Қазақстан"
  "+254", // "Kenya"
  "+686", // "Kiribati"
  "+850", // "북한" (North Korea)
  "+82", // "대한민국" (South Korea)
  "+383", // "Republika e Kosovës"
  "+965", // "الكويت" (Kuwait)
  "+996", // "Кыргызстан" (Kyrgyzstan)
  "+856", // "ສປປລາວ" (Laos)
  "+371", // "Latvija" (Latvia)
  "+961", // "لبنان" (Lebanon)
  "+266", // "Lesotho"
  "+231", // "Liberia"
  "+218", // "ليبيا" (Libya)
  "+423", // "Liechtenstein"
  "+370", // "Lietuva" (Lithuania)
  "+352", // "Luxembourg"
  "+853", // "澳門" (Macau)
  "+389", // "Македонија" (North Macedonia)
  "+261", // "Madagasikara" (Madagascar)
  "+265", // "Malawi"
  "+60", // "Malaysia"
  "+960", // "Maldives"
  "+223", // "Mali"
  "+356", // "Malta"
  "+692", // "M̧ajeļ" (Marshall Islands)
  "+596", // "Martinique"
  "+222", // "موريتانيا" (Mauritania)
  "+230", // "Maurice" (Mauritius)
  "+262", // "Mayotte"
  "+52", // "México"
  "+691", // "Micronesia"
  "+373", // "Moldova"
  "+377", // "Monaco"
  "+976", // "Монгол улс" (Mongolia)
  "+382", // "Црна Гора" (Montenegro)
  "+1664", // "Montserrat"
  "+212", // "المغرب" (Morocco)
  "+258", // "Moçambique" (Mozambique)
  "+95", // "Myanmar"
  "+264", // "Namibia"
  "+674", // "Nauru"
  "+977", // "नेपाल" (Nepal)
  "+31", // "Nederland" (Netherlands)
  "+599", // "Netherlands Antilles"
  "+687", // "Nouvelle-Calédonie" (New Caledonia)
  "+64", // "New Zealand"
  "+505", // "Nicaragua"
  "+227", // "Niger"
  "+234", // "Nigeria"
  "+683", // "Niuē" (Niue)
  "+672", // "Norfolk Island"
  "+1670", // "Northern Mariana Islands"
  "+47", // "Norge" (Norway)
  "+968", // "عمان" (Oman)
  "+92", // "Pakistan"
  "+680", // "Palau"
  "+970", // "فلسطين" (Palestine)
  "+507", // "Panamá"
  "+675", // "Papua Niugini" (Papua New Guinea)
  "+595", // "Paraguay"
  "+51", // "Perú"
  "+63", // "Pilipinas" (Philippines)
  "+64", // "Pitcairn Islands"
  "+48", // "Polska" (Poland)
  "+351", // "Portugal"
  "+1939", // "Puerto Rico"
  "+1787", // "Puerto Rico"
  "+974", // "قطر" (Qatar)
  "+40", // "România"
  "+7", // "Россия"
  "+250", // "Rwanda"
  "+262", // "La Réunion"
  "+590", // "Saint-Barthélemy"
  "+290", // "Saint Helena"
  "+1869", // "Saint Kitts and Nevis"
  "+1758", // "Saint Lucia"
  "+590", // "Saint-Martin"
  "+508", // "Saint-Pierre-et-Miquelon"
  "+1784", // "Saint Vincent and the Grenadines"
  "+685", // "Samoa"
  "+378", // "San Marino"
  "+239", // "São Tomé e Príncipe"
  "+966", // "العربية السعودية"
  "+221", // "Sénégal"
  "+381", // "Србија"
  "+248", // "Seychelles"
  "+232", // "Sierra Leone"
  "+65", // "Singapore"
  "+421", // "Slovensko"
  "+386", // "Slovenija"
  "+677", // "Solomon Islands"
  "+252", // "Soomaaliya"
  "+27", // "South Africa"
  "+211", // "South Sudan"
  "+500", // "South Georgia"
  "+34", // "España"
  "+94", // "Sri Lanka"
  "+249", // "السودان"
  "+597", // "Suriname"
  "+268", // "Swaziland"
  "+46", // "Sverige"
  "+41", // "Schweiz"
  "+963", // "سوريا"
  "+886", // "臺灣"
  "+992", // "Тоҷикистон"
  "+255", // "Tanzania"
  "+66", // "ประเทศไทย"
  "+670", // "Timor-Leste"
  "+228", // "Togo"
  "+690", // "Tokelau"
  "+676", // "Tonga"
  "+1868", // "Trinidad and Tobago"
  "+216", // "تونس"
  "+90", // "Türkiye"
  "+993", // "Türkmenistan"
  "+1649", // "Turks and Caicos Islands"
  "+688", // "Tuvalu"
  "+256", // "Uganda"
  "+380", // "Україна"
  "+971", // "دولة الإمارات العربية المتحدة"
  "+44", // "United Kingdom"
  "+1", // "United States"
  "+598", // "Uruguay"
  "+998", // "O‘zbekiston"
  "+678", // "Vanuatu"
  "+58", // "Venezuela"
  "+84", // "Việt Nam"
  "+1284", // "British Virgin Islands"
  "+1340", // "United States Virgin Islands"
  "+681", // "Wallis et Futuna"
  "+967", // "اليَمَن"
  "+260", // "Zambia"
  "+263", // "Zimbabwe"
];

const Map<String, int> dialCodePhoneLengths = {
  "+93": 9, // Afghanistan
  "+358": 10, // Åland
  "+355": 9, // Albania
  "+213": 9, // Algeria
  "+1684": 7, // American Samoa
  "+376": 6, // Andorra
  "+244": 9, // Angola
  "+1264": 7, // Anguilla
  "+672": 6, // Antarctica
  "+1268": 7, // Antigua and Barbuda
  "+54": 10, // Argentina
  "+374": 8, // Armenia
  "+297": 7, // Aruba
  "+61": 9, // Australia
  "+43": 10, // Austria
  "+994": 9, // Azerbaijan
  "+1242": 7, // Bahamas
  "+973": 8, // Bahrain
  "+880": 10, // Bangladesh
  "+1246": 7, // Barbados
  "+375": 9, // Belarus
  "+32": 9, // Belgium
  "+501": 7, // Belize
  "+229": 8, // Benin
  "+1441": 7, // Bermuda
  "+975": 8, // Bhutan
  "+591": 8, // Bolivia
  "+387": 8, // Bosnia and Herzegovina
  "+267": 7, // Botswana
  "+55": 10, // Brazil
  "+246": 7, // British Indian Ocean Territory
  "+673": 7, // Brunei
  "+359": 9, // Bulgaria
  "+226": 8, // Burkina Faso
  "+257": 8, // Burundi
  "+855": 9, // Cambodia
  "+237": 9, // Cameroon
  "+238": 7, // Cape Verde
  "+1345": 7, // Cayman Islands
  "+236": 8, // Central African Republic
  "+235": 8, // Chad
  "+56": 9, // Chile
  "+86": 11, // China
  "+57": 10, // Colombia
  "+269": 7, // Comoros
  "+242": 9, // Republic of Congo
  "+243": 9, // Democratic Republic of Congo
  "+682": 5, // Cook Islands
  "+506": 8, // Costa Rica
  "+225": 8, // Côte d'Ivoire
  "+385": 9, // Croatia
  "+53": 8, // Cuba
  "+357": 8, // Cyprus
  "+420": 9, // Czech Republic
  "+45": 8, // Denmark
  "+253": 6, // Djibouti
  "+1767": 7, // Dominica
  "+593": 9, // Ecuador
  "+20": 10, // Egypt
  "+503": 8, // El Salvador
  "+240": 9, // Equatorial Guinea
  "+291": 7, // Eritrea
  "+372": 8, // Estonia
  "+251": 9, // Ethiopia
  "+298": 6, // Faroe Islands
  "+679": 7, // Fiji
  "+33": 9, // France
  "+594": 9, // French Guiana
  "+689": 6, // French Polynesia
  "+262": 9, // Réunion
  "+241": 9, // Gabon
  "+220": 7, // Gambia
  "+995": 9, // Georgia
  "+49": 10, // Germany
  "+233": 9, // Ghana
  "+350": 8, // Gibraltar
  "+30": 10, // Greece
  "+299": 6, // Greenland
  "+1473": 7, // Grenada
  "+502": 8, // Guatemala
  "+44": 10, // United Kingdom
  "+224": 9, // Guinea
  "+245": 7, // Guinea-Bissau
  "+592": 7, // Guyana
  "+509": 8, // Haiti
  "+504": 8, // Honduras
  "+852": 8, // Hong Kong
  "+36": 9, // Hungary
  "+354": 7, // Iceland
  "+91": 10, // India
  "+62": 10, // Indonesia
  "+98": 10, // Iran
  "+964": 10, // Iraq
  "+353": 9, // Ireland
  "+972": 9, // Israel
  "+39": 10, // Italy
  "+1876": 7, // Jamaica
  "+81": 10, // Japan
  "+962": 9, // Jordan
  "+254": 9, // Kenya
  "+686": 8, // Kiribati
  "+850": 9, // North Korea
  "+82": 10, // South Korea
  "+383": 9, // Kosovo
  "+965": 8, // Kuwait
  "+996": 9, // Kyrgyzstan
  "+856": 8, // Laos
  "+371": 8, // Latvia
  "+961": 8, // Lebanon
  "+266": 8, // Lesotho
  "+231": 7, // Liberia
  "+218": 9, // Libya
  "+423": 7, // Liechtenstein
  "+370": 8, // Lithuania
  "+352": 9, // Luxembourg
  "+853": 8, // Macau
  "+389": 8, // North Macedonia
  "+261": 9, // Madagascar
  "+265": 9, // Malawi
  "+60": 10, // Malaysia
  "+960": 7, // Maldives
  "+223": 8, // Mali
  "+356": 8, // Malta
  "+692": 7, // Marshall Islands
  "+596": 9, // Martinique
  "+222": 8, // Mauritania
  "+230": 7, // Mauritius
  "+52": 10, // Mexico
  "+691": 7, // Micronesia
  "+373": 8, // Moldova
  "+377": 8, // Monaco
  "+976": 8, // Mongolia
  "+382": 8, // Montenegro
  "+212": 9, // Morocco
  "+258": 9, // Mozambique
  "+95": 9, // Myanmar
  "+264": 9, // Namibia
  "+977": 10, // Nepal
  "+31": 9, // Netherlands
  "+599": 7, // Netherlands Antilles
  "+687": 6, // New Caledonia
  "+64": 9, // New Zealand
  "+505": 8, // Nicaragua
  "+227": 8, // Niger
  "+234": 10, // Nigeria
  "+683": 4, // Niue
  "+1670": 7, // Northern Mariana Islands
  "+47": 8, // Norway
  "+968": 8, // Oman
  "+92": 10, // Pakistan
  "+680": 7, // Palau
  "+970": 9, // Palestine
  "+507": 8, // Panama
  "+675": 7, // Papua New Guinea
  "+595": 9, // Paraguay
  "+51": 9, // Peru
  "+63": 10, // Philippines
  "+48": 9, // Poland
  "+351": 9, // Portugal
  "+1787": 10, // Puerto Rico
  "+974": 8, // Qatar
  "+40": 9, // Romania
  "+7": 10, // Russia
  "+250": 9, // Rwanda
  "+590": 9, // Saint-Barthélemy and Saint-Martin
  "+290": 4, // Saint Helena
  "+1869": 7, // Saint Kitts and Nevis
  "+1758": 7, // Saint Lucia
  "+508": 6, // Saint-Pierre-et-Miquelon
  "+1784": 7, // Saint Vincent and the Grenadines
  "+685": 5, // Samoa
  "+378": 10, // San Marino
  "+239": 7, // São Tomé e Príncipe
  "+966": 9, // Saudi Arabia
  "+221": 9, // Senegal
  "+381": 9, // Serbia
  "+248": 7, // Seychelles
  "+232": 8, // Sierra Leone
  "+65": 8, // Singapore
  "+421": 9, // Slovakia
  "+386": 9, // Slovenia
  "+677": 7, // Solomon Islands
  "+252": 7, // Somalia
  "+27": 9, // South Africa
  "+211": 9, // South Sudan
  "+500": 5, // South Georgia and the South Sandwich Islands
  "+34": 9, // Spain
  "+94": 9, // Sri Lanka
  "+249": 9, // Sudan
  "+597": 7, // Suriname
  "+268": 8, // Eswatini (Swaziland)
  "+46": 9, // Sweden
  "+41": 9, // Switzerland
  "+963": 9, // Syria
  "+886": 9, // Taiwan
  "+992": 9, // Tajikistan
  "+255": 9, // Tanzania
  "+66": 9, // Thailand
  "+670": 7, // Timor-Leste
  "+228": 8, // Togo
  "+690": 4, // Tokelau
  "+676": 5, // Tonga
  "+1868": 7, // Trinidad and Tobago
  "+216": 8, // Tunisia
  "+90": 10, // Turkey
  "+993": 8, // Turkmenistan
  "+1649": 7, // Turks and Caicos Islands
  "+688": 5, // Tuvalu
  "+256": 9, // Uganda
  "+380": 9, // Ukraine
  "+971": 9, // United Arab Emirates
  "+1": 10, // United States
  "+598": 9, // Uruguay
  "+998": 9, // Uzbekistan
  "+678": 7, // Vanuatu
  "+58": 10, // Venezuela
  "+84": 9, // Vietnam
  "+1284": 7, // British Virgin Islands
  "+1340": 7, // United States Virgin Islands
  "+681": 6, // Wallis and Futuna
  "+967": 9, // Yemen
  "+260": 9, // Zambia
  "+263": 9, // Zimbabwe
};
