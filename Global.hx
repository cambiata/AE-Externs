@:native("") extern class Global {
	static var app(get, never):Application;
	@:noCompletion static inline function get_app():Application {
		return untyped (__js__("app"));
	}
}
