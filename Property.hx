extern class Property extends PropertyBase {
	// var readonly:Dynamic;
	var propertyValueType:PropertyValueType;
	var value:PropertyValue;
	var hasMin:Bool;
	var hasMax:Bool;
	var minValue:Float;
	var maxValue:Float;
	var isSpatial:Bool;
	var canVaryOverTime:Bool;
	var isTimeVarying:Bool;
	var numKeys:Float;
	var unitsText:String;
	var expression:String;
	var canSetExpression:Bool;
	var expressionEnabled:Bool;
	var expressionError:String;
	var selectedKeys:Array<Float>;
	// var propertyIndex:Float;
	var dimensionsSeparated:Bool;
	var isSeparationFollower:Bool;
	var isSeparationLeader:Bool;
	var separationDimension:Float;
	var separationLeader:Property;
	function valueAtTime(time:Float, preExpression:Bool):PropertyValue;
	function setValue(newValue:PropertyValue):Void;
	function setValueAtTime(time:Float, newValue:PropertyValue):Void;
	function setValuesAtTimes(times:Array<Float>, newValues:Array<PropertyValue>):Void;
	function setValueAtKey(keyIndex:Float, newValue:PropertyValue):Void;
	function nearestKeyIndex(time:Float):Float;
	@:overload(function(markerComment:String):Float {})
	function keyTime(keyIndex:Float):Float;
	@:overload(function(markerComment:String):MarkerValue {})
	function keyValue(keyIndex:Float):PropertyValue;
	function addKey(time:Float):Float;
	function removeKey(keyIndex:Float):Void;
	function isInterpolationTypeValid(type:KeyframeInterpolationType):Bool;
	function setInterpolationTypeAtKey(keyIndex:Float, inType:KeyframeInterpolationType, ?outType:KeyframeInterpolationType):Void;
	function keyInInterpolationType(keyIndex:Float):KeyframeInterpolationType;
	function keyOutInterpolationType(keyIndex:Float):KeyframeInterpolationType;
	@:overload(function(keyIndex:Float, inTangent:Array<Dynamic>, outTangent:Dynamic):Void {})
	function setSpatialTangentsAtKey(keyIndex:Float, inTangent:Array<Dynamic>, outTangent:Dynamic):Void;
	function keyInSpatialTangent(keyIndex:Float):haxe.extern.EitherType<Array<Dynamic>, Array<Dynamic>>;
	function keyOutSpatialTangent(keyIndex:Float):haxe.extern.EitherType<Array<Dynamic>, Array<Dynamic>>;
	@:overload(function(keyIndex:Float, inTemporalEase:Array<Dynamic>, ?outTemporalEase:Dynamic):Void {})
	@:overload(function(keyIndex:Float, inTemporalEase:Array<Dynamic>, ?outTemporalEase:Dynamic):Void {})
	function setTemporalEaseAtKey(keyIndex:Float, inTemporalEase:Array<Dynamic>, ?outTemporalEase:Dynamic):Void;
	function keyInTemporalEase(keyIndex:Float):haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Array<Dynamic>, Array<Dynamic>>>;
	function keyOutTemporalEase(keyIndex:Float):haxe.extern.EitherType<Array<Dynamic>, haxe.extern.EitherType<Array<Dynamic>, Array<Dynamic>>>;
	function setTemporalContinuousAtKey(keyIndex:Float, newVal:Bool):Void;
	function keyTemporalContinuous(keyIndex:Float):Bool;
	function setTemporalAutoBezierAtKey(keyIndex:Float, newVal:Bool):Void;
	function keyTemporalAutoBezier(keyIndex:Float):Bool;
	function setSpatialContinuousAtKey(keyIndex:Float, newVal:Bool):Void;
	function keySpatialContinuous(keyIndex:Float):Bool;
	function setSpatialAutoBezierAtKey(keyIndex:Float, newVal:Bool):Void;
	function keySpatialAutoBezier(keyIndex:Float):Bool;
	function setRovingAtKey(keyIndex:Float, newVal:Bool):Void;
	function keyRoving(keyIndex:Float):Bool;
	function setSelectedAtKey(keyIndex:Float, onOff:Bool):Void;
	function keySelected(keyIndex:Float):Bool;
	function getSeparationFollower(dim:Float):Property;
}
// typedef PropertyBase = { };
