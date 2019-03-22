extern class FootageItem extends AVItem {
	// var readonly : Dynamic;
	var file:haxe.extern.EitherType<File, Null<Dynamic>>;
	var mainSource:FootageSource;
	function replace(file:File):Void;
	function replaceWithPlaceholder(name:String, width:Float, height:Float, frameRate:Float, duration:Float):Void;
	function replaceWithSequence(file:File, forceAlphabetical:Bool):Void;
	function replaceWithSolid(color:Array<Dynamic>, name:String, width:Float, height:Float, pixelAspect:Float):Void;
	function openInViewer():haxe.extern.EitherType<Viewer, Null<Dynamic>>;
}
