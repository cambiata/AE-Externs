extern class Preferences {
	function deletePref(section:String, key:String, ?type:PREFType):Void;
	function getPrefAsBool(section:String, key:String, ?type:PREFType):Bool;
	function getPrefAsFloat(section:String, key:String, ?type:PREFType):Float;
	function getPrefAsLong(section:String, key:String, ?type:PREFType):Float;
	function getPrefAsString(section:String, key:String, ?type:PREFType):String;
	function havePref(section:String, key:String, ?type:PREFType):Bool;
	function reload():Void;
	function savePrefAsBool(section:String, key:String, value:Bool, ?type:PREFType):Void;
	function savePrefAsFloat(section:String, key:String, value:Float, ?type:PREFType):Void;
	function savePrefAsLong(section:String, key:String, value:Float, ?type:PREFType):Void;
	function savePrefAsString(section:String, key:String, value:String, ?type:PREFType):Void;
	function saveToDisk():Void;
}
