package com.funkypear.ui
{
   public class §_-XI§ extends LobbyScreen
   {
      
      public function §_-XI§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
      }
      
      private var lsd:LevelSelectDisplay;
      
      private var §_-kR§:int;
      
      private var §_-J§:Boolean = false;
      
      private var §_-Lm§:§_-YW§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         x = 0;
         _loc2_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         this.§_-kR§ = param1;
         this.§_-Lm§ = new §_-YW§();
         _loc5_;
         _loc4_;
         if(SafeGlobal.selected_level.§_-L6§)
         {
            _loc4_;
            _loc3_ = SafeGlobal.selected_level.campaign_key;
            _loc5_;
            this.§_-J§ = true;
            if(this.§_-0P§(_loc3_))
            {
               _loc4_;
               this.§_-s7§(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-Tv§,param1);
            }
            else
            {
               this.§_-4F§(SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id,param1);
            }
         }
         else
         {
            this.§_-J§ = false;
            _loc4_;
            this.§_-s7§(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-Tv§,param1);
         }
         _loc4_;
         _loc5_;
         _loc5_;
         this.§_-Lm§.x = 75;
         _loc4_;
         _loc4_;
         this.§_-Lm§.y = 80;
         _loc4_;
         addChild(this.§_-Lm§);
      }
      
      private function §_-s7§(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc5_;
         _loc5_;
         SafeGlobal.selected_level.thumbnail = param1;
         _loc4_;
         this.lsd = new LevelSelectDisplay(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-Tv§,false);
         _loc4_;
         _loc4_;
         if(SafeGlobal.selected_level.mods != "")
         {
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            this.lsd.§_-zu§(null,SafeGlobal.selected_level.mods);
         }
         _loc5_;
         _loc5_;
         this.lsd.§_-hZ§();
         _loc5_;
         _loc4_;
         _loc5_;
         _loc5_;
         this.lsd.x = Global.large_thumbnail_x;
         _loc5_;
         _loc4_;
         this.lsd.y = Global.large_thumbnail_y;
         this.lsd.name = "lsd";
         addChild(this.lsd);
      }
      
      private function §_-4F§(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Array = SafeGlobal.campaigns[param1].thumbs;
         _loc5_;
         SafeGlobal.selected_level.thumbnail = _loc4_[param2];
         _loc6_;
         this.lsd = new LevelSelectDisplay(SafeGlobal.selected_level.thumbnail,param2,false);
         _loc5_;
         _loc5_;
         this.lsd.§_-9z§(SafeGlobal.§_-oX§(param1,param2));
         _loc6_;
         _loc6_;
         if(SafeGlobal.selected_level.mods != "")
         {
            _loc6_;
            _loc5_;
            _loc5_;
            this.lsd.§_-zu§(null,SafeGlobal.selected_level.mods);
         }
         _loc5_;
         this.lsd.§_-hZ§();
         _loc6_;
         _loc5_;
         _loc5_;
         this.lsd.x = Global.large_thumbnail_x;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         this.lsd.y = Global.large_thumbnail_y;
         this.lsd.name = "lsd";
         addChild(this.lsd);
      }
      
      private function §_-0P§(param1:int) : Boolean
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         var _loc2_:int = SafeGlobal.§_-QS§(param1);
         _loc5_;
         _loc5_;
         var _loc3_:int = SafeGlobal.§_-9c§(param1);
         var _loc4_:Array = SafeGlobal.campaigns[_loc2_].unlocked;
         if(_loc4_[_loc3_] == 1)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            return false;
         }
         return true;
      }
      
      override protected function tweenOn(param1:int) : void
      {
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         §_-hf§(1100);
      }
   }
}
