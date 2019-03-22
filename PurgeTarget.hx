@:enum abstract PurgeTarget(Int) {
	var ALL_CACHES = 0;
	var UNDO_CACHES = 1;
	var SNAPSHOT_CACHES = 2;
	var IMAGE_CACHES = 3;
}
