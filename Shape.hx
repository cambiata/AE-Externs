extern class Shape {
	var closed : Bool;
	var vertices : Array<Array<Dynamic>>;
	var inTangents : Array<Array<Dynamic>>;
	var outTangents : Array<Array<Dynamic>>;
	var featherSegLocs : Array<Float>;
	var featherRelSegLocs : Array<Float>;
	var featherRadii : Array<Float>;
	var featherInterps : Array<Float>;
	var featherTensions : Array<Float>;
	var featherTypes : Array<Float>;
	var featherRelCornerAngles : Array<Float>;
}
