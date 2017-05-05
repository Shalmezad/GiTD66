package ;
import flixel.FlxG;
class InputHandler
{
	public static function UP():Bool
	{
		return FlxG.keys.pressed.W || FlxG.keys.pressed.UP;
	}

	public static function DOWN():Bool
	{
		return FlxG.keys.pressed.S || FlxG.keys.pressed.DOWN;
	}

	public static function LEFT():Bool
	{
		return FlxG.keys.pressed.A || FlxG.keys.pressed.LEFT;
	}

	public static function RIGHT():Bool
	{
		return FlxG.keys.pressed.D || FlxG.keys.pressed.RIGHT;
	}

}
