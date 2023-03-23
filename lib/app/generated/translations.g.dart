/// Generated file. Do not edit.
///
/// Locales: 2
/// Strings: 24 (12 per locale)
///
/// Built on 2023-03-23 at 04:14 UTC

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
	late final _TranslationsDrawellEn drawell = _TranslationsDrawellEn._(_root);
	late final _TranslationsHomeEn home = _TranslationsHomeEn._(_root);
	late final _TranslationsAboutmeEn aboutme = _TranslationsAboutmeEn._(_root);
}

// Path: drawell
class _TranslationsDrawellEn {
	_TranslationsDrawellEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	late final _TranslationsDrawellItemsEn items = _TranslationsDrawellItemsEn._(_root);
}

// Path: home
class _TranslationsHomeEn {
	_TranslationsHomeEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get name => 'Hello I am,';
	String get occupation => 'I am a mobile developer';
	String get passion => 'Electronics Engineer enthusiastic about new technologies.';
	late final _TranslationsHomeDropdownButtonEn dropdownButton = _TranslationsHomeDropdownButtonEn._(_root);
}

// Path: aboutme
class _TranslationsAboutmeEn {
	_TranslationsAboutmeEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get aboutme => 'About me';
	String get aboutmedescription => 'I am an Electronic Engineer by profession, a lover of programming and high impact development. I am fond of app development and with the goal of automating traditional processes through technology and innovation.';
	String get skills => 'Skills';
}

// Path: drawell.items
class _TranslationsDrawellItemsEn {
	_TranslationsDrawellItemsEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get aboutme => 'About me';
	String get portfolio => 'Portafolio';
	String get contact => 'Contact';
}

// Path: home.dropdownButton
class _TranslationsHomeDropdownButtonEn {
	_TranslationsHomeDropdownButtonEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get last24 => 'Last 24h';
	String get lastWeek => 'Last week';
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
	@override late final _TranslationsDrawellEs drawell = _TranslationsDrawellEs._(_root);
	@override late final _TranslationsHomeEs home = _TranslationsHomeEs._(_root);
	@override late final _TranslationsAboutmeEs aboutme = _TranslationsAboutmeEs._(_root);
}

// Path: drawell
class _TranslationsDrawellEs extends _TranslationsDrawellEn {
	_TranslationsDrawellEs._(_TranslationsEs root) : this._root = root, super._(root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsDrawellItemsEs items = _TranslationsDrawellItemsEs._(_root);
}

// Path: home
class _TranslationsHomeEs extends _TranslationsHomeEn {
	_TranslationsHomeEs._(_TranslationsEs root) : this._root = root, super._(root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get name => 'Hola yo soy,';
	@override String get occupation => 'Soy desarrollador movil';
	@override String get passion => 'Ingeniero Electrónico entusiasta por conocer nuevas técnologias.';
	@override late final _TranslationsHomeDropdownButtonEs dropdownButton = _TranslationsHomeDropdownButtonEs._(_root);
}

// Path: aboutme
class _TranslationsAboutmeEs extends _TranslationsAboutmeEn {
	_TranslationsAboutmeEs._(_TranslationsEs root) : this._root = root, super._(root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get aboutme => 'Sobre mi';
	@override String get aboutmedescription => 'Yo soy Ingeniero Electrónico de profesión amante de la programación y al desarrollo de alto impacto. Aficionado al desarrollo de app y con la meta de automatizar procesos tradicionales atravez de la tecnologia e innovación.';
	@override String get skills => 'Habilidades';
}

// Path: drawell.items
class _TranslationsDrawellItemsEs extends _TranslationsDrawellItemsEn {
	_TranslationsDrawellItemsEs._(_TranslationsEs root) : this._root = root, super._(root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get home => 'Inicio';
	@override String get aboutme => 'Acerca de mi';
	@override String get portfolio => 'Portafolio';
	@override String get contact => 'Contacto';
}

// Path: home.dropdownButton
class _TranslationsHomeDropdownButtonEs extends _TranslationsHomeDropdownButtonEn {
	_TranslationsHomeDropdownButtonEs._(_TranslationsEs root) : this._root = root, super._(root);

	@override final _TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get last24 => 'Últimas 24h';
	@override String get lastWeek => 'Últimas semana';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'drawell.items.home': return 'Home';
			case 'drawell.items.aboutme': return 'About me';
			case 'drawell.items.portfolio': return 'Portafolio';
			case 'drawell.items.contact': return 'Contact';
			case 'home.name': return 'Hello I am,';
			case 'home.occupation': return 'I am a mobile developer';
			case 'home.passion': return 'Electronics Engineer enthusiastic about new technologies.';
			case 'home.dropdownButton.last24': return 'Last 24h';
			case 'home.dropdownButton.lastWeek': return 'Last week';
			case 'aboutme.aboutme': return 'About me';
			case 'aboutme.aboutmedescription': return 'I am an Electronic Engineer by profession, a lover of programming and high impact development. I am fond of app development and with the goal of automating traditional processes through technology and innovation.';
			case 'aboutme.skills': return 'Skills';
			default: return null;
		}
	}
}

extension on _TranslationsEs {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'drawell.items.home': return 'Inicio';
			case 'drawell.items.aboutme': return 'Acerca de mi';
			case 'drawell.items.portfolio': return 'Portafolio';
			case 'drawell.items.contact': return 'Contacto';
			case 'home.name': return 'Hola yo soy,';
			case 'home.occupation': return 'Soy desarrollador movil';
			case 'home.passion': return 'Ingeniero Electrónico entusiasta por conocer nuevas técnologias.';
			case 'home.dropdownButton.last24': return 'Últimas 24h';
			case 'home.dropdownButton.lastWeek': return 'Últimas semana';
			case 'aboutme.aboutme': return 'Sobre mi';
			case 'aboutme.aboutmedescription': return 'Yo soy Ingeniero Electrónico de profesión amante de la programación y al desarrollo de alto impacto. Aficionado al desarrollo de app y con la meta de automatizar procesos tradicionales atravez de la tecnologia e innovación.';
			case 'aboutme.skills': return 'Habilidades';
			default: return null;
		}
	}
}
