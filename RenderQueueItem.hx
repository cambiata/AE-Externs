extern class RenderQueueItem {
	var readonly:Dynamic;
	var numOutputModules:Float;
	var render:Bool;
	var startTime:haxe.extern.EitherType<Date, Null<Dynamic>>;
	var elapsedSeconds:haxe.extern.EitherType<Float, Null<Dynamic>>;
	var timeSpanStart:Float;
	var timeSpanDuration:Float;
	var skipFrames:Float;
	var comp:CompItem;
	var outputModules:OMCollection;
	var templates:Array<String>;
	var status:RQItemStatus;
	var onStatusChanged:haxe.extern.EitherType<String, Null<Dynamic>>;
	var logType:LogType;
	function outputModule(index:Float):OutputModule;
	function remove():Void;
	function saveAsTemplate(name:String):Void;
	function applyTemplate(templateName:String):Void;
	function duplicate():RenderQueueItem;
	function getSetting(key:String):haxe.extern.EitherType<String, Float>;
	function getSettings(format:GetSettingsFormat):Dynamic;
	function setSetting(key:String, value:haxe.extern.EitherType<String, Float>):Void;
	function setSettings(settings:Dynamic):Void;
}
