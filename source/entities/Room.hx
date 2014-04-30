package entities;

import com.haxepunk.Entity;
import com.haxepunk.graphics.Image;
import com.haxepunk.HXP;

import entities.Player;
import entities.Floor;

class Room extends Entity
{
	private var _player : Player;
	private var _floor : Floor;
	
	public function new (player:Player)
	{
		super(0,0);
		_player = player;
		layer = 500;
		graphic = new Image("graphics/mountains.png");
		//_floor = new Floor();
		
	
	}
}
