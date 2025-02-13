package stages.data;

import flixel.FlxSprite;
import flixel.math.FlxPoint;
import flixel.FlxObject;
import stages.elements.*;

class School extends BaseStage
{

	var bgGirls:BackgroundGirls;

    public override function init(){
        name = "school";
		uiType = "pixel";

		var sky = new FlxSprite(-200, -24).loadGraphic(Paths.image("week6/weeb/sky"));
		sky.scale.set(6, 6);
		sky.updateHitbox();
		sky.scrollFactor.set(0.1, 0.3);
		addToBackground(sky);

		var farBackTrees = new FlxSprite(-200, 0).loadGraphic(Paths.image("week6/weeb/farBackTrees"));
		farBackTrees.scale.set(6, 6);
		farBackTrees.updateHitbox();
		farBackTrees.scrollFactor.set(0.4, 0.8);
		addToBackground(farBackTrees);

		var school = new FlxSprite(-200, 0).loadGraphic(Paths.image("week6/weeb/school"));
		school.scale.set(6, 6);
		school.updateHitbox();
		school.scrollFactor.set(0.6, 0.9);
		addToBackground(school);

		var ground = new FlxSprite(-200, 0).loadGraphic(Paths.image("week6/weeb/ground"));
		ground.scale.set(6, 6);
		ground.updateHitbox();
		ground.scrollFactor.set(0.95, 0.95);
		addToBackground(ground);

		var backTrees = new FlxSprite(-200, 0).loadGraphic(Paths.image("week6/weeb/backTrees"));
		backTrees.scale.set(6, 6);
		backTrees.updateHitbox();
		backTrees.scrollFactor.set(0.81, 0.95);
		addToBackground(backTrees);

		var fgTrees = new FlxSprite(-818, -1098);
		fgTrees.frames = Paths.getPackerAtlas("week6/weeb/weebTrees");
		fgTrees.scale.set(6, 6);
		fgTrees.updateHitbox();
		fgTrees.scrollFactor.set(0.88, 0.95);
		fgTrees.animation.add('treeLoop', [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18], 12);
		fgTrees.animation.play('treeLoop');
		addToBackground(fgTrees);

		bgGirls = new BackgroundGirls(-100, 180);
		bgGirls.scrollFactor.set(0.95, 0.95);
		if (PlayState.SONG.player2 == "SenpaiAngry"){ bgGirls.getScared(); }
		bgGirls.scale.set(6, 6);
		bgGirls.updateHitbox();
		addToBackground(bgGirls);

		var leaves = new FlxSprite(-200, 0);
		leaves.frames = Paths.getSparrowAtlas("week6/weeb/petals");
		leaves.scale.set(6, 6);
		leaves.updateHitbox();
		leaves.scrollFactor.set(1, 1);
		leaves.animation.addByPrefix('leaves', 'PETALS ALL', 24, true);
		leaves.animation.play('leaves');
		addToBackground(leaves);

		dadStart.set(312.5, 932);
		bfStart.set(960, 870);
		gfStart.set(640, 801);

		bfCameraOffset.set(-48, 0);
		dadCameraOffset.set(12, 0);
    }

	public override function beat(curBeat:Int){
		bgGirls.dance();
	}
}