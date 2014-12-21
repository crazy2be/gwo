package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-DR§ extends §_-uw§
   {
      
      public function §_-DR§(param1:Sprite)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         super(param1);
      }
      
      public var §_-zy§:MovieClip;
      
      public var HB_Browsing:§_-Fx§;
      
      public var HB_Campaigns:§_-Fx§;
      
      public var HB_Controls:§_-Fx§;
      
      public var HB_CustomGames:§_-Fx§;
      
      public var HB_Customization:§_-Fx§;
      
      public var HB_CustomWeapon:§_-Fx§;
      
      public var HB_Gravitons:§_-Fx§;
      
      public var HB_Introduction:§_-Fx§;
      
      public var HB_JoiningGames:§_-Fx§;
      
      public var HB_MapEditor:§_-Fx§;
      
      public var HB_MapsReplays:§_-Fx§;
      
      public var HB_MyTeam:§_-Fx§;
      
      public var HB_OtherWeapons:§_-Fx§;
      
      public var HB_ReplayEditor:§_-Fx§;
      
      public var HB_Shooting:§_-Fx§;
      
      public var HB_WalkCamera:§_-Fx§;
      
      public var HB_Weapons:§_-Fx§;
      
      public var HB_XPLevelUp:§_-Fx§;
      
      public var HB_XPRewards:§_-Fx§;
      
      public function §_-3z§(param1:§_-Fx§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.name == "HB_Introduction")
         {
            this.§_-zy§.gotoAndStop(1);
         }
         else if(param1.name == "HB_Controls")
         {
            _loc2_;
            _loc2_;
            this.§_-zy§.gotoAndStop(2);
            _loc2_;
            _loc2_;
         }
         else if(param1.name == "HB_Shooting")
         {
            this.§_-zy§.gotoAndStop(2);
            _loc3_;
            _loc3_;
         }
         else if(param1.name == "HB_WalkCamera")
         {
            _loc3_;
            _loc3_;
            this.§_-zy§.gotoAndStop(3);
            _loc3_;
            _loc3_;
         }
         else if(param1.name == "HB_OtherWeapons")
         {
            this.§_-zy§.gotoAndStop(4);
         }
         else if(param1.name == "HB_Customization")
         {
            this.§_-zy§.gotoAndStop(5);
         }
         else if(param1.name == "HB_MyTeam")
         {
            this.§_-zy§.gotoAndStop(5);
         }
         else if(param1.name == "HB_Weapons")
         {
            this.§_-zy§.gotoAndStop(6);
         }
         else if(param1.name == "HB_CustomWeapon")
         {
            _loc3_;
            _loc3_;
            this.§_-zy§.gotoAndStop(7);
         }
         else if(param1.name == "HB_XPRewards")
         {
            this.§_-zy§.gotoAndStop(8);
            _loc2_;
            _loc2_;
         }
         else if(param1.name == "HB_XPLevelUp")
         {
            _loc2_;
            this.§_-zy§.gotoAndStop(8);
         }
         else if(param1.name == "HB_Gravitons")
         {
            this.§_-zy§.gotoAndStop(9);
         }
         else if(param1.name == "HB_JoiningGames")
         {
            this.§_-zy§.gotoAndStop(10);
         }
         else if(param1.name == "HB_Campaigns")
         {
            this.§_-zy§.gotoAndStop(10);
         }
         else if(param1.name == "HB_CustomGames")
         {
            this.§_-zy§.gotoAndStop(11);
            _loc3_;
         }
         else if(param1.name == "HB_Browsing")
         {
            this.§_-zy§.gotoAndStop(12);
            _loc3_;
            _loc3_;
         }
         else if(param1.name == "HB_MapsReplays")
         {
            this.§_-zy§.gotoAndStop(13);
         }
         else if(param1.name == "HB_MapEditor")
         {
            this.§_-zy§.gotoAndStop(13);
         }
         else if(param1.name == "HB_ReplayEditor")
         {
            _loc2_;
            this.§_-zy§.gotoAndStop(14);
         }
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
      }
      
      public function final(param1:§_-Fx§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc3_;
         if(param1.name == "HB_Introduction" || param1.name == "HB_Controls" || param1.name == "HB_Customization" || param1.name == "HB_XPRewards" || param1.name == "HB_JoiningGames" || param1.name == "HB_MapsReplays")
         {
            param1.§_-to§.textColor = 2236962;
         }
         else
         {
            param1.§_-to§.textColor = 6710886;
         }
      }
      
      public function §_-lp§(param1:§_-Fx§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(param1.name == "HB_Introduction" || param1.name == "HB_Controls" || param1.name == "HB_Customization" || param1.name == "HB_XPRewards" || param1.name == "HB_JoiningGames" || param1.name == "HB_MapsReplays")
         {
            param1.§_-to§.textColor = 0;
         }
         else
         {
            param1.§_-to§.textColor = 3355443;
         }
      }
   }
}
