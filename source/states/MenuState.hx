package states;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.math.FlxMath;

class MenuState extends FlxState
{
	var _btnStart:FlxButton;
	var _btnInstructions:FlxButton;

	override public function create():Void
	{
		super.create();

		var titleText:FlxText = new FlxText(FlxG.width/2,
											20,
											0,
											"GiTD#66 Source Game");

		var btnX:Int = Std.int(FlxG.width/2);
		_btnStart = new FlxButton(btnX, FlxG.height/2, "Start Playing", startCallback);
		_btnInstructions = new FlxButton(btnX, FlxG.height/2+60, "How to Play", instructionCallback);

		add(titleText);
		add(_btnStart);
		add(_btnInstructions);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}

	private function startCallback():Void
	{
		FlxG.switchState(new PlayState());
	}

	private function instructionCallback():Void
	{
		//FlxG.switchState(new PlayState());
	}
}
