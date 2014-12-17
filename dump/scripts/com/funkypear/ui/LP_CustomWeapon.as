package com.funkypear.ui
{
   import flash.text.TextField;
   import com.funkypear.ui.customweapon.CustomWeaponEditor;
   import §_-WX§.§_-A§;
   import §_-ZN§.§_-S8§;
   import flash.text.TextFormat;
   import flash.display.Sprite;
   
   public class LP_CustomWeapon extends §_-A3§
   {
      
      public function LP_CustomWeapon(param1:Sprite)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.level = new §_-A§(-1);
         this.§_-fk§ = new §_-A§(-1);
         super(param1);
         _loc4_;
         Global.custom_weapon_panel = this;
         this.updatePoints();
         _loc4_;
         _loc4_;
         this.§_-yQ§ = new §_-S8§();
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.§_-yQ§.x = 299;
         this.§_-yQ§.y = 55;
         this.§_-BW§ = new §_-w7§();
         _loc4_;
         _loc3_;
         _loc3_;
         this.§_-BW§.x = 385;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-BW§.y = 25;
         (this.§_-BW§.getChildByName("msg_text") as TextField).text = "WANT TO TEST YOUR WEAPON?";
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.letterSpacing = -1.5;
         _loc2_.color = 3355443;
         (this.§_-BW§.getChildByName("msg_text") as TextField).setTextFormat(_loc2_);
         this.§_-F0§ = new CustomWeaponEditor(6,54);
         _loc3_;
         _loc3_;
         addChild(this.§_-F0§);
         _loc4_;
         this.§_-F0§.addChild(this.§_-yQ§);
         _loc4_;
         _loc4_;
         this.§_-F0§.addChild(this.§_-BW§);
      }
      
      public var points:TextField;
      
      private var §_-F0§:CustomWeaponEditor;
      
      public var level:§_-A§;
      
      public var §_-fk§:§_-A§;
      
      private var slot_id:int = 0;
      
      private var §_-yQ§:§_-S8§;
      
      private var §_-BW§:§_-w7§;
      
      public function updatePoints() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.level.setInt(Global.getLevel(Global.teamXP.getInt()));
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         this.§_-fk§.setInt(this.level.getInt() * 2);
         _loc1_;
         _loc1_;
         if(this.§_-F0§ != null)
         {
            _loc2_;
            _loc2_;
            this.§_-fk§.setInt(this.§_-fk§.getInt() - this.§_-F0§.getPointsUsed());
            _loc2_;
         }
         this.points.text = this.§_-fk§.getInt().toString();
      }
      
      public function §_-hL§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.updatePoints();
      }
      
      public function §_-Yy§(param1:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         this.slot_id = param1;
         _loc4_;
         _loc4_;
         this.§_-F0§.§_-Yy§(param1);
         _loc5_;
         _loc5_;
         var _loc2_:int = Global.lobby_display.getCurrentScreen();
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.letterSpacing = -1.5;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc5_;
         _loc5_;
         if(!(_loc2_ == Global.SCREEN_WAITING_AREA) && !(_loc2_ == Global.SCREEN_GAME_END))
         {
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            this.§_-yQ§.visible = true;
            _loc3_.color = 3355443;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            (this.§_-BW§.getChildByName("msg_text") as TextField).text = "WANT TO TEST YOUR WEAPON?";
            _loc4_;
            _loc5_;
            _loc5_;
            (this.§_-BW§.getChildByName("msg_text") as TextField).setTextFormat(_loc3_);
            _loc4_;
            _loc4_;
         }
         else
         {
            this.§_-yQ§.visible = false;
            _loc3_.color = 13421772;
            _loc4_;
            _loc4_;
            if(_loc2_ == Global.SCREEN_WAITING_AREA)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               (this.§_-BW§.getChildByName("msg_text") as TextField).text = "TESTING IS DISABLED WHILE JOINING GAMES";
               _loc5_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               (this.§_-BW§.getChildByName("msg_text") as TextField).setTextFormat(_loc3_);
               _loc4_;
            }
            else
            {
               _loc5_;
               _loc5_;
               (this.§_-BW§.getChildByName("msg_text") as TextField).text = "TESTING IS DISABLED ON GAME OVER SCREEN";
               _loc4_;
               (this.§_-BW§.getChildByName("msg_text") as TextField).setTextFormat(_loc3_);
            }
         }
      }
      
      public function §_-mi§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         this.slot_id = Global.test_custom_weapon_id;
         _loc4_;
         _loc4_;
         this.§_-F0§.§_-mi§();
         _loc3_;
         _loc3_;
         var _loc1_:int = Global.lobby_display.getCurrentScreen();
         var _loc2_:TextFormat = new TextFormat();
         _loc4_;
         _loc4_;
         _loc2_.letterSpacing = -1.5;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(!(_loc1_ == Global.SCREEN_WAITING_AREA) && !(_loc1_ == Global.SCREEN_GAME_END))
         {
            _loc3_;
            _loc4_;
            this.§_-yQ§.visible = true;
            _loc2_.color = 3355443;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            (this.§_-BW§.getChildByName("msg_text") as TextField).text = "WANT TO TEST YOUR WEAPON?";
            _loc4_;
            _loc4_;
            _loc4_;
            (this.§_-BW§.getChildByName("msg_text") as TextField).setTextFormat(_loc2_);
            _loc3_;
         }
         else
         {
            this.§_-yQ§.visible = false;
            _loc2_.color = 13421772;
            if(_loc1_ == Global.SCREEN_WAITING_AREA)
            {
               _loc3_;
               _loc3_;
               (this.§_-BW§.getChildByName("msg_text") as TextField).text = "TESTING IS DISABLED WHILE JOINING GAMES";
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               (this.§_-BW§.getChildByName("msg_text") as TextField).setTextFormat(_loc2_);
               _loc3_;
               _loc3_;
            }
            else
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               (this.§_-BW§.getChildByName("msg_text") as TextField).text = "TESTING IS DISABLED ON GAME OVER SCREEN";
               _loc4_;
               (this.§_-BW§.getChildByName("msg_text") as TextField).setTextFormat(_loc2_);
            }
         }
      }
      
      public function §_-rD§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         Global.test_custom_weapon = this.§_-F0§.§_-wb§();
         _loc1_;
         Global.test_custom_weapon_id = this.slot_id;
      }
      
      public function §_-E8§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         var _loc1_:String = this.§_-F0§.§_-wb§();
         _loc3_;
         _loc3_;
         this.§_-F0§.hideAllMenus();
         _loc2_;
         _loc2_;
         if(_loc1_ != SafeGlobal.custom_weapon_string[this.slot_id])
         {
            _loc2_;
            Global.lobby_client.saveCustomWeapon(_loc1_,this.slot_id);
         }
      }
      
      override public function doClose() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         var _loc1_:String = this.§_-F0§.§_-wb§();
         _loc3_;
         _loc3_;
         this.§_-F0§.hideAllMenus();
         _loc2_;
         if(_loc1_ != SafeGlobal.custom_weapon_string[this.slot_id])
         {
            _loc3_;
            Global.lobby_client.saveCustomWeapon(_loc1_,this.slot_id);
            _loc3_;
         }
         Global.lobby_display.lobby_menu.§_-rh§("MB_WeaponSetUp");
      }
   }
}
