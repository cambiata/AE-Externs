package extendscript.aftereffects;

@:native("") extern class Global {
	static var app(get, never):Application;
}

extern class Application {
	var readonly:Dynamic;
	var project:Project;
	var isoLanguage:String;
	var version:String;
	var buildName:String;
	var buildNumber:Float;
	var isWatchFolder:Bool;
	var isRenderEngine:Bool;
	// var language:Language;
	// var settings:Settings;
	// var onError:haxe.extern.EitherType<String, Null>;
	// var exitCode:Float;
	// var exitAfterLaunchAndEval:Bool;
	// var saveProjectOnCrash:Bool;
	// var memoryInUse:Float;
	// var effects:Array<{
	// 	var displayName:String;
	// 	var matchName:String;
	// 	var version:String;
	// 	var category:String;
	// }>;
	// var activeViewer:haxe.extern.EitherType<Viewer, Null>;
	// var preferences:Preferences;
	// var availableGPUAccelTypes:GpuAccelType;
	// function newProject():haxe.extern.EitherType<Project, Null>;
	// function open(?file:File):haxe.extern.EitherType<Project, Null>;
	// function quit():Void;
	// function watchFolder(folder_object_to_watch:Folder):Void;
	// function pauseWatchFolder(pause:Bool):Void;
	// function endWatchFolder():Void;
	// function purge(target:PurgeTarget):Void;
	// function beginUndoGroup(undoString:String):Void;
	// function endUndoGroup():Void;
	// function beginSuppressDialogs():Void;
	// function endSuppressDialogs(alert:Bool):Void;
	// function setMemoryUsageLimits(imageCachePercentage:Float, maximumMemoryPercentage:Float):Void;
	// function setSavePreferencesOnQuit(doSave:Bool):Void;
	// function activate():Void;
	// function scheduleTask(stringToExecute:String, delay:Float, repeat:Bool):Float;
	// function cancelTask(taskID:Float):Void;
	// function parseSwatchFile(file:File):Swatch;
	// function findMenuCommandId(str:String):Float;
	// function executeCommand(id:Float):Void;
	// function getenv(name:String):String;
	// function setTimeout(func:Void->Void, ?delay:Float):Float;
	// function cancelTimeout(id:Float):Void;
}

extern class Project {
	var readonly:Dynamic;
	var file:haxe.extern.EitherType<File, Null<Dynamic>>;
	var rootFolder:FolderItem;
	var items:ItemCollection;
	var activeItem:haxe.extern.EitherType<Item, Null<Dynamic>>;
	var bitsPerChannel:Float;
	var transparencyGridThumbnails:Bool;
	var numItems:Float;
	var selection:Array<Item>;
	var renderQueue:RenderQueue;
	var timeDisplayType:TimeDisplayType;
	var toolType:ToolType;
	var footageTimecodeDisplayStartType:FootageTimecodeDisplayStartType;
	var framesUseFeetFrames:Bool;
	var feetFramesFilmType:FeetFramesFilmType;
	var gpuAccelType:GpuAccelType;
	var framesCountType:FramesCountType;
	var displayStartFrame:Float;
	var linearBlending:Bool;
	var xmpPacket:String;
	function item(index:Float):Item;
	function consolidateFootage():Float;
	function removeUnusedFootage():Float;
	function reduceProject(array_of_items:Array<Item>):Float;
	function close(closeOptions:CloseOptions):Bool;
	function save(?file:File):Void;
	function saveWithDialog():Bool;
	function importPlaceholder(name:String, width:Float, height:Float, frameRate:Float, duration:Float):PlaceholderItem;
	function importFile(importOptions:ImportOptions):Item;
	function importFileWithDialog():haxe.extern.EitherType<Array<Item>, Null<Dynamic>>;
	function showWindow(doShow:Bool):Void;
	function autoFixExpressions(oldText:String, newText:String):Void;
	function newTeamProject(teamProjectName:String, description:String):Bool;
	function openTeamProject(teamProjectName:String):Bool;
	function shareTeamProject(comment:String):Bool;
	function syncTeamProject():Bool;
	function closeTeamProject():Bool;
	function convertTeamProjectToProject(project_file:File):Bool;
	function listTeamProjects():Array<String>;
	function isTeamProjectOpen(teamProjectName:String):Bool;
	function isAnyTeamProjectOpen():Bool;
	function isTeamProjectEnabled():Bool;
	function isLoggedInToTeamProject():Bool;
	function isSyncCommandEnabled():Bool;
	function isShareCommandEnabled():Bool;
	function isResolveCommandEnabled():Bool;
	function resolveConflict(ResolveType:ResolveType):Bool;
}

extern class Item {
	var name:String;
	var comment:String;
	var readonly:Dynamic;
	var id:Float;
	// var parentFolder:FolderItem;
	var selected:Bool;
	var typeName:String;
	var label:Float;
	function remove():Void;
}

extern class ItemCollection extends Collection {
	// var readonly:Dynamic;
	function addComp(name:String, width:Float, height:Float, pixelAspect:Float, duration:Float, frameRate:Float):CompItem;
	// function addFolder(name:String):FolderItem;
}

extern class Collection {
	// var readonly:Dynamic;
	var length:Float;
}

extern class CompItem extends AVItem {
	// var frameDuration:Float;
	var dropFrame:Bool;
	var workAreaStart:Float;
	var workAreaDuration:Float;
	// var readonly:Dynamic;
	var numLayers:Float;
	var hideShyLayers:Bool;
	var motionBlur:Bool;
	var draft3d:Bool;
	var frameBlending:Bool;
	var preserveNestedFrameRate:Bool;
	var preserveNestedResolution:Bool;
	var bgColor:Array<Dynamic>;
	// var activeCamera:haxe.extern.EitherType<CameraLayer, Null<Dynamic>>;
	var displayStartTime:Float;
	var resolutionFactor:Array<Dynamic>;
	var shutterAngle:Float;
	var shutterPhase:Float;
	var motionBlurSamplesPerFrame:Float;
	var motionBlurAdaptiveSampleLimit:Float;
	var layers:LayerCollection;
	var markerProperty:Property;
	var selectedLayers:Array<Layer>;
	var selectedProperties:Array<PropertyBase>;
	var renderer:String;
	var renderers:Array<String>;
	function duplicate():CompItem;
	@:overload(function(otherLayer:Layer, relIndex:Float):Layer {})
	@:overload(function(name:String):Layer {})
	function layer(index:Float):Layer;
	function openInViewer():haxe.extern.EitherType<Viewer, Null<Dynamic>>;
	function saveFrameToPng(time:Float, file:File):Void;
	function ramPreviewTest(unknown:Dynamic, zoom:Float, exposure:Float):Void;
}

extern class AVItem extends Item {
	// var name:String;
	var width:Float;
	var height:Float;
	var pixelAspect:Float;
	var frameRate:Float;
	var frameDuration:Float;
	var duration:Float;
	var useProxy:Bool;
	// var readonly:Dynamic;
	var proxySource:FootageSource;
	var time:Float;
	var usedIn:Array<CompItem>;
	var hasVideo:Bool;
	var hasAudio:Bool;
	var footageMissing:Bool;
	function setProxy(file:File):Void;
	function setProxyWithSequence(file:File, forceAlphabetical:Bool):Void;
	function setProxyWithSolid(color:Array<Dynamic>, name:String, width:Float, height:Float, pixelAspect:Float):Void;
	function setProxyWithPlaceholder(name:String, width:Float, height:Float, frameRate:Float, duration:Float):Void;
	function setProxyToNone():Void;
}

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

@:enum abstract AlphaMode(Int) {
	var IGNORE = 0;
	var STRAIGHT = 1;
	var PREMULTIPLIED = 2;
}

@:enum abstract FieldSeparationType(Int) {
	var OFF = 0;
	var UPPER_FIELD_FIRST = 1;
	var LOWER_FIELD_FIRST = 2;
}

@:enum abstract PulldownMethod(Int) {
	var PULLDOWN_3_2 = 0;
	var ADVANCE_24P = 1;
}

@:enum abstract PulldownPhase(Int) {
	var OFF = 0;
	var SSWWW = 1;
	var SWWWS = 2;
	var SWWWW_24P_ADVANCE = 3;
	var WSSWW = 4;
	var WSWWW_24P_ADVANCE = 5;
	var WWSSW = 6;
	var WWSWW_24P_ADVANCE = 7;
	var WWWSS = 8;
	var WWWSW_24P_ADVANCE = 9;
	var WWWWS_24P_ADVANCE = 10;
}

extern class FolderItem extends Item {
	// var readonly:Dynamic;
	var items:ItemCollection;
	var numItems:Float;
	function item(index:Float):Item;
}

extern class LayerCollection extends Collection {
	var readonly:Dynamic;
	function add(item:AVItem, ?duration:Float):AVLayer;
	function addNull(?duration:Float):AVLayer;
	function addSolid(color:Array<Dynamic>, name:String, width:Float, height:Float, pixelAspect:Float, ?duration:Float):AVLayer;
	function addText(?sourceText:haxe.extern.EitherType<String, TextDocument>):TextLayer;
	function addBoxText(size:Array<Dynamic>, ?sourceText:haxe.extern.EitherType<String, TextDocument>):TextLayer;
	function addCamera(name:String, centerPoint:Array<Dynamic>):CameraLayer;
	function addLight(name:String, centerPoint:Array<Dynamic>):LightLayer;
	function addShape():ShapeLayer;
	function byName(name:String):haxe.extern.EitherType<Layer, Null>;
	function precompose(layerIndicies:Array<Float>, name:String, ?moveAllAttributes:Bool):CompItem;
}

extern class RenderQueue {
	var readonly:Dynamic;
	var rendering:Bool;
	var numItems:Float;
	var canQueueInAME:Bool;
	var items:RQItemCollection;
	function showWindow(doShow:Bool):Void;
	function render():Void;
	function pauseRendering(pause:Bool):Void;
	function stopRendering():Void;
	function item(index:Float):RenderQueueItem;
	function queueInAME(render_immediately_in_AME:Bool):Void;
}

extern class RenderQueueItem {
	var readonly:Dynamic;
	var numOutputModules:Float;
	var render:Bool;
	var startTime:haxe.extern.EitherType<Date, Null<Dynamic>>;
	var elapsedSeconds:haxe.extern.EitherType<Float, Null<Dynamic>>;
	var timeSpanStart:Float;
	var timeSpanDuration:Float;
	var skipFrames:Float;
	var comp:CompItem;
	var outputModules:OMCollection;
	var templates:Array<String>;
	var status:RQItemStatus;
	var onStatusChanged:haxe.extern.EitherType<String, Null<Dynamic>>;
	var logType:LogType;
	function outputModule(index:Float):OutputModule;
	function remove():Void;
	function saveAsTemplate(name:String):Void;
	function applyTemplate(templateName:String):Void;
	function duplicate():RenderQueueItem;
	function getSetting(key:String):haxe.extern.EitherType<String, Float>;
	function getSettings(format:GetSettingsFormat):Dynamic;
	function setSetting(key:String, value:haxe.extern.EitherType<String, Float>):Void;
	function setSettings(settings:Dynamic):Void;
}

extern class RQItemCollection extends Collection {
	function add(comp:CompItem):RenderQueueItem;
}

extern class OMCollection extends Collection {
	// 	var readonly : Dynamic;
	// /** Retrieves a OutputModule object in the collection by its index number. The first object is at index 1. */
	//     readonly [index: number]: OutputModule
}

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

extern class AVLayer extends Layer {
	// var readonly:Dynamic;
	var source:Dynamic;
	var isNameFromSource:Bool;
	var height:Float;
	var width:Float;
	var audioEnabled:Bool;
	var motionBlur:Bool;
	var effectsActive:Bool;
	var adjustmentLayer:Bool;
	var guideLayer:Bool;
	var threeDLayer:Bool;
	var threeDPerChar:Bool;
	var environmentLayer:Bool;
	var canSetCollapseTransformation:Bool;
	var collapseTransformation:Bool;
	var frameBlending:Bool;
	var frameBlendingType:FrameBlendingType;
	var canSetTimeRemapEnabled:Bool;
	var timeRemapEnabled:Bool;
	var hasAudio:Bool;
	var audioActive:Bool;
	var blendingMode:BlendingMode;
	var preserveTransparency:Bool;
	var trackMatteType:TrackMatteType;
	var isTrackMatte:Bool;
	var hasTrackMatte:Bool;
	var quality:LayerQuality;
	var samplingQuality:LayerSamplingQuality;
	function audioActiveAtTime(time:Float):Bool;
	function calculateTransformFromPoints(pointTopLeft:Array<Dynamic>, pointTopRight:Dynamic, pointBottomRight:Dynamic):Dynamic;
	function replaceSource(newSource:AVItem, fixExpressions:Bool):Void;
	function sourceRectAtTime(timeT:Float, extents:Bool):{
		var top:Float;
		var left:Float;
		var width:Float;
		var height:Float;
	};
	function openInViewer():haxe.extern.EitherType<Viewer, Null<Dynamic>>;
	function sourcePointToComp(point:Array<Dynamic>):Array<Dynamic>;
	function compPointToSource(point:Array<Dynamic>):Array<Dynamic>;
	var timeRemap:Property;
	var mask:MaskPropertyGroup;
	var effect:PropertyGroup;
	var layerStyle:_LayerStyles;
	var geometryOption:_GeometryOptionsGroup;
	var materialOption:_MaterialOptionsGroup;
	var audio:_AudioGroup;
}

extern class Layer {
	var readonly:Dynamic;
	var index:Float;
	var name:String;
	var parent:haxe.extern.EitherType<Layer, Null<Dynamic>>;
	var time:Float;
	var startTime:Float;
	var stretch:Float;
	var inPoint:Float;
	var outPoint:Float;
	var enabled:Bool;
	var solo:Bool;
	var shy:Bool;
	var locked:Bool;
	var hasVideo:Bool;
	var active:Bool;
	var nullLayer:Bool;
	var selectedProperties:Array<PropertyBase>;
	var comment:String;
	var containingComp:CompItem;
	var isNameSet:Bool;
	var label:Float;
	var autoOrient:AutoOrientType;
	function remove():Void;
	function moveToBeginning():Void;
	function moveToEnd():Void;
	function moveAfter(layer:Layer):Void;
	function moveBefore(layer:Layer):Void;
	function duplicate():Layer;
	function copyToComp(intoComp:CompItem):Void;
	function activeAtTime(time:Float):Bool;
	function setParentWithJump(?newParent:Layer):Void;
	function applyPreset(presetName:File):Void;
	var matchName:String;
	var propertyDepth:Float;
	var propertyType:PropertyType;
	var selected:Bool;
	var numProperties:Float;
	function propertyGroup(?countUp:Float):PropertyGroup;
	@:overload(function(name:String):PropertyBase {})
	function property(index:Float):PropertyBase;
	var marker:Property;
	var transform:_TransformGroup;
	var anchorPoint:Property;
	var position:Property;
	var xPosition:Property;
	var yPosition:Property;
	var zPosition:Property;
	var scale:Property;
	var orientation:Property;
	var rotation:Property;
	var xRotation:Property;
	var yRotation:Property;
	var zRotation:Property;
	var opacity:Property;
	var pointOfInterest:Property;
}

@:enum abstract FrameBlendingType(Int) {
	var FRAME_MIX = 0;
	var NO_FRAME_BLEND = 1;
	var PIXEL_MOTION = 2;
}
