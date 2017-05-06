package sprites;
import flixel.FlxSprite;
class Enemy extends FlxSprite
{
	public function new()
	{
		super();
		makeGraphic(10,10,0xFFFF0000);
	}
}
