extern class AVItem extends Item {
	// var name : String;
	var width:Float;
	var height:Float;
	var pixelAspect:Float;
	var frameRate:Float;
	var frameDuration:Float;
	var duration:Float;
	var useProxy:Bool;
	// var readonly : Dynamic;
	var proxySource:FootageSource;
	var time:Float;
	var usedIn:Array<CompItem>;
	var hasVideo:Bool;
	var hasAudio:Bool;
	var footageMissing:Bool;
	function setProxy(file:File):Void;
	function setProxyWithSequence(file:File, forceAlphabetical:Bool):Void;
	function setProxyWithSolid(color:Array<Dynamic>, name:String, width:Float, height:Float, pixelAspect:Float):Void;
	function setProxyWithPlaceholder(name:String, width:Float, height:Float, frameRate:Float, duration:Float):Void;
	function setProxyToNone():Void;
}
