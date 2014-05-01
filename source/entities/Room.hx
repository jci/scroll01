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
	private var _image : Image;
	
	public function new (player:Player)
	{
		super(0,0);
		_player = player;
		layer = 500;
		_image = new Image("graphics/mountains.png");
		_image.scale = 1.5;
		graphic = _image;
		
		//_floor = new Floor();
		
	
	}
}
