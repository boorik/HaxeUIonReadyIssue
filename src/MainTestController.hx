package;

/**
 * ...
 * @author vincent blanchet
 */
@:build(haxe.ui.toolkit.core.Macros.buildController("assets/view/mainTestView.xml"))
class MainTestController extends haxe.ui.toolkit.core.XMLController
{
	var subController:SubTestController;
	public var clickCB:Void->Void;
	public function new() 
	{
		//subController = new SubTestController();
		mainButton.onClick = function(e:haxe.ui.toolkit.events.UIEvent){
			if (clickCB != null)
				clickCB();
		}
	}

	override public function onReady():Void
	{
		trace("onReady");
	}
}