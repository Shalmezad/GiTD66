package states;

import sprites.Player;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

class PlayState extends FlxState
{
	var _player:Player;
	override public function create():Void
	{
		super.create();
		_player = new Player();
		add(_player);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
}
