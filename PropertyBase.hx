extern class PropertyBase {
	var name : String;
	var readonly : Dynamic;
	var matchName : String;
	var propertyIndex : Float;
	var propertyDepth : Float;
	var propertyType : PropertyType;
	var parentProperty : PropertyGroup;
	var isModified : Bool;
	var canSetEnabled : Bool;
	var enabled : Bool;
	var active : Bool;
	var elided : Bool;
	var isEffect : Bool;
	var isMask : Bool;
	var selected : Bool;
	function propertyGroup(?countUp:Float):PropertyGroup;
	function remove():Void;
	function moveTo(newIndex:Float):Void;
	function duplicate():PropertyBase;
	@:overload(function(name:String):PropertyBase { })
	function property(index:Float):PropertyBase;
}
