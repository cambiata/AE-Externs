extern class MarkerValue {
	function new(comment:String, ?chapter:String, ?url:String, ?frameTarget:String, ?cuePointName:String, ?params:String):Void;
	var comment : String;
	var duration : Float;
	var chapter : String;
	var cuePointName : String;
	var eventCuePoint : Bool;
	var url : String;
	var frameTarget : String;
	function getParameters():Dynamic;
	function setParameters(keyValuePairs:Dynamic):Void;
}
typedef MaskPropertyGroup = { };
