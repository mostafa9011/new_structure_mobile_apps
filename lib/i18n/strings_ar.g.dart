///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsAr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsAr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ar>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsAr _root = this; // ignore: unused_field

	@override 
	TranslationsAr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsAr(meta: meta ?? this.$meta);

	// Translations
	@override String get connectTimeout => 'انتهت مهلة الاتصال بالخادم. يرجى التحقق من اتصال الشبكة والمحاولة مرة أخرى.';
	@override String get sendTimeout => 'استغرق إرسال الطلب وقتًا طويلاً. يرجى التحقق من الاتصال والمحاولة مجددًا.';
	@override String get receiveTimeout => 'استغرق انتظار استجابة الخادم وقتًا طويلاً. يرجى المحاولة لاحقًا.';
	@override String get cancelMessage => 'تم إلغاء العملية من قبل المستخدم.';
	@override String get badRequest => 'الطلب غير صالح أو به خطأ. يرجى التحقق من البيانات والمحاولة مجددًا.';
	@override String get unknown => 'حدث خطأ غير معروف. يرجى المحاولة لاحقًا.';
	@override String get unauthorized => 'أنت غير مصرح لك. الرجاء تسجيل الدخول والمحاولة مرة أخرى.';
	@override String get forbidden => 'الوصول مرفوض. ليس لديك الإذن للقيام بهذا الإجراء.';
	@override String get notFound => 'المورد المطلوب غير موجود على الخادم.';
	@override String get serverError => 'حدث خطأ داخلي في الخادم. الرجاء المحاولة لاحقاً.';
	@override String get unknownError => 'حدث خطأ غير متوقع. الرجاء المحاولة لاحقاً.';
	@override String get timeout => 'انتهت مهلة العملية. يرجى التحقق من الشبكة والمحاولة مرة أخرى.';
	@override String get loading => 'جارٍ التحميل...';
	@override String get connectionError => 'حدث خطأ أثناء الاتصال بالخادم. الرجاء المحاولة لاحقاً.';
	@override String get changeLanguage => 'تغيير اللغة';
	@override String get changeTheme => 'تغيير المظهر';
	@override String get pm => 'مساءً';
	@override String get am => 'صباحًا';
	@override String get fieldRequired => 'هذا الحقل مطلوب';
	@override String get selectLanguage => 'اختر اللغة';
	@override String get changeLanguageText => 'غيّر لغتك';
	@override String get frensh => 'الفرنسية';
	@override String get english => 'الإنجليزية';
	@override String get arabic => 'العربية';
	@override String get next => 'التالي';
	@override String get getStarted => 'ابدأ الآن';
	@override String get email => 'البريد الإلكتروني';
	@override String get enterEmailPlaceholder => 'أدخل بريدك الإلكتروني';
	@override String get password => 'كلمة المرور';
	@override String get enterPasswordPlaceholder => 'أدخل كلمة المرور';
	@override String get rememberMe => 'تذكرني';
	@override String get forgetPassword => 'نسيت كلمة المرور؟';
	@override String get signIn => 'تسجيل الدخول';
	@override String get alreadyHaveAccountText => 'هل لديك حساب بالفعل؟';
	@override String get signUp => 'إنشاء حساب';
	@override String get welcome => 'مرحبًا';
	@override String get guest => 'زائر';
	@override String get submit => 'إرسال';
	@override String get confirmpassword => 'تأكيد كلمة المرور';
	@override String get save => 'حفظ';
	@override String get done => 'تم';
	@override String get aboutUs => 'من نحن';
	@override String get noResultFound => 'لم يتم العثور على نتائج';
	@override String get ok => 'موافق';
	@override String get termsAndConditions => 'الشروط والأحكام';
	@override String get privacyPolicy => 'سياسة الخصوصية';
	@override String get contactUs => 'تواصل معنا';
	@override String get logOut => 'تسجيل الخروج';
	@override String get yes => 'نعم';
	@override String get allNotifications => 'كل الإشعارات';
	@override String get unRead => 'غير المقروءة';
	@override String get read => 'المقروءة';
	@override String get delete => 'حذف';
	@override String get update => 'تحديث';
	@override String get thereAreNoNotifications => 'لا توجد إشعارات';
	@override String get show => 'عرض';
	@override String get cancel => 'إلغاء';
	@override String get emptyData => 'لا توجد بيانات';
	@override String get noResultsFound => 'لم يتم العثور على نتائج';
	@override String get viewAll => 'عرض الكل';
	@override String get search => 'بحث';
	@override String get cart => 'السلة';
	@override String get home => 'الرئيسية';
	@override String get products => 'المنتجات';
	@override String get profile => 'الملف الشخصي';
	@override String get apply => 'تقديم';
	@override String get send => 'إرسال';
	@override String get fullName => 'الاسم الكامل';
	@override String get enterYourFullName => 'أدخل اسمك الكامل';
	@override String get enterYourEmail => 'أدخل بريدك الإلكتروني';
	@override String get phoneNumber => 'رقم الهاتف';
	@override String get enterYourPhoneNumber => 'أدخل رقم هاتفك';
	@override String get deleteAll => 'حذف الكل';
	@override String get favorites => 'المفضلة';
	@override String get updateProfile => 'تحديث الملف الشخصي';
	@override String get notifications => 'الإشعارات';
	@override String get deleteAccount => 'حذف الحساب';
	@override String get changePassword => 'تغيير كلمة المرور';
	@override String get favorite => 'مفضل';
	@override String get settings => 'الإعدادات';
	@override String get languages => 'اللغات';
	@override String get support => 'الدعم';
	@override String get logout => 'تسجيل الخروج';
	@override String get firstName => 'الاسم الأول';
	@override String get enterYourFirstName => 'أدخل اسمك الأول';
	@override String get lastName => 'اسم العائلة';
	@override String get enterYourLastName => 'أدخل اسم العائلة';
	@override String get gender => 'الجنس';
	@override String get enterYourGender => 'أدخل جنسك';
	@override String get enterYourPassword => 'أدخل كلمة المرور';
	@override String get enetrNewPassword => 'أدخل كلمة المرور الجديدة';
	@override String get changeYourLanguage => 'غيّر لغتك';
	@override String get french => 'الفرنسية';
	@override String get approved => 'تمت الموافقة';
	@override String get hello => 'مرحبًا';
	@override String get skip => 'تخطي';
	@override String get cancelled => 'تم الإلغاء';
	@override String get newPassword => 'كلمة المرور الجديدة';
	@override String get enterNewPassword => 'أدخل كلمة المرور الجديدة';
	@override String get oldPassword => 'كلمة المرور القديمة';
	@override String get enterOldPassword => 'أدخل كلمة المرور القديمة';
	@override String get confirmPassword => 'تأكيد كلمة المرور';
	@override String get enterConfirmPassword => 'أدخل تأكيد كلمة المرور';
	@override String get invalidEmail => 'بريد إلكتروني غير صالح';
	@override String get passwordNotMatch => 'كلمتا المرور غير متطابقتين';
	@override String get fieldRequiredHint => 'هذا الحقل مطلوب';
	@override String get country => 'الدولة';
	@override String get selectYourCountry => 'اختر دولتك';
	@override String get city => 'المدينة';
	@override String get back => 'رجوع';
	@override String get sms => 'رسالة نصية';
	@override String get showMore => 'عرض المزيد';
	@override String get address => 'العنوان';
	@override String get checkout => 'الدفع';
	@override String get toUploadFiles => 'لرفع الملفات';
	@override String get mb => 'ميغابايت';
	@override String get invalidFileType => 'نوع ملف غير صالح';
	@override String get isRequired => 'مطلوب';
	@override String get edit => 'تعديل';
	@override String get view => 'عرض';
	@override String get success => 'نجاح';
	@override String get invalidPhoneNumber => 'رقم الهاتف غير صالح';
	@override String get phoneRequired => 'رقم الهاتف مطلوب';
	@override String get phoneNumberHint => 'ادخل رقم هاتفك';
	@override String get enterOldPasswordHint => 'ادخل كلمة المرور القديمة';
	@override String get enterNewPasswordHint => 'ادخل كلمة المرور الجديدة';
	@override String get enterConfirmPasswordHint => 'ادخل تاءكيد كلمة المرور';
	@override String get passwordRequired => 'كلمة المرور مطلوبة';
	@override String get play => 'يلعب';
}

/// The flat map containing all translations for locale <ar>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsAr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'connectTimeout' => 'انتهت مهلة الاتصال بالخادم. يرجى التحقق من اتصال الشبكة والمحاولة مرة أخرى.',
			'sendTimeout' => 'استغرق إرسال الطلب وقتًا طويلاً. يرجى التحقق من الاتصال والمحاولة مجددًا.',
			'receiveTimeout' => 'استغرق انتظار استجابة الخادم وقتًا طويلاً. يرجى المحاولة لاحقًا.',
			'cancelMessage' => 'تم إلغاء العملية من قبل المستخدم.',
			'badRequest' => 'الطلب غير صالح أو به خطأ. يرجى التحقق من البيانات والمحاولة مجددًا.',
			'unknown' => 'حدث خطأ غير معروف. يرجى المحاولة لاحقًا.',
			'unauthorized' => 'أنت غير مصرح لك. الرجاء تسجيل الدخول والمحاولة مرة أخرى.',
			'forbidden' => 'الوصول مرفوض. ليس لديك الإذن للقيام بهذا الإجراء.',
			'notFound' => 'المورد المطلوب غير موجود على الخادم.',
			'serverError' => 'حدث خطأ داخلي في الخادم. الرجاء المحاولة لاحقاً.',
			'unknownError' => 'حدث خطأ غير متوقع. الرجاء المحاولة لاحقاً.',
			'timeout' => 'انتهت مهلة العملية. يرجى التحقق من الشبكة والمحاولة مرة أخرى.',
			'loading' => 'جارٍ التحميل...',
			'connectionError' => 'حدث خطأ أثناء الاتصال بالخادم. الرجاء المحاولة لاحقاً.',
			'changeLanguage' => 'تغيير اللغة',
			'changeTheme' => 'تغيير المظهر',
			'pm' => 'مساءً',
			'am' => 'صباحًا',
			'fieldRequired' => 'هذا الحقل مطلوب',
			'selectLanguage' => 'اختر اللغة',
			'changeLanguageText' => 'غيّر لغتك',
			'frensh' => 'الفرنسية',
			'english' => 'الإنجليزية',
			'arabic' => 'العربية',
			'next' => 'التالي',
			'getStarted' => 'ابدأ الآن',
			'email' => 'البريد الإلكتروني',
			'enterEmailPlaceholder' => 'أدخل بريدك الإلكتروني',
			'password' => 'كلمة المرور',
			'enterPasswordPlaceholder' => 'أدخل كلمة المرور',
			'rememberMe' => 'تذكرني',
			'forgetPassword' => 'نسيت كلمة المرور؟',
			'signIn' => 'تسجيل الدخول',
			'alreadyHaveAccountText' => 'هل لديك حساب بالفعل؟',
			'signUp' => 'إنشاء حساب',
			'welcome' => 'مرحبًا',
			'guest' => 'زائر',
			'submit' => 'إرسال',
			'confirmpassword' => 'تأكيد كلمة المرور',
			'save' => 'حفظ',
			'done' => 'تم',
			'aboutUs' => 'من نحن',
			'noResultFound' => 'لم يتم العثور على نتائج',
			'ok' => 'موافق',
			'termsAndConditions' => 'الشروط والأحكام',
			'privacyPolicy' => 'سياسة الخصوصية',
			'contactUs' => 'تواصل معنا',
			'logOut' => 'تسجيل الخروج',
			'yes' => 'نعم',
			'allNotifications' => 'كل الإشعارات',
			'unRead' => 'غير المقروءة',
			'read' => 'المقروءة',
			'delete' => 'حذف',
			'update' => 'تحديث',
			'thereAreNoNotifications' => 'لا توجد إشعارات',
			'show' => 'عرض',
			'cancel' => 'إلغاء',
			'emptyData' => 'لا توجد بيانات',
			'noResultsFound' => 'لم يتم العثور على نتائج',
			'viewAll' => 'عرض الكل',
			'search' => 'بحث',
			'cart' => 'السلة',
			'home' => 'الرئيسية',
			'products' => 'المنتجات',
			'profile' => 'الملف الشخصي',
			'apply' => 'تقديم',
			'send' => 'إرسال',
			'fullName' => 'الاسم الكامل',
			'enterYourFullName' => 'أدخل اسمك الكامل',
			'enterYourEmail' => 'أدخل بريدك الإلكتروني',
			'phoneNumber' => 'رقم الهاتف',
			'enterYourPhoneNumber' => 'أدخل رقم هاتفك',
			'deleteAll' => 'حذف الكل',
			'favorites' => 'المفضلة',
			'updateProfile' => 'تحديث الملف الشخصي',
			'notifications' => 'الإشعارات',
			'deleteAccount' => 'حذف الحساب',
			'changePassword' => 'تغيير كلمة المرور',
			'favorite' => 'مفضل',
			'settings' => 'الإعدادات',
			'languages' => 'اللغات',
			'support' => 'الدعم',
			'logout' => 'تسجيل الخروج',
			'firstName' => 'الاسم الأول',
			'enterYourFirstName' => 'أدخل اسمك الأول',
			'lastName' => 'اسم العائلة',
			'enterYourLastName' => 'أدخل اسم العائلة',
			'gender' => 'الجنس',
			'enterYourGender' => 'أدخل جنسك',
			'enterYourPassword' => 'أدخل كلمة المرور',
			'enetrNewPassword' => 'أدخل كلمة المرور الجديدة',
			'changeYourLanguage' => 'غيّر لغتك',
			'french' => 'الفرنسية',
			'approved' => 'تمت الموافقة',
			'hello' => 'مرحبًا',
			'skip' => 'تخطي',
			'cancelled' => 'تم الإلغاء',
			'newPassword' => 'كلمة المرور الجديدة',
			'enterNewPassword' => 'أدخل كلمة المرور الجديدة',
			'oldPassword' => 'كلمة المرور القديمة',
			'enterOldPassword' => 'أدخل كلمة المرور القديمة',
			'confirmPassword' => 'تأكيد كلمة المرور',
			'enterConfirmPassword' => 'أدخل تأكيد كلمة المرور',
			'invalidEmail' => 'بريد إلكتروني غير صالح',
			'passwordNotMatch' => 'كلمتا المرور غير متطابقتين',
			'fieldRequiredHint' => 'هذا الحقل مطلوب',
			'country' => 'الدولة',
			'selectYourCountry' => 'اختر دولتك',
			'city' => 'المدينة',
			'back' => 'رجوع',
			'sms' => 'رسالة نصية',
			'showMore' => 'عرض المزيد',
			'address' => 'العنوان',
			'checkout' => 'الدفع',
			'toUploadFiles' => 'لرفع الملفات',
			'mb' => 'ميغابايت',
			'invalidFileType' => 'نوع ملف غير صالح',
			'isRequired' => 'مطلوب',
			'edit' => 'تعديل',
			'view' => 'عرض',
			'success' => 'نجاح',
			'invalidPhoneNumber' => 'رقم الهاتف غير صالح',
			'phoneRequired' => 'رقم الهاتف مطلوب',
			'phoneNumberHint' => 'ادخل رقم هاتفك',
			'enterOldPasswordHint' => 'ادخل كلمة المرور القديمة',
			'enterNewPasswordHint' => 'ادخل كلمة المرور الجديدة',
			'enterConfirmPasswordHint' => 'ادخل تاءكيد كلمة المرور',
			'passwordRequired' => 'كلمة المرور مطلوبة',
			'play' => 'يلعب',
			_ => null,
		};
	}
}
