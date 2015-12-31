package openfl.display; #if !openfl_legacy


@:enum abstract LineScaleMode(Null<Int>) {
	
	public var HORIZONTAL = 0;
	public var NONE = 1;
	public var NORMAL = 2;
	public var VERTICAL = 3;
	
	@:from private static inline function fromString (value:String):LineScaleMode {
		
		return switch (value) {
			
			case "horizontal": HORIZONTAL;
			case "none": NONE;
			case "normal": NORMAL;
			case "vertical": VERTICAL;
			default: null;
			
		}
		
	}
	
	@:to private static inline function toString (value:Int):String {
		
		return switch (value) {
			
			case LineScaleMode.HORIZONTAL: "horizontal";
			case LineScaleMode.NONE: "none";
			case LineScaleMode.NORMAL: "normal";
			case LineScaleMode.VERTICAL: "vertical";
			default: null;
			
		}
		
	}
	
}


#else
typedef LineScaleMode = openfl._legacy.display.LineScaleMode;
#end