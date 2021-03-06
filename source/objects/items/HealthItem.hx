package objects.items;
import objects.Player;
import flixel.util.FlxColor;
import flixel.FlxSprite;
import flixel.FlxG;

class HealthItem extends Item
{

	public function new(x:Float,y:Float) 
	{
		super(x, y);
		loadGraphic(AssetPaths.items__png, true, 8,8);
		animation.add("move", [9,10,11,12,13], 12);
		animation.play("move");
		set_name("HEALTH");
	}
	
	override function interact(player:Player)
	{
		if (player.HP < player.MAX_HP)
		player.HP++;
		
		super.interact(player);
	}
	
}