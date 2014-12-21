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
         _loc1_;
         this.§_-tt§.mouseEnabled = false;
      }
      
      public var §_-tt§:TextField;
      
      public var title_text:TextField;
      
      private var §_-YE§:String;
      
      private var §_-mX§:String;
      
      private function §_-te§(param1:String, param2:String = "") : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:TextFormat = null;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         if(!(param1 == null) && !(param1 == ""))
         {
            _loc3_ = new TextFormat();
            _loc5_;
            _loc3_.letterSpacing = -4;
            _loc5_;
            _loc5_;
            this.title_text.defaultTextFormat = _loc3_;
            _loc5_;
            _loc5_;
            this.title_text.text = param1;
            _loc5_;
            this.§_-tt§.text = param2;
         }
      }
      
      private function §_-Ad§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.title_text.text = "";
         _loc1_;
         _loc1_;
         this.§_-tt§.text = "";
      }
      
      public function §_-P8§(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-tt§.text = String(this.§_-mX§ + " " + param1);
      }
      
      public function §_-G6§(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = null;
         _loc4_;
         _loc3_;
         if(param1 == Global.SCREEN_WAITING_AREA)
         {
            _loc3_;
            _loc3_;
            _loc4_;
            if(SafeGlobal.selected_level.§_-Td§)
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               _loc2_ = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].unlocked;
               if(_loc2_[SafeGlobal.selected_level.level_id] == 1)
               {
                  this.§_-YE§ = String("MISSION " + (SafeGlobal.selected_level.campaign_id + 1) + "." + (SafeGlobal.selected_level.level_id + 1));
               }
               else
               {
                  this.§_-YE§ = String("CUSTOM GAME");
                  _loc3_;
               }
            }
            else
            {
               this.§_-YE§ = String("CUSTOM GAME");
               _loc4_;
               _loc4_;
            }
         }
         else if(param1 == Global.SCREEN_GAME_END)
         {
            if(SafeGlobal.selected_level.§_-Td§)
            {
               _loc2_ = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].unlocked;
               _loc4_;
               if(_loc2_[SafeGlobal.selected_level.level_id] == 1)
               {
                  _loc4_;
                  this.§_-YE§ = String("MISSION " + (SafeGlobal.selected_level.campaign_id + 1) + "." + (SafeGlobal.selected_level.level_id + 1));
                  _loc4_;
                  _loc4_;
               }
               else
               {
                  this.§_-YE§ = String("CUSTOM GAME");
               }
            }
            else
            {
               this.§_-YE§ = String("CUSTOM GAME");
            }
         }
         else
         {
            this.§_-YE§ = Global.screen_names[param1];
         }
         
         if(param1 == Global.SCREEN_BROWSE_CAMPAIGN)
         {
            this.§_-mX§ = String(Global.campaign_names[SafeGlobal.selected_level.campaign_id]);
         }
         else
         {
            this.§_-mX§ = Global.screen_sub_names[param1];
         }
         this.§_-te§(this.§_-YE§,this.§_-mX§);
      }
      
      public function §_-vf§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-Ad§();
      }
   }
}
