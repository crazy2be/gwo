package §_-JH§
{
   import §_-4M§.SoundManager;
   
   public class Mine extends SimObject
   {
      
      public function Mine(param1:int, param2:int)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         super();
         _loc4_;
         §_-fX§ = 4;
         _loc4_;
         if(param1 != -1)
         {
            _loc4_;
            §_-zq§(param1,param2);
            _loc4_;
            _loc4_;
         }
         animStep = 0;
      }
      
      public var triggerTime:int = 0;
      
      public var §_-xo§:int = 2000;
      
      public var triggerDistance:int = 40;
      
      public var §_-2m§:int = 0;
      
      public var §_-62§:int = 3;
      
      public var §_-mt§:int = 0;
      
      public var ignoreUnit:Unit;
      
      public var emp:Boolean = false;
      
      public var empRadius:int = 60;
      
      public var §_-Hx§:int = 1;
      
      public var §_-DU§:int = 0;
      
      public var active:Boolean = true;
      
      public var mineType:int = -1;
      
      public var damage:int = 0;
      
      public var §_-P0§:int = 0;
      
      public var outerRadius:int = 0;
      
      public var explosionRadius:int = 0;
      
      public var §_-W§:int = -1;
      
      public var payloadCount:int = 0;
      
      public var §_-fs§:String = "";
      
      public var §_-rC§:String = "";
      
      public var drillProj:Boolean = false;
      
      public var roving:Boolean = false;
      
      public var §_-k2§:Boolean = false;
      
      public var sound_uid:int = -1;
      
      override public function animProgress(param1:int = 0) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = 0;
         if(this.triggerTime > 0)
         {
            _loc6_;
            _loc5_;
            _loc5_;
            _loc2_ = param1 - this.triggerTime;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            if(this.§_-DU§ == 0 || this.§_-DU§ == 1 && _loc2_ > 500 || this.§_-DU§ == 2 && _loc2_ > 1000 || this.§_-DU§ == 3 && _loc2_ > 1250 || this.§_-DU§ == 4 && _loc2_ > 1500 || this.§_-DU§ == 5 && _loc2_ > 1700 || this.§_-DU§ == 6 && _loc2_ > 1900)
            {
               _loc5_;
               _loc5_;
               _loc6_;
               _loc6_;
               this.§_-DU§++;
               _loc6_;
               _loc6_;
               _loc5_;
               _loc5_;
               _loc5_;
               SoundManager.§_-Oc§(SafeGlobal.FX_MINE_BEEP,(SafeGlobal.GAME.simOnly) || (SafeGlobal.GAME.costumeCacheOnly));
               _loc6_;
            }
            _loc5_;
            _loc5_;
            _loc5_;
            this.§_-2m§++;
            if(this.§_-2m§ >= this.§_-62§)
            {
               _loc5_;
               _loc5_;
               this.§_-2m§ = 0;
               _loc6_;
               _loc6_;
               animStep++;
               if(animStep >= spriteSheet.frames)
               {
                  animStep = animStep - spriteSheet.frames;
               }
            }
         }
      }
      
      public function triggerMe(param1:int, param2:int = -1) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         _loc5_;
         if(param2 == -1)
         {
            _loc5_;
            _loc5_;
            var param2:int = this.§_-xo§;
         }
         this.triggerTime = param1;
         if(!this.roving)
         {
            SafeGlobal.GAME.simManager.addObject(this);
         }
         else
         {
            this.roving = false;
            SafeGlobal.GAME.stopRoverFx(this.sound_uid);
            _loc4_;
            _loc4_;
         }
         SafeGlobal.GAME.animateThisMinesProjectile(this);
         this.§_-mt§ = param1 + param2;
         _loc4_;
         _loc4_;
         lastSimTime = startSimTime = _loc3_;
      }
      
      public function detonate() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!dead)
         {
            dead = true;
            SafeGlobal.GAME.explodeMine(this);
            SafeGlobal.GAME.camera.traceTargets();
            _loc1_;
            SafeGlobal.GAME.removeThisMinesProjectile(this);
            _loc2_;
            SafeGlobal.GAME.camera.traceTargets();
         }
      }
      
      public function activate() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         SafeGlobal.GAME.simManager.removeObject(this);
         _loc2_;
         this.active = true;
         _loc2_;
         SafeGlobal.GAME.checkUnitProximity(this,startSimTime);
      }
      
      public function §_-Ru§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         SafeGlobal.GAME.simManager.removeObject(this);
         _loc2_;
         this.detonate();
      }
      
      public function §_-z6§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = SafeGlobal.GAME.projectiles.length - 1;
         while(_loc1_ >= 0)
         {
            if(SafeGlobal.GAME.projectiles[_loc1_].mine == this)
            {
               _loc2_;
               _loc2_;
               SafeGlobal.GAME.simManager.removeObject(SafeGlobal.GAME.projectiles[_loc1_]);
               _loc3_;
            }
            _loc2_;
            _loc3_;
            _loc3_;
            _loc1_--;
            _loc3_;
         }
      }
      
      public function destroyMe() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         §_-Bx§();
      }
   }
}
