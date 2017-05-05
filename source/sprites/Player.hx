package sprites;
import flixel.FlxSprite;

class Player extends FlxSprite
{
	private var NORMAL_SPEED=120;
	public function new()
	{
		super();
		makeGraphic(20,20,0xFFFFFFFF);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		// Reset speed
		velocity.y = 0;
		velocity.x = 0;
		// Set base speed based on input
		if(InputHandler.UP() && !InputHandler.DOWN())
		{
			velocity.y = -1 * NORMAL_SPEED;
		}
		if(InputHandler.DOWN() && !InputHandler.UP())
		{
			velocity.y = 1 * NORMAL_SPEED;
		}
		if(InputHandler.LEFT() && !InputHandler.RIGHT())
		{
			velocity.x = -1 * NORMAL_SPEED;
		}
		if(InputHandler.RIGHT() && !InputHandler.LEFT())
		{
			velocity.x = 1 * NORMAL_SPEED;
		}



	}
}
