package §_-JH§
{
   import flash.display.MovieClip;
   import flash.geom.ColorTransform;
   import flash.utils.getTimer;
   import flash.utils.getDefinitionByName;
   
   public class Costume extends Object
   {
      
      public function Costume(param1:int, param2:int, param3:int, param4:int, param5:uint, param6:int)
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         _loc7_;
         this.spriteSheets = new Array();
         this.§_-G4§ = [];
         super();
         _loc7_;
         _loc7_;
         this.headID = param1;
         this.bodyID = param2;
         this.handID = param3;
         _loc7_;
         this.footID = param4;
         _loc8_;
         _loc8_;
         this.§_-FD§ = param5;
         this.teamID = param6;
         this.ct = new ColorTransform();
         this.ct.color = this.§_-FD§;
         this.processQueue = [];
         _loc7_;
         _loc7_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_BOB,new §_-w5§());
         _loc8_;
         _loc8_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_WALK,new §_-Ef§());
         _loc8_;
         _loc8_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_FLYING,new §_-pI§());
         _loc8_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_STANDONFRONT,new §_-Mi§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_JETPACK,new §_-Km§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_TELEPORTOUT,new §_-tv§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_TELEPORTIN,new §_-ly§());
         _loc8_;
         _loc8_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_WAIT,new §_-i5§());
         _loc8_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_AIM,new §_-R8§());
         _loc7_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_BOUNCESHIELDDEATH,new §_-1A§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_DISSOLVESHIELDDEATH,new §_-nt§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_LYINGONBACK,new §_-06§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_LYINGONFRONT,new §_-I-§());
         if(SafeGlobal.GAME.teams.length > this.teamID)
         {
            this.§_-82§(SafeGlobal.ANIM_UNIT_VICTORY,SafeGlobal.§with§(SafeGlobal.GAME.teams[this.teamID].victoryID));
            _loc8_;
            this.§_-82§(SafeGlobal.ANIM_UNIT_IDLE1,SafeGlobal.§_-c-§(SafeGlobal.GAME.teams[this.teamID].idle1ID));
            _loc8_;
            this.§_-82§(SafeGlobal.ANIM_UNIT_IDLE2,SafeGlobal.§_-c-§(SafeGlobal.GAME.teams[this.teamID].idle2ID));
            this.§_-82§(SafeGlobal.ANIM_UNIT_IDLE3,SafeGlobal.§_-c-§(SafeGlobal.GAME.teams[this.teamID].idle3ID));
            _loc7_;
            this.§_-82§(SafeGlobal.ANIM_UNIT_IDLE4,SafeGlobal.§_-c-§(SafeGlobal.GAME.teams[this.teamID].idle4ID));
         }
         else
         {
            this.§_-82§(SafeGlobal.ANIM_UNIT_VICTORY,SafeGlobal.§with§(0));
            this.§_-82§(SafeGlobal.ANIM_UNIT_IDLE1,SafeGlobal.§_-c-§(0));
            _loc8_;
            _loc8_;
            this.§_-82§(SafeGlobal.ANIM_UNIT_IDLE2,SafeGlobal.§_-c-§(0));
            _loc8_;
            this.§_-82§(SafeGlobal.ANIM_UNIT_IDLE3,SafeGlobal.§_-c-§(0));
            this.§_-82§(SafeGlobal.ANIM_UNIT_IDLE4,SafeGlobal.§_-c-§(0));
         }
         this.§_-82§(SafeGlobal.ANIM_UNIT_CRY,new §_-BZ§());
         _loc8_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_VOMIT,new §_-UU§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_SICKBOB,new §_-mP§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_COLLAPSEONFRONT,new §_-vi§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_COLLAPSEONBACK,new §_-bZ§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_TABLET,new §_-Tz§());
         _loc8_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_UPPERCUTSETUP,new §_-t§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_UPPERCUTHOLD,new §_-Mk§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_UPPERCUT,new §_-a§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_SPACEBALLSWINGSETUP,new §_-9J§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_SPACEBALLSWINGHOLD,new §_-ca§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_SPACEBALLSWING,new §_-9n§());
         _loc7_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_TAZERJABSETUP,new §_-yU§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_TAZERJABHOLD,new §_-qb§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_TAZERJAB,new §_-FA§());
         _loc7_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_STANDONBACK,new §_-l0§());
         _loc8_;
         _loc8_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_FALLONBACK,new §_-C§());
         _loc7_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_FALLONFRONT,new §_-As§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_JETPACKAIM,new §_-0-G§());
         _loc7_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_LAYSTANDARDMINE,new §_-5O§());
         _loc8_;
         _loc8_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_LAYCLUSTERMINE,new §_-Ny§());
         _loc8_;
         _loc8_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_LAYDRILLMINE,new §_-Cl§());
         _loc8_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_LAYROVER,new §_-qg§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_LAYSUPERROVER,new §_-JF§());
         _loc8_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_ROLL,new §_-pX§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_FLYINGDEAD,new §_-br§());
         _loc8_;
         _loc8_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_MIDAIRDIE,new §_-K§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_GOLFSWINGSETUP,new §_-Eb§());
         _loc8_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_GOLFSWINGHOLD,new override());
         _loc7_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_GOLFSWING,new §_-Ti§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_TWITCHBACK,new §_-Z0§());
         _loc8_;
         _loc8_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_TWITCHFRONT,new §_-uZ§());
         _loc7_;
         _loc7_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_LAYMAGNETICROVER,new §_-kI§());
         _loc7_;
         _loc7_;
         this.§_-82§(SafeGlobal.ANIM_UNIT_THINKINGSETUP,new §_-iy§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_THINKING,new §_-0q§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_TAZED,new §_-14§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_SLEEP,new §_-tJ§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_ROCKETGLOVES,new §_-Wg§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_ENERGYSWORDSETUP,new §_-zn§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_ENERGYSWORDHOLD,new §_-pl§());
         this.§_-82§(SafeGlobal.ANIM_UNIT_ENERGYSWORD,new §_-t0§());
      }
      
      public var headID:int;
      
      public var bodyID:int;
      
      public var handID:int;
      
      public var footID:int;
      
      public var §_-FD§:uint;
      
      public var spriteSheets:Array;
      
      public var unitGraphic:MovieClip;
      
      public var ct:ColorTransform;
      
      public var teamID:int;
      
      public var processQueue:Array;
      
      public var §_-G4§:Array;
      
      public function §_-82§(param1:int, param2:MovieClip) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         this.processQueue.push([param1,param2]);
      }
      
      public function processQueueItem(param1:Boolean = false) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = false;
         while(!_loc2_)
         {
            _loc4_;
            _loc4_;
            if(!param1 || (this.§_-B3§(this.processQueue[this.processQueue.length - 1][0])))
            {
               _loc4_;
               this.§_-lL§(this.processQueue[this.processQueue.length - 1][0],this.processQueue[this.processQueue.length - 1][1]);
               _loc4_;
               _loc4_;
               _loc4_;
               _loc2_ = true;
            }
            _loc3_;
            _loc3_;
            this.processQueue.splice(this.processQueue.length - 1,1);
            if(this.processQueue.length == 0)
            {
               _loc2_ = true;
            }
         }
      }
      
      public function §_-B3§(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(this.§_-G4§.indexOf(param1) == -1)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            return false;
         }
         return true;
      }
      
      public function §_-lL§(param1:int, param2:MovieClip) : *
      {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc3_:int = getTimer();
         _loc15_;
         this.unitGraphic = param2;
         var _loc4_:Class = getDefinitionByName("HeadClip" + this.headID) as Class;
         var _loc5_:MovieClip = new _loc4_() as MovieClip;
         _loc16_;
         this.unitGraphic.head.addChild(_loc5_);
         _loc16_;
         if(this.unitGraphic.body is §_-7w§)
         {
            _loc4_ = getDefinitionByName("BodyClip" + this.bodyID) as Class;
         }
         else
         {
            _loc4_ = getDefinitionByName("BodyClipNew" + this.bodyID) as Class;
         }
         var _loc6_:MovieClip = new _loc4_() as MovieClip;
         _loc15_;
         this.unitGraphic.body.addChild(_loc6_);
         _loc4_ = getDefinitionByName("HandClip" + this.handID) as Class;
         var _loc7_:MovieClip = new _loc4_() as MovieClip;
         _loc15_;
         this.unitGraphic.righthand.addChild(_loc7_);
         var _loc8_:MovieClip = new _loc4_() as MovieClip;
         _loc15_;
         this.unitGraphic.lefthand.addChild(_loc8_);
         _loc4_ = getDefinitionByName("FootClip" + this.footID) as Class;
         var _loc9_:MovieClip = new _loc4_() as MovieClip;
         _loc16_;
         _loc16_;
         this.unitGraphic.rightfoot.addChild(_loc9_);
         var _loc10_:MovieClip = new _loc4_() as MovieClip;
         _loc15_;
         this.unitGraphic.leftfoot.addChild(_loc10_);
         _loc5_.inside.transform.colorTransform = this.ct;
         _loc6_.inside.transform.colorTransform = this.ct;
         _loc8_.inside.transform.colorTransform = this.ct;
         _loc10_.inside.transform.colorTransform = this.ct;
         _loc7_.inside.transform.colorTransform = this.ct;
         _loc15_;
         _loc9_.inside.transform.colorTransform = this.ct;
         var _loc11_:int = getTimer();
         _loc15_;
         this.spriteSheets[param1] = new §_-TN§(this.unitGraphic);
         var _loc12_:int = getTimer() - _loc11_;
         _loc15_;
         _loc15_;
         var _loc13_:int = this.spriteSheets[param1].sheetBD.width * this.spriteSheets[param1].sheetBD.height * 4;
         _loc16_;
         _loc16_;
         var _loc14_:Number = Math.round(_loc13_ / 1024 * 10) / 10;
      }
   }
}
