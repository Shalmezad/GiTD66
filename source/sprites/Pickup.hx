package sprites;
import flixel.math.FlxPoint;
import flixel.FlxSprite;
class Pickup extends FlxSprite
{
	public function new(point:FlxPoint)
	{
		super(point.x, point.y);
		makeGraphic(5,5,0xFF00FFFF);
	}


}
