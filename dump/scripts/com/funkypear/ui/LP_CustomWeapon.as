package com.funkypear.ui
{
   import flash.text.TextField;
   import com.funkypear.ui.customweapon.CustomWeaponEditor;
   import §_-bk§.§_-aq§;
   import §_-bY§.§_-Nk§;
   import flash.text.TextFormat;
   import flash.display.Sprite;
   
   public class LP_CustomWeapon extends §_-uw§
   {
      
      public function LP_CustomWeapon(param1:Sprite)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.level = new §_-aq§(-1);
         this.§_-VP§ = new §_-aq§(-1);
         super(param1);
         Global.custom_weapon_panel = this;
         this.updatePoints();
         this.§_-Gb§ = new §_-Nk§();
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         this.§_-Gb§.x = 299;
         _loc4_;
         this.§_-Gb§.y = 55;
         this.§_-kd§ = new §_-lP§();
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         this.§_-kd§.x = 385;
         _loc3_;
         this.§_-kd§.y = 25;
         _loc4_;
         _loc4_;
         (this.§_-kd§.getChildByName("msg_text") as TextField).text = "WANT TO TEST YOUR WEAPON?";
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.letterSpacing = -1.5;
         _loc4_;
         _loc4_;
         _loc2_.color = 3355443;
         (this.§_-kd§.getChildByName("msg_text") as TextField).setTextFormat(_loc2_);
         this.§_-Hw§ = new CustomWeaponEditor(6,54);
         addChild(this.§_-Hw§);
         _loc3_;
         _loc4_;
         this.§_-Hw§.addChild(this.§_-Gb§);
         this.§_-Hw§.addChild(this.§_-kd§);
      }
      
      public var points:TextField;
      
      private var §_-Hw§:CustomWeaponEditor;
      
      public var level:§_-aq§;
      
      public var §_-VP§:§_-aq§;
      
      private var slot_id:int = 0;
      
      private var §_-Gb§:§_-Nk§;
      
      private var §_-kd§:§_-lP§;
      
      public function updatePoints() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.level.setInt(Global.getLevel(Global.teamXP.getInt()));
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-VP§.setInt(this.level.getInt() * 2);
         _loc2_;
         if(this.§_-Hw§ != null)
         {
            _loc2_;
            this.§_-VP§.setInt(this.§_-VP§.getInt() - this.§_-Hw§.getPointsUsed());
            _loc1_;
         }
         this.points.text = this.§_-VP§.getInt().toString();
      }
      
      public function §_-NL§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.updatePoints();
      }
      
      public function §_-La§(param1:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         this.slot_id = param1;
         _loc5_;
         _loc5_;
         this.§_-Hw§.§_-La§(param1);
         _loc4_;
         var _loc2_:int = Global.lobby_display.getCurrentScreen();
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.letterSpacing = -1.5;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc4_;
         _loc4_;
         if(!(_loc2_ == Global.SCREEN_WAITING_AREA) && !(_loc2_ == Global.SCREEN_GAME_END))
         {
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            this.§_-Gb§.visible = true;
            _loc4_;
            _loc4_;
            _loc3_.color = 3355443;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            (this.§_-kd§.getChildByName("msg_text") as TextField).text = "WANT TO TEST YOUR WEAPON?";
            _loc5_;
            _loc5_;
            (this.§_-kd§.getChildByName("msg_text") as TextField).setTextFormat(_loc3_);
            _loc4_;
         }
         else
         {
            this.§_-Gb§.visible = false;
            _loc4_;
            _loc4_;
            _loc3_.color = 13421772;
            _loc4_;
            if(_loc2_ == Global.SCREEN_WAITING_AREA)
            {
               _loc4_;
               _loc4_;
               _loc5_;
               _loc4_;
               (this.§_-kd§.getChildByName("msg_text") as TextField).text = "TESTING IS DISABLED WHILE JOINING GAMES";
               _loc4_;
               _loc4_;
               _loc4_;
               _loc5_;
               (this.§_-kd§.getChildByName("msg_text") as TextField).setTextFormat(_loc3_);
            }
            else
            {
               _loc4_;
               _loc4_;
               _loc5_;
               (this.§_-kd§.getChildByName("msg_text") as TextField).text = "TESTING IS DISABLED ON GAME OVER SCREEN";
               (this.§_-kd§.getChildByName("msg_text") as TextField).setTextFormat(_loc3_);
            }
         }
      }
      
      public function §_-DS§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         this.slot_id = Global.test_custom_weapon_id;
         _loc3_;
         this.§_-Hw§.§_-DS§();
         _loc3_;
         _loc3_;
         var _loc1_:int = Global.lobby_display.getCurrentScreen();
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.letterSpacing = -1.5;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(!(_loc1_ == Global.SCREEN_WAITING_AREA) && !(_loc1_ == Global.SCREEN_GAME_END))
         {
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-Gb§.visible = true;
            _loc2_.color = 3355443;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            (this.§_-kd§.getChildByName("msg_text") as TextField).text = "WANT TO TEST YOUR WEAPON?";
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc4_;
            (this.§_-kd§.getChildByName("msg_text") as TextField).setTextFormat(_loc2_);
         }
         else
         {
            this.§_-Gb§.visible = false;
            _loc2_.color = 13421772;
            _loc4_;
            if(_loc1_ == Global.SCREEN_WAITING_AREA)
            {
               _loc3_;
               _loc4_;
               (this.§_-kd§.getChildByName("msg_text") as TextField).text = "TESTING IS DISABLED WHILE JOINING GAMES";
               _loc3_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               (this.§_-kd§.getChildByName("msg_text") as TextField).setTextFormat(_loc2_);
               _loc3_;
            }
            else
            {
               _loc3_;
               _loc3_;
               _loc3_;
               (this.§_-kd§.getChildByName("msg_text") as TextField).text = "TESTING IS DISABLED ON GAME OVER SCREEN";
               _loc3_;
               (this.§_-kd§.getChildByName("msg_text") as TextField).setTextFormat(_loc2_);
            }
         }
      }
      
      public function §_-Eo§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         Global.test_custom_weapon = this.§_-Hw§.§_-t-§();
         _loc2_;
         Global.test_custom_weapon_id = this.slot_id;
      }
      
      public function §_-uc§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         var _loc1_:String = this.§_-Hw§.§_-t-§();
         _loc2_;
         _loc2_;
         this.§_-Hw§.hideAllMenus();
         _loc3_;
         _loc3_;
         if(_loc1_ != SafeGlobal.custom_weapon_string[this.slot_id])
         {
            _loc3_;
            _loc3_;
            Global.lobby_client.saveCustomWeapon(_loc1_,this.slot_id);
         }
      }
      
      override public function doClose() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         var _loc1_:String = this.§_-Hw§.§_-t-§();
         _loc2_;
         this.§_-Hw§.hideAllMenus();
         _loc3_;
         _loc3_;
         if(_loc1_ != SafeGlobal.custom_weapon_string[this.slot_id])
         {
            _loc2_;
            Global.lobby_client.saveCustomWeapon(_loc1_,this.slot_id);
            _loc2_;
         }
         Global.lobby_display.lobby_menu.§_-NP§("MB_WeaponSetUp");
      }
   }
}
