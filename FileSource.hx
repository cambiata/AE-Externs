extern class FileSource extends FootageSource {
	var readonly : Dynamic;
	var file : File;
	var missingFootagePath : String;
	function reload():Void;
}
