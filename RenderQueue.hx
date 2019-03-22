extern class RenderQueue {
	var readonly : Dynamic;
	var rendering : Bool;
	var numItems : Float;
	var canQueueInAME : Bool;
	var items : RQItemCollection;
	function showWindow(doShow:Bool):Void;
	function render():Void;
	function pauseRendering(pause:Bool):Void;
	function stopRendering():Void;
	function item(index:Float):RenderQueueItem;
	function queueInAME(render_immediately_in_AME:Bool):Void;
}
