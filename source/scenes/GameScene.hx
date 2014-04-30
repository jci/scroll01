package scenes;

import com.haxepunk.Scene;
import com.haxepunk.HXP;
import entities.Player;
import entities.Room; 
import entities.Floor;

class GameScene extends Scene
{
	private var score:Int;
	private static var _player:Player;
	private static var _room:Room;
	private static var _floor:Floor;
	
	public function new()
	{
		super();
		// add player
		_player = new Player(60,HXP.halfHeight+20);
		add(_player);
		_room = new Room(_player);
		add(_room);
		_floor = new Floor();
		add(_floor);
		
	}

	public override function begin()
	{
		//something
	
	}

	public override function update()
	{
		super.update();
		//	moveCamera();
	}

	private function spawn()
	{
		//something
	}

	public function moveCamera()
	{
		HXP.camera.x = _player.x - HXP.width / 2 + _player.halfWidth;
		
	}


}