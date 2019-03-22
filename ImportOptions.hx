extern class ImportOptions {
	function new(?file:File):Void;
	var importAs : ImportAsType;
	var sequence : Bool;
	var forceAlphabetical : Bool;
	var file : File;
	function canImportAs(type:ImportAsType):Bool;
}
