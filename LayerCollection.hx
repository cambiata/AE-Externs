extern class LayerCollection extends Collection {
	// var readonly : Dynamic;
	function add(item:AVItem, ?duration:Float):AVLayer;
	function addNull(?duration:Float):AVLayer;
	function addSolid(color:Array<Dynamic>, name:String, width:Float, height:Float, pixelAspect:Float, ?duration:Float):AVLayer;
	function addText(?sourceText:haxe.extern.EitherType<String, TextDocument>):TextLayer;
	function addBoxText(size:Array<Dynamic>, ?sourceText:haxe.extern.EitherType<String, TextDocument>):TextLayer;
	function addCamera(name:String, centerPoint:Array<Dynamic>):CameraLayer;
	function addLight(name:String, centerPoint:Array<Dynamic>):LightLayer;
	function addShape():ShapeLayer;
	function byName(name:String):haxe.extern.EitherType<Layer, Null<Dynamic>>;
	function precompose(layerIndicies:Array<Float>, name:String, ?moveAllAttributes:Bool):CompItem;
}
