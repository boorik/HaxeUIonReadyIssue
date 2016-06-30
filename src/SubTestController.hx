package;

/**
 * ...
 * @author vincent blanchet
 */
@:build(haxe.ui.toolkit.core.Macros.buildController("assets/view/subTestView.xml"))
class SubTestController extends haxe.ui.toolkit.core.XMLController
{

	public function new() 
	{
		trace("SubTestController");
	}
	
	override public function onReady():Void
	{
		super.onReady();
		trace("onReady");
		this.subText.text = "onReady fired :)";
	}
	
}