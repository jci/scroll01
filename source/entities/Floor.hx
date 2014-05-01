package entities;

// messing with the scrolling :(

import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.graphics.Image;
import com.haxepunk.utils.Input;
import com.haxepunk.utils.Key;


class Floor extends Entity
{
	// floor class
	private var image:Image;
	public var isMoving : Bool;
	private var movingFactor : Float;
	private var counting : Int;
	private var scrollAdjust : Int;
	private var boundLimit : Int;
	
	public function new()
	{
		super(0,HXP.halfHeight+95);
		type = "floor";
		image = new Image("graphics/floortile.png");
		image.scale = 0.7;
		graphic = image;
		isMoving = false;
		movingFactor = 2;
		counting=0;
		x = 0;
		scrollAdjust = 0;
		boundLimit = 1500;
		
		Input.define("more",[Key.S]);
		Input.define("less",[Key.A]);
		Input.define("restart",[Key.D]);

		Input.define("mfl", [Key.Q]);
		Input.define("mfm", [Key.W]);
		
		
	}

	public override function update()
	{
		if (isMoving)
			{
				moveBy(-movingFactor,0,null,true);

				//HXP.console.log(["rotating ",HXP.width, " ", x]);
						
				
				if (x < -boundLimit)
					{
						isMoving = false;

					}
			}
		else
			{
				//counting++;
				//HXP.console.log(["X : ",x]);
				//if (counting > 100)
				//	{
				isMoving = true;
				x = scrollAdjust;
				//counting=0;
					//}
			}


		if (Input.pressed("more"))
			{
				scrollAdjust++;
				HXP.console.log([scrollAdjust]);
			}

		if (Input.pressed("less"))
			{
				scrollAdjust--;
				HXP.console.log([scrollAdjust]);
			}

		if (Input.pressed("restart"))
			{
				isMoving = false;
			}


		// messing with moving factor

		if (Input.pressed("mfm"))
			{
				movingFactor+=0.1;
				HXP.console.log([movingFactor]);
			}

		if (Input.pressed("mfl"))
			{
				movingFactor-=0.1;
				HXP.console.log([movingFactor]);
			}
		
		

		  
		super.update();
	}

	
	
	
}