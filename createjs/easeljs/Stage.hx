package createjs.easeljs;

import js.html.Element;
import js.HTMLCanvasElement;

@:native("createjs.Stage")
extern class Stage extends Container {

	@:overload(function(elementId:String):Void{})
	public function new(canvas:HTMLCanvasElement):Void;
	
	public var autoClear:Bool;
	public var canvas:HTMLCanvasElement;
	public var mouseX:Float;
	public var mouseY:Float;
	public var mouseInBounds:Bool;
	public var tickOnUpdate:Bool;
	public var mouseMoveOutside:Bool;
	public var nextStage:Stage;
	
	public function update():Void;
	public function clear():Void;
	public function toDataURL(backgroundColor:String, mimeType:String):String;
	public function enableMouseOver(?frequency:Float = 20):Void;
	public function enableDOMEvents(?enable:Bool = true):Void;
	override public function clone():Stage;
	override public function toString():String;
	
	function _getElementRect(element:Element): { top:Float, left:Float, bottom:Float, right:Float };
	function _getPointerData(id:Int): { x:Float, y:Float };
	function _handleMouseMove(e:MouseEvent):Void;
	function _handlePointerMove(id:Int, e:MouseEvent, pageX:Float, pageY:Float):Void;
	function _updatePointerPosition(id:Int, e:Event, pageX:Float, pageY:Float):Void;
	function _handleMouseUp(e:MouseEvent):Void;
	function _handlePointerUp(id:Int, e:Event, clear:Bool):Void;
	function _handleMouseDown(e:MouseEvent):Void;
	function _handlePointerDown(id:Int, e:Event, clear:Bool):Void;
	function _testMouseOver(clear:Bool):Void;
	function _handleDoubleClick(e:MouseEvent):Void;
	function _dispatchMouseEvent(target:DisplayObject, type:String, bubbles:Bool, pointerId:Int, o:Dynamic, nativeEvent:MouseEvent):Void;
}
