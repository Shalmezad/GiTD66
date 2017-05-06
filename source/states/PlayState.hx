package states;

import sprites.Enemy;
import flixel.math.FlxRandom;
import flixel.math.FlxPoint;
import flixel.group.FlxGroup;
import sprites.Pickup;
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
	var _pickup:Pickup;
	var _score:Int;

	var _walls:FlxGroup;
	var _enemies:FlxGroup;

	override public function create():Void
	{
		super.create();
		_score = 0;
		_player = new Player(FlxG.width/2, FlxG.height/2);
		_pickup = new Pickup(randomPointInScreen());
		_walls = new FlxGroup();
		_enemies = new FlxGroup();

		add(_pickup);
		add(_player);
		add(_enemies);
		addWalls();
	}

	private function addWalls():Void
	{
		//Top wall:
		addWall(0,0,FlxG.width, 20);
		//Bottom wall:
		addWall(0,FlxG.height-20, FlxG.width, 20);
		// Left wall (beyond screen border):
		addWall(-20,0,20,FlxG.height);
		// Right wall (beyond screen border):
		addWall(FlxG.width, 0, 20, FlxG.height);

		add(_walls);
	}

	private function addWall(x:Int, y:Int, w:Int, h:Int)
	{
		var wall:FlxSprite = new FlxSprite(x,y);
		wall.makeGraphic(w,h,0xFF444444);
		wall.immovable = true;
		_walls.add(wall);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		FlxG.overlap(_player, _pickup, playerPickupOverlap);
		FlxG.collide(_player, _walls);
		FlxG.collide(_enemies, _walls);
	}

	private function playerPickupOverlap(pl:Player, pi:Pickup)
	{
		// Give ourself a point:
		_score += 1;
		// Reset the pickup position:
		var newPoint:FlxPoint = randomPointInScreen();
		_pickup.reset(newPoint.x,newPoint.y);
		// Add an enemy;
		newPoint = randomPointInScreen();
		var enemy:Enemy = new Enemy(newPoint);
		_enemies.add(enemy);
	}

	public static function randomPointInScreen():FlxPoint
	{
		var x:Float = Math.random() * FlxG.width;
		var y:Float = Math.random() * (FlxG.height - 40) + 20;
		return FlxPoint.get(x,y);
	}

}
