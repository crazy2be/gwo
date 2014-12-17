package §_-zO§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import §_-8Y§.SoundManager;
   
   public class TurnTimer extends Sprite
   {
      
      public function TurnTimer(param1:int, param2:int)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         super();
         _loc4_;
         _loc4_;
         this.§_-QA§ = param2;
         _loc4_;
         _loc4_;
         this.turnTime = param1;
         _loc3_;
         mouseEnabled = false;
         _loc4_;
         _loc4_;
         mouseChildren = false;
      }
      
      public var time:TextField;
      
      public var §_-v9§:int = -1;
      
      public var turnTime:int;
      
      public var §_-QA§:int;
      
      public var extraRetreatTime:int;
      
      public var active:Boolean = false;
      
      public var ignore:Boolean = false;
      
      public function showMe() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(!this.ignore)
         {
            _loc1_;
            _loc1_;
            visible = true;
         }
      }
      
      public function hideMe() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         visible = false;
         _loc2_;
         this.time.text = "";
      }
      
      public function reset() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-v9§ = -1;
         _loc1_;
         _loc1_;
         this.active = false;
         _loc1_;
         this.extraRetreatTime = 0;
      }
      
      public function startRetreat(param1:int, param2:int = 0) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         this.§_-v9§ = param1;
         _loc3_;
         _loc3_;
         this.extraRetreatTime = param2;
         _loc4_;
         _loc4_;
         this.update(param1);
      }
      
      public function update(param1:int) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc6_;
         _loc5_;
         if(!this.active && !this.ignore)
         {
            _loc6_;
            _loc6_;
            _loc5_;
            if(this.§_-v9§ > -1)
            {
               _loc5_;
               _loc5_;
               _loc2_ = param1 - this.§_-v9§;
               _loc6_;
               _loc6_;
               _loc3_ = Math.round((this.§_-QA§ + this.extraRetreatTime - _loc2_) / 1000);
               _loc6_;
               if(_loc3_ < 0)
               {
                  SafeGlobal.GAME.retreatOver();
                  _loc6_;
                  _loc6_;
               }
               if(_loc3_ >= 0)
               {
                  this.time.text = _loc3_.toString();
               }
               else
               {
                  this.time.text = "";
               }
            }
            else
            {
               _loc6_;
               _loc6_;
               _loc3_ = Math.round((this.turnTime - param1) / 1000);
               if(_loc3_ < 0)
               {
                  SafeGlobal.GAME.turnOverNoShot();
                  _loc3_ = 0;
               }
               _loc6_;
               if(_loc3_ <= 5 && this.§_-v9§ == -1)
               {
                  _loc4_ = int(this.time.text);
                  if(_loc4_ != _loc3_)
                  {
                     _loc6_;
                     _loc6_;
                     _loc5_;
                     _loc5_;
                     SoundManager.§_-wF§(SafeGlobal.FX_TICK,(SafeGlobal.GAME.simOnly) || (SafeGlobal.GAME.costumeCacheOnly));
                  }
               }
               this.time.text = _loc3_.toString();
            }
         }
      }
   }
}
