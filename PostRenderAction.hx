@:enum abstract PostRenderAction(Int) {
	var NONE = 0;
	var IMPORT = 1;
	var IMPORT_AND_REPLACE_USAGE = 2;
	var SET_PROXY = 3;
}
