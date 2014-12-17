package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-t1§ extends §_-A3§
   {
      
      public function §_-t1§(param1:Sprite)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         super(param1);
      }
      
      public var §_-xf§:MovieClip;
      
      public var HB_Browsing:§_-76§;
      
      public var HB_Campaigns:§_-76§;
      
      public var HB_Controls:§_-76§;
      
      public var HB_CustomGames:§_-76§;
      
      public var HB_Customization:§_-76§;
      
      public var HB_CustomWeapon:§_-76§;
      
      public var HB_Gravitons:§_-76§;
      
      public var HB_Introduction:§_-76§;
      
      public var HB_JoiningGames:§_-76§;
      
      public var HB_MapEditor:§_-76§;
      
      public var HB_MapsReplays:§_-76§;
      
      public var HB_MyTeam:§_-76§;
      
      public var HB_OtherWeapons:§_-76§;
      
      public var HB_ReplayEditor:§_-76§;
      
      public var HB_Shooting:§_-76§;
      
      public var HB_WalkCamera:§_-76§;
      
      public var HB_Weapons:§_-76§;
      
      public var HB_XPLevelUp:§_-76§;
      
      public var HB_XPRewards:§_-76§;
      
      public function §_-A6§(param1:§_-76§) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.name == "HB_Introduction")
         {
            _loc3_;
            _loc3_;
            this.§_-xf§.gotoAndStop(1);
            _loc3_;
         }
         else if(param1.name == "HB_Controls")
         {
            this.§_-xf§.gotoAndStop(2);
            _loc3_;
            _loc3_;
         }
         else if(param1.name == "HB_Shooting")
         {
            this.§_-xf§.gotoAndStop(2);
         }
         else if(param1.name == "HB_WalkCamera")
         {
            _loc2_;
            this.§_-xf§.gotoAndStop(3);
            _loc3_;
            _loc3_;
         }
         else if(param1.name == "HB_OtherWeapons")
         {
            this.§_-xf§.gotoAndStop(4);
         }
         else if(param1.name == "HB_Customization")
         {
            _loc3_;
            this.§_-xf§.gotoAndStop(5);
         }
         else if(param1.name == "HB_MyTeam")
         {
            _loc2_;
            this.§_-xf§.gotoAndStop(5);
            _loc3_;
         }
         else if(param1.name == "HB_Weapons")
         {
            this.§_-xf§.gotoAndStop(6);
            _loc3_;
            _loc3_;
         }
         else if(param1.name == "HB_CustomWeapon")
         {
            _loc3_;
            this.§_-xf§.gotoAndStop(7);
         }
         else if(param1.name == "HB_XPRewards")
         {
            this.§_-xf§.gotoAndStop(8);
         }
         else if(param1.name == "HB_XPLevelUp")
         {
            _loc2_;
            this.§_-xf§.gotoAndStop(8);
         }
         else if(param1.name == "HB_Gravitons")
         {
            this.§_-xf§.gotoAndStop(9);
            _loc3_;
         }
         else if(param1.name == "HB_JoiningGames")
         {
            this.§_-xf§.gotoAndStop(10);
            _loc3_;
            _loc3_;
         }
         else if(param1.name == "HB_Campaigns")
         {
            this.§_-xf§.gotoAndStop(10);
            _loc2_;
            _loc2_;
         }
         else if(param1.name == "HB_CustomGames")
         {
            _loc2_;
            this.§_-xf§.gotoAndStop(11);
         }
         else if(param1.name == "HB_Browsing")
         {
            this.§_-xf§.gotoAndStop(12);
         }
         else if(param1.name == "HB_MapsReplays")
         {
            this.§_-xf§.gotoAndStop(13);
            _loc2_;
            _loc2_;
         }
         else if(param1.name == "HB_MapEditor")
         {
            this.§_-xf§.gotoAndStop(13);
         }
         else if(param1.name == "HB_ReplayEditor")
         {
            _loc2_;
            _loc2_;
            this.§_-xf§.gotoAndStop(14);
         }
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
      }
      
      public function §_-hB§(param1:§_-76§) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1.name == "HB_Introduction" || param1.name == "HB_Controls" || param1.name == "HB_Customization" || param1.name == "HB_XPRewards" || param1.name == "HB_JoiningGames" || param1.name == "HB_MapsReplays")
         {
            param1.§_-R2§.textColor = 2236962;
         }
         else
         {
            param1.§_-R2§.textColor = 6710886;
         }
      }
      
      public function §_-3l§(param1:§_-76§) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(param1.name == "HB_Introduction" || param1.name == "HB_Controls" || param1.name == "HB_Customization" || param1.name == "HB_XPRewards" || param1.name == "HB_JoiningGames" || param1.name == "HB_MapsReplays")
         {
            param1.§_-R2§.textColor = 0;
         }
         else
         {
            param1.§_-R2§.textColor = 3355443;
         }
      }
   }
}
