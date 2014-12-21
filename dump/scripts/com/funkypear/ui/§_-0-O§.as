package com.funkypear.ui
{
   public class §_-0-O§ extends LobbyScreen
   {
      
      public function §_-0-O§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
      }
      
      private var lsd:LevelSelectDisplay;
      
      private var §_-XT§:int;
      
      private var include:Boolean = false;
      
      private var §_-kr§:§_-L2§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         x = 0;
         _loc2_;
         _loc2_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         _loc5_;
         _loc5_;
         this.§_-XT§ = param1;
         this.§_-kr§ = new §_-L2§();
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(SafeGlobal.selected_level.§_-Td§)
         {
            _loc5_;
            _loc3_ = SafeGlobal.selected_level.campaign_key;
            _loc5_;
            _loc5_;
            this.include = true;
            if(this.§_-E3§(_loc3_))
            {
               _loc4_;
               _loc4_;
               this.§_-eM§(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-p2§,param1);
            }
            else
            {
               this.§_-jn§(SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id,param1);
            }
         }
         else
         {
            this.include = false;
            _loc4_;
            this.§_-eM§(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-p2§,param1);
            _loc4_;
         }
         _loc4_;
         _loc4_;
         _loc5_;
         this.§_-kr§.x = 75;
         _loc5_;
         this.§_-kr§.y = 80;
         addChild(this.§_-kr§);
      }
      
      private function §_-eM§(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         _loc5_;
         SafeGlobal.selected_level.thumbnail = param1;
         this.lsd = new LevelSelectDisplay(SafeGlobal.selected_level.thumbnail,SafeGlobal.selected_level.§_-p2§,false);
         if(SafeGlobal.selected_level.mods != "")
         {
            _loc4_;
            this.lsd.§_-DW§(null,SafeGlobal.selected_level.mods);
            _loc5_;
         }
         _loc4_;
         this.lsd.§_-fH§();
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_;
         this.lsd.x = Global.large_thumbnail_x;
         _loc5_;
         this.lsd.y = Global.large_thumbnail_y;
         this.lsd.name = "lsd";
         addChild(this.lsd);
      }
      
      private function §_-jn§(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Array = SafeGlobal.campaigns[param1].thumbs;
         _loc5_;
         SafeGlobal.selected_level.thumbnail = _loc4_[param2];
         this.lsd = new LevelSelectDisplay(SafeGlobal.selected_level.thumbnail,param2,false);
         _loc5_;
         _loc5_;
         _loc5_;
         this.lsd.§_-66§(SafeGlobal.§_-i§(param1,param2));
         if(SafeGlobal.selected_level.mods != "")
         {
            _loc6_;
            this.lsd.§_-DW§(null,SafeGlobal.selected_level.mods);
         }
         _loc5_;
         _loc5_;
         this.lsd.§_-fH§();
         _loc5_;
         _loc6_;
         this.lsd.x = Global.large_thumbnail_x;
         _loc6_;
         _loc6_;
         _loc6_;
         this.lsd.y = Global.large_thumbnail_y;
         _loc5_;
         this.lsd.name = "lsd";
         addChild(this.lsd);
      }
      
      private function §_-E3§(param1:int) : Boolean
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc6_;
         _loc6_;
         var _loc2_:int = SafeGlobal.§_-Py§(param1);
         _loc5_;
         _loc5_;
         var _loc3_:int = SafeGlobal.§_-xg§(param1);
         var _loc4_:Array = SafeGlobal.campaigns[_loc2_].unlocked;
         if(_loc4_[_loc3_] == 1)
         {
            _loc6_;
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
         _loc3_;
         _loc3_;
         §_-eY§(1100);
      }
   }
}
