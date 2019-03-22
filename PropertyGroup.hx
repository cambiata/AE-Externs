extern class PropertyGroup extends PropertyBase {
	// var readonly : Dynamic;
	var numProperties:Float;
	function canAddProperty(name:String):Bool;
	function addProperty(name:String):PropertyBase;
}
