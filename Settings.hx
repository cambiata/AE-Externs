extern class Settings {
	function saveSetting(sectionName:String, keyName:String, value:String, ?type:PREFType):Void;
	function getSetting(sectionName:String, keyName:String, ?type:PREFType):String;
	function haveSetting(sectionName:String, keyName:String, ?type:PREFType):Bool;
}
