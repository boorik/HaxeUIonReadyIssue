package;

import haxe.ui.toolkit.core.Root;
import haxe.ui.toolkit.core.Toolkit;
import haxe.ui.toolkit.themes.GradientTheme;
import openfl.display.Sprite;
import openfl.Lib;

/**
 * ...
 * @author vincent blanchet
 */
class Main extends Sprite 
{
	var uiroot:Root;
	public function new() 
	{
		super();
		
		// Assets:
		// openfl.Assets.getBitmapData("img/assetname.jpg");
		Toolkit.theme = new GradientTheme();
		Toolkit.init();
		
		var mainController = new MainTestController();
		mainController.clickCB = openSub;
		uiroot = Toolkit.openFullscreen(function(root:Root) 
		{
			root.addChild(mainController.view);
		});
		
		
		
	}
	
	function openSub() 
	{
		trace("openSub");
		trace("uiroot:" + uiroot);
		uiroot.addChild(new SubTestController().view);
	}
	
	

}
