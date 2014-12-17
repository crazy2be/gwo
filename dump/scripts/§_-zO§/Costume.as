package §_-zO§
{
   import flash.display.MovieClip;
   import flash.geom.ColorTransform;
   import flash.utils.getTimer;
   import flash.utils.getDefinitionByName;
   
   public class Costume extends Object
   {
      
      public function Costume(param1:int, param2:int, param3:int, param4:int, param5:uint, param6:int)
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         _loc7_;
         _loc7_;
         this.spriteSheets = new Array();
         this.§_-0f§ = [];
         _loc7_;
         _loc7_;
         super();
         this.headID = param1;
         _loc8_;
         _loc8_;
         this.bodyID = param2;
         _loc8_;
         _loc8_;
         this.handID = param3;
         this.footID = param4;
         this.§_-CF§ = param5;
         _loc8_;
         this.teamID = param6;
         this.ct = new ColorTransform();
         _loc8_;
         _loc8_;
         this.ct.color = this.§_-CF§;
         this.processQueue = [];
         _loc7_;
         _loc7_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_BOB,new §_-2u§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_WALK,new §_-tb§());
         _loc7_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_FLYING,new §_-SR§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_STANDONFRONT,new §_-K3§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_JETPACK,new §_-FM§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_TELEPORTOUT,new §_-f1§());
         _loc8_;
         _loc8_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_TELEPORTIN,new §_-a8§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_WAIT,new §_-Vc§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_AIM,new §_-Sj§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_BOUNCESHIELDDEATH,new §_-pk§());
         _loc7_;
         _loc7_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_DISSOLVESHIELDDEATH,new §_-Y6§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_LYINGONBACK,new §_-v1§());
         _loc8_;
         _loc8_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_LYINGONFRONT,new §_-sX§());
         _loc8_;
         _loc8_;
         if(SafeGlobal.GAME.teams.length > this.teamID)
         {
            _loc7_;
            this.§_-KG§(SafeGlobal.ANIM_UNIT_VICTORY,SafeGlobal.§_-DM§(SafeGlobal.GAME.teams[this.teamID].victoryID));
            _loc7_;
            this.§_-KG§(SafeGlobal.ANIM_UNIT_IDLE1,SafeGlobal.§_-do§(SafeGlobal.GAME.teams[this.teamID].idle1ID));
            this.§_-KG§(SafeGlobal.ANIM_UNIT_IDLE2,SafeGlobal.§_-do§(SafeGlobal.GAME.teams[this.teamID].idle2ID));
            this.§_-KG§(SafeGlobal.ANIM_UNIT_IDLE3,SafeGlobal.§_-do§(SafeGlobal.GAME.teams[this.teamID].idle3ID));
            _loc7_;
            _loc7_;
            this.§_-KG§(SafeGlobal.ANIM_UNIT_IDLE4,SafeGlobal.§_-do§(SafeGlobal.GAME.teams[this.teamID].idle4ID));
         }
         else
         {
            this.§_-KG§(SafeGlobal.ANIM_UNIT_VICTORY,SafeGlobal.§_-DM§(0));
            this.§_-KG§(SafeGlobal.ANIM_UNIT_IDLE1,SafeGlobal.§_-do§(0));
            this.§_-KG§(SafeGlobal.ANIM_UNIT_IDLE2,SafeGlobal.§_-do§(0));
            _loc7_;
            this.§_-KG§(SafeGlobal.ANIM_UNIT_IDLE3,SafeGlobal.§_-do§(0));
            _loc7_;
            this.§_-KG§(SafeGlobal.ANIM_UNIT_IDLE4,SafeGlobal.§_-do§(0));
         }
         this.§_-KG§(SafeGlobal.ANIM_UNIT_CRY,new §_-nC§());
         _loc7_;
         _loc7_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_VOMIT,new §_-Zl§());
         _loc8_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_SICKBOB,new §_-Al§());
         _loc8_;
         _loc8_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_COLLAPSEONFRONT,new §_-DA§());
         _loc8_;
         _loc8_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_COLLAPSEONBACK,new §_-vX§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_TABLET,new §_-NW§());
         _loc8_;
         _loc8_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_UPPERCUTSETUP,new §_-GC§());
         _loc7_;
         _loc7_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_UPPERCUTHOLD,new §_-2c§());
         _loc8_;
         _loc8_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_UPPERCUT,new §_-bX§());
         _loc7_;
         _loc7_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_SPACEBALLSWINGSETUP,new §_-iT§());
         _loc7_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_SPACEBALLSWINGHOLD,new §_-pa§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_SPACEBALLSWING,new §_-nU§());
         _loc7_;
         _loc7_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_TAZERJABSETUP,new §_-zZ§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_TAZERJABHOLD,new §_-1z§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_TAZERJAB,new §_-3R§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_STANDONBACK,new §_-rw§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_FALLONBACK,new §_-Z1§());
         _loc8_;
         _loc8_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_FALLONFRONT,new §_-BR§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_JETPACKAIM,new §_-kC§());
         _loc7_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_LAYSTANDARDMINE,new §_-Gt§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_LAYCLUSTERMINE,new §_-7Y§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_LAYDRILLMINE,new §_-yH§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_LAYROVER,new §_-hS§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_LAYSUPERROVER,new §_-wW§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_ROLL,new §_-wK§());
         _loc7_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_FLYINGDEAD,new §_-t0§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_MIDAIRDIE,new §_-hA§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_GOLFSWINGSETUP,new §_-Wj§());
         _loc8_;
         _loc8_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_GOLFSWINGHOLD,new §_-rg§());
         _loc7_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_GOLFSWING,new §_-Ji§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_TWITCHBACK,new §_-fN§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_TWITCHFRONT,new §_-Ba§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_LAYMAGNETICROVER,new §_-g1§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_THINKINGSETUP,new §_-ZO§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_THINKING,new §_-lt§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_TAZED,new §_-49§());
         _loc7_;
         _loc7_;
         this.§_-KG§(SafeGlobal.ANIM_UNIT_SLEEP,new §_-s1§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_ROCKETGLOVES,new §_-qh§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_ENERGYSWORDSETUP,new §_-C9§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_ENERGYSWORDHOLD,new §_-4q§());
         this.§_-KG§(SafeGlobal.ANIM_UNIT_ENERGYSWORD,new §_-sZ§());
      }
      
      public var headID:int;
      
      public var bodyID:int;
      
      public var handID:int;
      
      public var footID:int;
      
      public var §_-CF§:uint;
      
      public var spriteSheets:Array;
      
      public var unitGraphic:MovieClip;
      
      public var ct:ColorTransform;
      
      public var teamID:int;
      
      public var processQueue:Array;
      
      public var §_-0f§:Array;
      
      public function §_-KG§(param1:int, param2:MovieClip) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
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
            if(!param1 || (this.§_-jY§(this.processQueue[this.processQueue.length - 1][0])))
            {
               this.§_-5n§(this.processQueue[this.processQueue.length - 1][0],this.processQueue[this.processQueue.length - 1][1]);
               _loc3_;
               _loc4_;
               _loc2_ = true;
            }
            _loc4_;
            _loc4_;
            this.processQueue.splice(this.processQueue.length - 1,1);
            if(this.processQueue.length == 0)
            {
               _loc2_ = true;
            }
         }
      }
      
      public function §_-jY§(param1:int) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(this.§_-0f§.indexOf(param1) == -1)
         {
            _loc3_;
            _loc3_;
            return false;
         }
         return true;
      }
      
      public function §_-5n§(param1:int, param2:MovieClip) : *
      {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc3_:int = getTimer();
         _loc15_;
         _loc15_;
         this.unitGraphic = param2;
         var _loc4_:Class = getDefinitionByName("HeadClip" + this.headID) as Class;
         var _loc5_:MovieClip = new _loc4_() as MovieClip;
         _loc15_;
         _loc15_;
         this.unitGraphic.head.addChild(_loc5_);
         _loc15_;
         if(this.unitGraphic.body is §_-8J§)
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
         _loc15_;
         this.unitGraphic.righthand.addChild(_loc7_);
         var _loc8_:MovieClip = new _loc4_() as MovieClip;
         _loc16_;
         _loc16_;
         this.unitGraphic.lefthand.addChild(_loc8_);
         _loc4_ = getDefinitionByName("FootClip" + this.footID) as Class;
         var _loc9_:MovieClip = new _loc4_() as MovieClip;
         _loc16_;
         this.unitGraphic.rightfoot.addChild(_loc9_);
         var _loc10_:MovieClip = new _loc4_() as MovieClip;
         _loc15_;
         this.unitGraphic.leftfoot.addChild(_loc10_);
         _loc5_.inside.transform.colorTransform = this.ct;
         _loc6_.inside.transform.colorTransform = this.ct;
         _loc8_.inside.transform.colorTransform = this.ct;
         _loc16_;
         _loc10_.inside.transform.colorTransform = this.ct;
         _loc7_.inside.transform.colorTransform = this.ct;
         _loc9_.inside.transform.colorTransform = this.ct;
         var _loc11_:int = getTimer();
         _loc15_;
         _loc15_;
         this.spriteSheets[param1] = new §_-lS§(this.unitGraphic);
         var _loc12_:int = getTimer() - _loc11_;
         _loc16_;
         var _loc13_:int = this.spriteSheets[param1].sheetBD.width * this.spriteSheets[param1].sheetBD.height * 4;
         _loc16_;
         var _loc14_:Number = Math.round(_loc13_ / 1024 * 10) / 10;
      }
   }
}
