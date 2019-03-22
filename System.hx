extern class System {
	var readonly : Dynamic;
	var userName : String;
	var machineName : String;
	var osName : String;
	var osVersion : String;
	function callSystem(cmdLineToExecute:String):String;
}
