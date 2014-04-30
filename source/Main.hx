package;

import com.haxepunk.Engine;
import com.haxepunk.HXP;

class Main extends Engine {


	override public function init()
	{
		HXP.console.enable();
		HXP.scene = new scenes.GameScene();
	}
	public function new ()
	{
		super ();
	}

	public static function main()
	{
		new Main();
	}
}