extern class TextDocument {
	function new(docText:String):Void;
	var text : String;
	var font : String;
	var readonly : Dynamic;
	var fontLocation : String;
	var fontStyle : String;
	var fontFamily : String;
	var fontSize : Float;
	var applyFill : Bool;
	var applyStroke : Bool;
	var fillColor : Array<Dynamic>;
	var strokeColor : Array<Dynamic>;
	var strokeOverFill : Bool;
	var strokeWidth : Float;
	var justification : ParagraphJustification;
	var tracking : Float;
	var pointText : Bool;
	var boxText : Bool;
	var boxTextSize : Array<Dynamic>;
	var fauxBold : Bool;
	var fauxItalic : Bool;
	var allCaps : Bool;
	var smallCaps : Bool;
	var superscript : Bool;
	var subscript : Bool;
	var verticalScale : Float;
	var horizontalScale : Float;
	var baselineShift : Float;
	var tsume : Float;
	var boxTextPos : Array<Dynamic>;
	var baselineLocs : Array<Float>;
	function resetCharStyle():Void;
	function resetParagraphStyle():Void;
}
