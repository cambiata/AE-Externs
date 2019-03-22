extern class ItemCollection extends Collection {
	// var readonly : Dynamic;
	function addComp(name:String, width:Float, height:Float, pixelAspect:Float, duration:Float, frameRate:Float):CompItem;
	function addFolder(name:String):FolderItem;
}
