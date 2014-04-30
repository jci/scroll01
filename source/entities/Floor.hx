package entities;

import com.haxepunk.Entity;
import com.haxepunk.HXP;
import com.haxepunk.graphics.Image;

class Floor extends Entity
{
	// floor class
	private var image:Image;

	public function new()
	{
		super(0,HXP.halfHeight+80);
		type = "floor";
		image = new Image("graphics/miyamoto_sheet.png");
		image.scale = 2;
		graphic = image;
	}

	public override function update()
	{
		moveBy(-1,0);
		if (x == -150)
			{
				x = 0;
				HXP.console.log(["rotating"]);
			}
		
		super.update();
	}

	
	
	
}