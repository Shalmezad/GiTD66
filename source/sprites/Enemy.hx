package sprites;
import flixel.math.FlxPoint;
import flixel.FlxSprite;
class Enemy extends FlxSprite
{

	private var NORMAL_SPEED=120;

	public function new(point:FlxPoint)
	{
		super(point.x, point.y);
		makeGraphic(10,10,0xFFFF0000);
		// Pick a direction to go in:
		var angle:Float = Std.int(Math.random() * 8) * 45 * Math.PI / 180;

		velocity.x = Math.cos(angle) * NORMAL_SPEED;
		velocity.y = Math.sin(angle) * NORMAL_SPEED;
		this.elasticity=1;
	}
}
