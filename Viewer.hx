extern class Viewer {
	var readonly : Dynamic;
	var type : ViewerType;
	var active : Bool;
	var activeViewIndex : Float;
	var views : Array<View>;
	var maximized : Bool;
	function setActive():Bool;
}
