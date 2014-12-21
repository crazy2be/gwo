package §_-JH§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import §_-4M§.SoundManager;
   
   public class TurnTimer extends Sprite
   {
      
      public function TurnTimer(param1:int, param2:int)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         super();
         _loc3_;
         this.§_-Kp§ = param2;
         _loc3_;
         _loc3_;
         this.turnTime = param1;
         _loc4_;
         mouseEnabled = false;
         _loc4_;
         mouseChildren = false;
      }
      
      public var time:TextField;
      
      public var §_-MT§:int = -1;
      
      public var turnTime:int;
      
      public var §_-Kp§:int;
      
      public var extraRetreatTime:int;
      
      public var active:Boolean = false;
      
      public var ignore:Boolean = false;
      
      public function showMe() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         if(!this.ignore)
         {
            _loc1_;
            visible = true;
         }
      }
      
      public function hideMe() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         visible = false;
         _loc2_;
         this.time.text = "";
      }
      
      public function reset() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-MT§ = -1;
         _loc1_;
         this.active = false;
         _loc1_;
         _loc1_;
         this.extraRetreatTime = 0;
      }
      
      public function startRetreat(param1:int, param2:int = 0) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         this.§_-MT§ = param1;
         _loc4_;
         this.extraRetreatTime = param2;
         _loc3_;
         this.update(param1);
      }
      
      public function update(param1:int) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_;
         if(!this.active && !this.ignore)
         {
            _loc6_;
            _loc6_;
            _loc5_;
            if(this.§_-MT§ > -1)
            {
               _loc6_;
               _loc5_;
               _loc6_;
               _loc6_;
               _loc2_ = param1 - this.§_-MT§;
               _loc6_;
               _loc3_ = Math.round((this.§_-Kp§ + this.extraRetreatTime - _loc2_) / 1000);
               _loc6_;
               if(_loc3_ < 0)
               {
                  SafeGlobal.GAME.retreatOver();
               }
               if(_loc3_ >= 0)
               {
                  this.time.text = _loc3_.toString();
                  _loc6_;
               }
               else
               {
                  this.time.text = "";
               }
            }
            else
            {
               _loc3_ = Math.round((this.turnTime - param1) / 1000);
               _loc6_;
               _loc6_;
               if(_loc3_ < 0)
               {
                  _loc5_;
                  SafeGlobal.GAME.turnOverNoShot();
                  _loc3_ = 0;
               }
               _loc6_;
               if(_loc3_ <= 5 && this.§_-MT§ == -1)
               {
                  _loc5_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc4_ = int(this.time.text);
                  if((int(this.time.text)) != _loc3_)
                  {
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     SoundManager.§_-Oc§(SafeGlobal.FX_TICK,(SafeGlobal.GAME.simOnly) || (SafeGlobal.GAME.costumeCacheOnly));
                  }
               }
               this.time.text = _loc3_.toString();
            }
         }
      }
   }
}
