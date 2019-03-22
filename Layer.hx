extern class Layer {
	var readonly:Dynamic;
	var index:Float;
	var name:String;
	var parent:haxe.extern.EitherType<Layer, Null<Dynamic>>;
	var time:Float;
	var startTime:Float;
	var stretch:Float;
	var inPoint:Float;
	var outPoint:Float;
	var enabled:Bool;
	var solo:Bool;
	var shy:Bool;
	var locked:Bool;
	var hasVideo:Bool;
	var active:Bool;
	var nullLayer:Bool;
	var selectedProperties:Array<PropertyBase>;
	var comment:String;
	var containingComp:CompItem;
	var isNameSet:Bool;
	var label:Float;
	var autoOrient:AutoOrientType;
	function remove():Void;
	function moveToBeginning():Void;
	function moveToEnd():Void;
	function moveAfter(layer:Layer):Void;
	function moveBefore(layer:Layer):Void;
	function duplicate():Layer;
	function copyToComp(intoComp:CompItem):Void;
	function activeAtTime(time:Float):Bool;
	function setParentWithJump(?newParent:Layer):Void;
	function applyPreset(presetName:File):Void;
	var matchName:String;
	var propertyDepth:Float;
	var propertyType:PropertyType;
	var selected:Bool;
	var numProperties:Float;
	function propertyGroup(?countUp:Float):PropertyGroup;
	@:overload(function(name:String):PropertyBase {})
	function property(index:Float):PropertyBase;
	var marker:Property;
	var transform:_TransformGroup;
	var anchorPoint:Property;
	var position:Property;
	var xPosition:Property;
	var yPosition:Property;
	var zPosition:Property;
	var scale:Property;
	var orientation:Property;
	var rotation:Property;
	var xRotation:Property;
	var yRotation:Property;
	var zRotation:Property;
	var opacity:Property;
	var pointOfInterest:Property;
}
