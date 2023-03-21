/// Generated file. Do not edit.
///
/// Locales: 2
/// Strings: 30 (15 per locale)
///
/// Built on 2023-03-21 at 21:46 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _TranslationsEn> {
	en(languageCode: 'en', build: _TranslationsEn.build),
	es(languageCode: 'es', build: _TranslationsEs.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _TranslationsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_TranslationsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_TranslationsEn get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _TranslationsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _TranslationsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _TranslationsEn> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, _TranslationsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _TranslationsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_TranslationsEn get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _TranslationsEn> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _TranslationsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class _TranslationsEn implements BaseTranslations<AppLocale, _TranslationsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _TranslationsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _TranslationsEn _root = this; // ignore: unused_field

	// Translations
	late final _TranslationsSignInEn signIn = _TranslationsSignInEn._(_root);
	late final _TranslationsMiscEn misc = _TranslationsMiscEn._(_root);
	late final _TranslationsHomeEn home = _TranslationsHomeEn._(_root);
}

// Path: signIn
class _TranslationsSignInEn {
	_TranslationsSignInEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get username => 'Username';
	String get password => 'Password';
	late final _TranslationsSignInErrorsEn errors = _TranslationsSignInErrorsEn._(_root);
	String get signIn => 'Sign in';
}

// Path: misc
class _TranslationsMiscEn {
	_TranslationsMiscEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get requesFailed => 'Rquest Failed';
	String get retry => 'Retry';
}

// Path: home
class _TranslationsHomeEn {
	_TranslationsHomeEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	late final _TranslationsHomeNameCompleteEn nameComplete = _TranslationsHomeNameCompleteEn._(_root);
	late final _TranslationsHomeDropdownButtonEn dropdownButton = _TranslationsHomeDropdownButtonEn._(_root);
}

// Path: signIn.errors
class _TranslationsSignInErrorsEn {
	_TranslationsSignInErrorsEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get username => 'Invalid username';
	String get password => 'Invalid password';
	late final _TranslationsSignInErrorsSubmitEn submit = _TranslationsSignInErrorsSubmitEn._(_root);
}

// Path: home.nameComplete
class _TranslationsHomeNameCompleteEn {
	_TranslationsHomeNameCompleteEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String name({required Object name}) => 'My name is, ${name}';
}

// Path: home.dropdownButton
class _TranslationsHomeDropdownButtonEn {
	_TranslationsHomeDropdownButtonEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get last24 => 'Last 24h';
	String get lastWeek => 'Last week';
}

// Path: signIn.errors.submit
class _TranslationsSignInErrorsSubmitEn {
	_TranslationsSignInErrorsSubmitEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get notFound => 'Not Found';
	String get network => 'Network error';
	String get unauthorized => 'Invalid password';
	String get unknow => 'Error';
	String get notVerified => 'Email not verified';
}

// Path: <root>
class _TranslationsEs extends _TranslationsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEs.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, _TranslationsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _TranslationsEs _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsSignInEs signIn = _TranslationsSignInEs._(_root);
	@override late final _TranslationsMiscEs misc = _TranslationsMiscEs._(_root);
	@override late final _TranslationsHomeEs home = _TranslationsHomeEs._(_root);
}

// Path: signIn
class _TranslationsSignInEs extends _TranslationsSignInEn {
	_TranslationsSignInEs._(_TranslationsEs root) : this._root = root, super._(root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get username => 'Usuario';
	@override String get password => 'Contraseña';
	@override late final _TranslationsSignInErrorsEs errors = _TranslationsSignInErrorsEs._(_root);
	@override String get signIn => 'Iniciar Sesión';
}

// Path: misc
class _TranslationsMiscEs extends _TranslationsMiscEn {
	_TranslationsMiscEs._(_TranslationsEs root) : this._root = root, super._(root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get requesFailed => 'Solicitud fallida';
	@override String get retry => 'Reintentar';
}

// Path: home
class _TranslationsHomeEs extends _TranslationsHomeEn {
	_TranslationsHomeEs._(_TranslationsEs root) : this._root = root, super._(root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeNameCompleteEs nameComplete = _TranslationsHomeNameCompleteEs._(_root);
	@override late final _TranslationsHomeDropdownButtonEs dropdownButton = _TranslationsHomeDropdownButtonEs._(_root);
}

// Path: signIn.errors
class _TranslationsSignInErrorsEs extends _TranslationsSignInErrorsEn {
	_TranslationsSignInErrorsEs._(_TranslationsEs root) : this._root = root, super._(root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get username => 'Usuario inválido';
	@override String get password => 'Contraseña inválida';
	@override late final _TranslationsSignInErrorsSubmitEs submit = _TranslationsSignInErrorsSubmitEs._(_root);
}

// Path: home.nameComplete
class _TranslationsHomeNameCompleteEs extends _TranslationsHomeNameCompleteEn {
	_TranslationsHomeNameCompleteEs._(_TranslationsEs root) : this._root = root, super._(root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String name({required Object name}) => 'Mi nombre es, ${name}';
}

// Path: home.dropdownButton
class _TranslationsHomeDropdownButtonEs extends _TranslationsHomeDropdownButtonEn {
	_TranslationsHomeDropdownButtonEs._(_TranslationsEs root) : this._root = root, super._(root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get last24 => 'Últimas 24h';
	@override String get lastWeek => 'Últimas semana';
}

// Path: signIn.errors.submit
class _TranslationsSignInErrorsSubmitEs extends _TranslationsSignInErrorsSubmitEn {
	_TranslationsSignInErrorsSubmitEs._(_TranslationsEs root) : this._root = root, super._(root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get notFound => 'Usuario no encontrado';
	@override String get network => 'Error de conexión';
	@override String get unauthorized => 'Contraseña inválida';
	@override String get unknow => 'Error';
	@override String get notVerified => 'Email no verificaco';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'signIn.username': return 'Username';
			case 'signIn.password': return 'Password';
			case 'signIn.errors.username': return 'Invalid username';
			case 'signIn.errors.password': return 'Invalid password';
			case 'signIn.errors.submit.notFound': return 'Not Found';
			case 'signIn.errors.submit.network': return 'Network error';
			case 'signIn.errors.submit.unauthorized': return 'Invalid password';
			case 'signIn.errors.submit.unknow': return 'Error';
			case 'signIn.errors.submit.notVerified': return 'Email not verified';
			case 'signIn.signIn': return 'Sign in';
			case 'misc.requesFailed': return 'Rquest Failed';
			case 'misc.retry': return 'Retry';
			case 'home.nameComplete.name': return ({required Object name}) => 'My name is, ${name}';
			case 'home.dropdownButton.last24': return 'Last 24h';
			case 'home.dropdownButton.lastWeek': return 'Last week';
			default: return null;
		}
	}
}

extension on _TranslationsEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'signIn.username': return 'Usuario';
			case 'signIn.password': return 'Contraseña';
			case 'signIn.errors.username': return 'Usuario inválido';
			case 'signIn.errors.password': return 'Contraseña inválida';
			case 'signIn.errors.submit.notFound': return 'Usuario no encontrado';
			case 'signIn.errors.submit.network': return 'Error de conexión';
			case 'signIn.errors.submit.unauthorized': return 'Contraseña inválida';
			case 'signIn.errors.submit.unknow': return 'Error';
			case 'signIn.errors.submit.notVerified': return 'Email no verificaco';
			case 'signIn.signIn': return 'Iniciar Sesión';
			case 'misc.requesFailed': return 'Solicitud fallida';
			case 'misc.retry': return 'Reintentar';
			case 'home.nameComplete.name': return ({required Object name}) => 'Mi nombre es, ${name}';
			case 'home.dropdownButton.last24': return 'Últimas 24h';
			case 'home.dropdownButton.lastWeek': return 'Últimas semana';
			default: return null;
		}
	}
}
