package entities; 

import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;
import com.haxepunk.graphics.Spritemap;
import flash.geom.Point;

class Player extends Character
{
	public var sprite:Spritemap;

	public var flags:Array<String>;

	public var climbing:Bool;
	public var crouching:Bool;
	public var onLadder:Bool;
	public var disableControls:Bool;
	public var maxJumps:Int;
	private static inline var kJumpForce:Float = 110;
	public var facingLeft : Bool;
	public var _height : Int;
	public var _width : Int;
	
	public function new (x:Float, y:Float)
	{
		super(x,y);

		_height = 80;
		_width = 56;

		sprite = new Spritemap("graphics/firefox.png",_width,_height);

		sprite.add("Walk",[3,4,5],12);
		sprite.add("Idle",[0,1,2],12);
		sprite.add("Jump",[3,4,5],6);
		graphic = sprite;
		type = "player";

		setHitbox(_width-8,_height-10,-8,-10);

		flags = new Array<String>();

		// Input defines

		Input.define("left", [Key.LEFT]);
		Input.define("right",[Key.RIGHT]);
		Input.define("jump",[Key.UP]);
	}

	public override function update()
	{

		if (Input.check("left"))
			{
				facingLeft = true;
			}

		if (Input.check("right"))
			{
				facingLeft = false;
			}

		if (Input.pressed("jump"))
		{

		}
				
		setAnimation();
		super.update();
	}
	
	private function setAnimation()
	{
		if (facingLeft)
			{
				sprite.flipped=true;
			}
		else
			{
				sprite.flipped=false;
			}
		sprite.play("Walk");
	}

	private var _jumps:Int;
	private var _up:Bool;
	private var _down:Bool;
	
	private var _weaponIndex:Int;

	//	private var sfx:Map<String,Sfx>;

	private static inline var kMoveSpeed:Float = 60;
	
	private static inline var kLadderSpeed:Float = 60;
	private static inline var kGravityAcceleration:Float = 420;
}
