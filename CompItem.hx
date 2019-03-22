extern class CompItem extends AVItem {
	// var frameDuration : Float;
	var dropFrame:Bool;
	var workAreaStart:Float;
	var workAreaDuration:Float;
	// var readonly : Dynamic;
	var numLayers:Float;
	var hideShyLayers:Bool;
	var motionBlur:Bool;
	var draft3d:Bool;
	var frameBlending:Bool;
	var preserveNestedFrameRate:Bool;
	var preserveNestedResolution:Bool;
	var bgColor:Array<Dynamic>;
	var activeCamera:haxe.extern.EitherType<CameraLayer, Null<Dynamic>>;
	var displayStartTime:Float;
	var resolutionFactor:Array<Dynamic>;
	var shutterAngle:Float;
	var shutterPhase:Float;
	var motionBlurSamplesPerFrame:Float;
	var motionBlurAdaptiveSampleLimit:Float;
	var layers:LayerCollection;
	var markerProperty:Property;
	var selectedLayers:Array<Layer>;
	var selectedProperties:Array<PropertyBase>;
	var renderer:String;
	var renderers:Array<String>;
	function duplicate():CompItem;
	@:overload(function(otherLayer:Layer, relIndex:Float):Layer {})
	@:overload(function(name:String):Layer {})
	function layer(index:Float):Layer;
	function openInViewer():haxe.extern.EitherType<Viewer, Null<Dynamic>>;
	function saveFrameToPng(time:Float, file:File):Void;
	function ramPreviewTest(unknown:Dynamic, zoom:Float, exposure:Float):Void;
}
