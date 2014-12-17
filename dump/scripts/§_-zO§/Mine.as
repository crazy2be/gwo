package §_-zO§
{
   import §_-8Y§.SoundManager;
   
   public class Mine extends SimObject
   {
      
      public function Mine(param1:int, param2:int)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         super();
         _loc3_;
         §_-sz§ = 4;
         _loc3_;
         _loc3_;
         if(param1 != -1)
         {
            _loc3_;
            §_-kT§(param1,param2);
            _loc4_;
         }
         animStep = 0;
      }
      
      public var triggerTime:int = 0;
      
      public var §_-jd§:int = 2000;
      
      public var triggerDistance:int = 40;
      
      public var §_-ij§:int = 0;
      
      public var §_-fr§:int = 3;
      
      public var §_-vO§:int = 0;
      
      public var ignoreUnit:Unit;
      
      public var emp:Boolean = false;
      
      public var empRadius:int = 60;
      
      public var §_-Qc§:int = 1;
      
      public var §_-EQ§:int = 0;
      
      public var active:Boolean = true;
      
      public var mineType:int = -1;
      
      public var damage:int = 0;
      
      public var §_-H§:int = 0;
      
      public var outerRadius:int = 0;
      
      public var explosionRadius:int = 0;
      
      public var §_-1b§:int = -1;
      
      public var payloadCount:int = 0;
      
      public var §_-l2§:String = "";
      
      public var §_-5p§:String = "";
      
      public var drillProj:Boolean = false;
      
      public var roving:Boolean = false;
      
      public var §_-HV§:Boolean = false;
      
      public var sound_uid:int = -1;
      
      override public function animProgress(param1:int = 0) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:* = 0;
         _loc6_;
         _loc6_;
         _loc6_;
         if(this.triggerTime > 0)
         {
            _loc2_ = param1 - this.triggerTime;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            if(this.§_-EQ§ == 0 || this.§_-EQ§ == 1 && _loc2_ > 500 || this.§_-EQ§ == 2 && _loc2_ > 1000 || this.§_-EQ§ == 3 && _loc2_ > 1250 || this.§_-EQ§ == 4 && _loc2_ > 1500 || this.§_-EQ§ == 5 && _loc2_ > 1700 || this.§_-EQ§ == 6 && _loc2_ > 1900)
            {
               _loc6_;
               _loc6_;
               _loc5_;
               this.§_-EQ§++;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc5_;
               SoundManager.§_-wF§(SafeGlobal.FX_MINE_BEEP,(SafeGlobal.GAME.simOnly) || (SafeGlobal.GAME.costumeCacheOnly));
            }
            _loc6_;
            _loc6_;
            _loc6_;
            this.§_-ij§++;
            if(this.§_-ij§ >= this.§_-fr§)
            {
               this.§_-ij§ = 0;
               _loc5_;
               _loc5_;
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
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         if(param2 == -1)
         {
            _loc4_;
            var param2:int = this.§_-jd§;
            _loc5_;
         }
         this.triggerTime = param1;
         _loc4_;
         if(!this.roving)
         {
            _loc4_;
            _loc4_;
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
         this.§_-vO§ = param1 + param2;
         _loc5_;
         lastSimTime = startSimTime = _loc3_;
      }
      
      public function detonate() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         if(!dead)
         {
            dead = true;
            _loc2_;
            _loc2_;
            SafeGlobal.GAME.explodeMine(this);
            SafeGlobal.GAME.camera.traceTargets();
            SafeGlobal.GAME.removeThisMinesProjectile(this);
            _loc2_;
            _loc2_;
            SafeGlobal.GAME.camera.traceTargets();
         }
      }
      
      public function activate() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         SafeGlobal.GAME.simManager.removeObject(this);
         _loc2_;
         _loc2_;
         this.active = true;
         _loc2_;
         SafeGlobal.GAME.checkUnitProximity(this,startSimTime);
      }
      
      public function §_-eb§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         SafeGlobal.GAME.simManager.removeObject(this);
         _loc1_;
         this.detonate();
      }
      
      public function §_-0V§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = SafeGlobal.GAME.projectiles.length - 1;
         while(_loc1_ >= 0)
         {
            if(SafeGlobal.GAME.projectiles[_loc1_].mine == this)
            {
               _loc3_;
               SafeGlobal.GAME.simManager.removeObject(SafeGlobal.GAME.projectiles[_loc1_]);
               _loc2_;
               _loc2_;
            }
            _loc3_;
            _loc2_;
            _loc1_--;
            _loc3_;
         }
      }
      
      public function destroyMe() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         §_-Mn§();
      }
   }
}
