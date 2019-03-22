extern class FootageSource {
	var readonly:Dynamic;
	var file:haxe.extern.EitherType<File, Null<Dynamic>>;
	var hasAlpha:Bool;
	var alphaMode:AlphaMode;
	var premulColor:Array<Dynamic>;
	var invertAlpha:Bool;
	var isStill:Bool;
	var fieldSeparationType:FieldSeparationType;
	var highQualityFieldSeparation:Bool;
	var removePulldown:PulldownPhase;
	var loop:Float;
	var nativeFrameRate:Float;
	var displayFrameRate:Float;
	var conformFrameRate:Float;
	function guessAlphaMode():Void;
	function guessPulldown(method:PulldownMethod):Void;
}
