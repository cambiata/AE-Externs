@:enum abstract RQItemStatus(Int) {
	var WILL_CONTINUE = 0;
	var NEEDS_OUTPUT = 1;
	var UNQUEUED = 2;
	var QUEUED = 3;
	var RENDERING = 4;
	var USER_STOPPED = 5;
	var ERR_STOPPED = 6;
	var DONE = 7;
}
