package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class LobbyNavScreenTitle extends Sprite
   {
      
      public function LobbyNavScreenTitle()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         this.title_text.mouseEnabled = false;
         _loc2_;
         this.§_-VZ§.mouseEnabled = false;
      }
      
      public var §_-VZ§:TextField;
      
      public var title_text:TextField;
      
      private var §_-wS§:String;
      
      private var §_-t4§:String;
      
      private function §_-XF§(param1:String, param2:String = "") : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:TextFormat = null;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc5_;
         if(!(param1 == null) && !(param1 == ""))
         {
            _loc3_ = new TextFormat();
            _loc5_;
            _loc3_.letterSpacing = -4;
            _loc4_;
            _loc4_;
            this.title_text.defaultTextFormat = _loc3_;
            _loc5_;
            _loc5_;
            this.title_text.text = param1;
            _loc4_;
            _loc4_;
            this.§_-VZ§.text = param2;
         }
      }
      
      private function §_-NG§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.title_text.text = "";
         _loc2_;
         _loc2_;
         this.§_-VZ§.text = "";
      }
      
      public function §_-d5§(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-VZ§.text = String(this.§_-t4§ + " " + param1);
      }
      
      public function §_-8s§(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Array = null;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 == Global.SCREEN_WAITING_AREA)
         {
            _loc4_;
            _loc3_;
            _loc3_;
            if(SafeGlobal.selected_level.§_-L6§)
            {
               _loc3_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc2_ = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].unlocked;
               _loc4_;
               _loc4_;
               if(_loc2_[SafeGlobal.selected_level.level_id] == 1)
               {
                  this.§_-wS§ = String("MISSION " + (SafeGlobal.selected_level.campaign_id + 1) + "." + (SafeGlobal.selected_level.level_id + 1));
                  _loc3_;
                  _loc3_;
               }
               else
               {
                  this.§_-wS§ = String("CUSTOM GAME");
                  _loc4_;
                  _loc4_;
               }
            }
            else
            {
               this.§_-wS§ = String("CUSTOM GAME");
            }
         }
         else if(param1 == Global.SCREEN_GAME_END)
         {
            if(SafeGlobal.selected_level.§_-L6§)
            {
               _loc2_ = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].unlocked;
               _loc3_;
               _loc3_;
               if(_loc2_[SafeGlobal.selected_level.level_id] == 1)
               {
                  _loc4_;
                  this.§_-wS§ = String("MISSION " + (SafeGlobal.selected_level.campaign_id + 1) + "." + (SafeGlobal.selected_level.level_id + 1));
                  _loc4_;
               }
               else
               {
                  this.§_-wS§ = String("CUSTOM GAME");
               }
            }
            else
            {
               this.§_-wS§ = String("CUSTOM GAME");
            }
         }
         else
         {
            this.§_-wS§ = Global.screen_names[param1];
         }
         
         if(param1 == Global.SCREEN_BROWSE_CAMPAIGN)
         {
            _loc3_;
            this.§_-t4§ = String(Global.campaign_names[SafeGlobal.selected_level.campaign_id]);
            _loc3_;
         }
         else
         {
            this.§_-t4§ = Global.screen_sub_names[param1];
            _loc4_;
         }
         this.§_-XF§(this.§_-wS§,this.§_-t4§);
      }
      
      public function §_-uB§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-NG§();
      }
   }
}
