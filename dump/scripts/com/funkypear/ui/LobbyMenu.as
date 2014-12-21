package com.funkypear.ui
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import fl.transitions.easing.*;
   import fl.transitions.TweenEvent;
   
   public class LobbyMenu extends Sprite
   {
      
      public function LobbyMenu(param1:LP_Awards, param2:LP_Shop, param3:LP_Stats, param4:LP_TeamSetUp, param5:LP_WeaponSetUp, param6:LP_Credits, param7:§_-DR§, param8:LP_CustomWeapon)
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         super();
         this.panel_awards = param1;
         _loc9_;
         _loc9_;
         this.panel_shop = param2;
         _loc10_;
         _loc10_;
         this.panel_stats = param3;
         _loc10_;
         this.panel_team = param4;
         this.panel_weapons = param5;
         _loc10_;
         this.panel_credits = param6;
         this.panel_help = param7;
         this.panel_custom = param8;
      }
      
      public var MB_Awards:§_-Ex§;
      
      public var MB_FunkyPear:§_-Ex§;
      
      public var MB_Shop:§_-Ex§;
      
      public var MB_Stats:§_-Ex§;
      
      public var MB_TeamSetUp:§_-Ex§;
      
      public var MB_WeaponSetUp:§_-Ex§;
      
      public var MB_Help:§_-Ex§;
      
      private var panel_awards:LP_Awards;
      
      private var panel_shop:LP_Shop;
      
      private var panel_stats:LP_Stats;
      
      private var panel_team:LP_TeamSetUp;
      
      private var panel_weapons:LP_WeaponSetUp;
      
      private var panel_credits:LP_Credits;
      
      private var panel_help:§_-DR§;
      
      private var panel_custom:LP_CustomWeapon;
      
      private var §_-2f§:String = "";
      
      private var §_-SN§:String = "";
      
      private var §_-Cs§:Tween;
      
      private var §_-hH§:Tween;
      
      private var §_-Qk§:Boolean = false;
      
      public function §_-K0§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.panel_awards.§_-1t§();
         _loc2_;
         _loc2_;
         this.panel_shop.§_-1t§();
         this.panel_stats.§_-1t§();
         this.panel_team.§_-1t§();
         this.panel_weapons.§_-1t§();
         this.panel_credits.§_-1t§();
         _loc2_;
         _loc2_;
         this.panel_help.§_-1t§();
         this.panel_custom.§_-1t§();
      }
      
      private function §_-jZ§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(Global.other_stats[Global.OSTAT_GAMES_PLAYED] != 0)
         {
            this.MB_Awards.§_-Kv§();
            this.MB_FunkyPear.§_-Kv§();
            this.MB_Shop.§_-Kv§();
            this.MB_Stats.§_-Kv§();
            this.MB_TeamSetUp.§_-Kv§();
            _loc1_;
            this.MB_WeaponSetUp.§_-Kv§();
            this.MB_Help.§_-Kv§();
         }
      }
      
      public function updateButtons() : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         _loc9_;
         _loc9_;
         _loc8_;
         _loc8_;
         Global.lobby_display.panel_team.updatePoints();
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc8_;
         if(Global.lobby_display.panel_team.§_-VP§.getInt() > 0)
         {
            _loc9_;
            _loc8_;
            this.MB_TeamSetUp.§_-FM§();
            _loc8_;
            _loc8_;
         }
         else
         {
            this.MB_TeamSetUp.§_-9Y§();
            _loc8_;
         }
         _loc9_;
         _loc9_;
         _loc8_;
         _loc8_;
         Global.lobby_display.panel_weapons.updatePoints();
         _loc8_;
         _loc8_;
         var _loc1_:int = Global.lobby_display.panel_weapons.§_-VP§.getInt();
         var _loc2_:* = 999999;
         _loc9_;
         _loc8_;
         _loc8_;
         if(_loc1_ > 0)
         {
            _loc8_;
            _loc3_ = 0;
            while(true)
            {
               _loc9_;
               _loc9_;
               if(_loc3_ >= SafeGlobal.weaponsUnlocked.length)
               {
                  break;
               }
               _loc8_;
               _loc8_;
               _loc9_;
               if(SafeGlobal.weaponsUnlocked[_loc3_] == true)
               {
                  _loc9_;
                  _loc9_;
                  _loc4_ = Global.weaponMaxStock[_loc3_];
                  _loc9_;
                  _loc9_;
                  _loc8_;
                  _loc5_ = SafeGlobal.weaponsStock[_loc3_];
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc6_ = _loc4_ - _loc5_;
                  _loc8_;
                  _loc8_;
                  if((_loc4_ - _loc5_) > 0)
                  {
                     _loc8_;
                     _loc8_;
                     _loc7_ = Global.weaponCost[_loc3_];
                     _loc8_;
                     _loc8_;
                     _loc9_;
                     _loc9_;
                     if((Global.weaponCost[_loc3_]) < _loc2_)
                     {
                        _loc8_;
                        _loc8_;
                        _loc8_;
                        _loc2_ = _loc7_;
                     }
                  }
               }
               _loc3_++;
               _loc8_;
               _loc8_;
            }
            if(_loc1_ >= _loc2_)
            {
               _loc8_;
               _loc8_;
               this.MB_WeaponSetUp.§_-FM§();
            }
            else
            {
               _loc8_;
               this.MB_WeaponSetUp.§_-9Y§();
               _loc9_;
               _loc9_;
            }
         }
         else
         {
            this.MB_WeaponSetUp.§_-9Y§();
            _loc9_;
            _loc9_;
         }
         if(Global.lobby_display.panel_awards.checkNewAwards() == true)
         {
            _loc9_;
            _loc9_;
            this.MB_Awards.§_-FM§();
            _loc8_;
            _loc8_;
         }
         else
         {
            this.MB_Awards.§_-9Y§();
            _loc8_;
            _loc8_;
         }
         this.§_-jZ§();
      }
      
      public function §_-pk§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         Global.lobby_display.checkForPanelCloseHelp(this.§_-2f§);
         _loc2_;
         _loc2_;
         Global.lobby_display.lobby_stats.§_-Qc§();
         _loc1_;
         this.updateButtons();
         _loc2_;
         _loc2_;
         this.§_-R7§();
         _loc2_;
         _loc2_;
         this.§_-2f§ = "";
      }
      
      public function §_-ny§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.§_-2f§ != "")
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            if(this.§_-2f§ == "panel_team")
            {
               _loc2_;
               _loc2_;
               this.panel_team.§_-uc§();
            }
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            if(this.§_-2f§ == "panel_weapons")
            {
               _loc2_;
               this.panel_weapons.§_-uc§();
            }
            if(this.§_-2f§ == "panel_custom")
            {
               _loc2_;
               this.panel_custom.§_-uc§();
               _loc2_;
               _loc2_;
            }
            this.§_-R7§();
            _loc2_;
            _loc2_;
            this.updateButtons();
            _loc2_;
            this.§_-SN§ = "";
            this.§_-N5§(true);
            this.§_-2f§ = "";
         }
      }
      
      public function §_-JO§(param1:String, param2:String) : Boolean
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc3_;
         _loc3_;
         if(param1 == "MB_Awards" && param2 == "panel_awards")
         {
            _loc4_;
            _loc3_;
            return false;
         }
         _loc3_;
         _loc4_;
         if(param1 == "MB_Challenges" && param2 == "panel_challenges")
         {
            _loc3_;
            return false;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1 == "MB_FunkyPear" && param2 == "panel_credits")
         {
            _loc4_;
            _loc4_;
            _loc4_;
            return false;
         }
         if(param1 == "MB_Shop" && param2 == "panel_shop")
         {
            _loc4_;
            _loc4_;
            return false;
         }
         if(param1 == "MB_Stats" && param2 == "panel_stats")
         {
            _loc3_;
            _loc3_;
            return false;
         }
         _loc3_;
         _loc3_;
         _loc4_;
         if(param1 == "MB_TeamSetUp" && param2 == "panel_team")
         {
            _loc4_;
            _loc4_;
            return false;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1 == "MB_WeaponSetUp" && param2 == "panel_weapons")
         {
            _loc3_;
            return false;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1 == "MB_Help" && param2 == "panel_help")
         {
            return false;
         }
         return true;
      }
      
      public function §_-NP§(param1:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = false;
         if(this.§_-SN§ != param1)
         {
            this.§_-R7§();
            this.updateButtons();
         }
         _loc4_;
         if(this.§_-JO§(param1,this.§_-2f§))
         {
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            if(this.§_-2f§ == "panel_team")
            {
               _loc3_;
               _loc3_;
               this.panel_team.§_-uc§();
            }
            _loc3_;
            _loc3_;
            _loc3_;
            if(this.§_-2f§ == "panel_weapons")
            {
               _loc4_;
               _loc4_;
               this.panel_weapons.§_-uc§();
            }
            if(this.§_-2f§ == "panel_custom")
            {
               _loc3_;
               this.panel_custom.§_-uc§();
               _loc3_;
            }
            this.§_-SN§ = param1;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc2_ = false;
            if(this.§_-2f§ == "")
            {
               _loc3_;
               _loc2_ = true;
            }
            Global.lobby_display.checkForMenuClickHelp(param1);
            _loc3_;
            if(param1 == "MB_Awards")
            {
               this.§_-N5§();
               this.§_-2f§ = "panel_awards";
               _loc3_;
               _loc3_;
               this.panel_awards.tweenIn(_loc2_);
               this.panel_awards.update();
            }
            else
            {
               _loc4_;
               if(param1 == "MB_FunkyPear")
               {
                  this.§_-N5§();
                  this.§_-2f§ = "panel_credits";
                  _loc3_;
                  this.panel_credits.update();
                  this.panel_credits.tweenIn(_loc2_);
                  _loc4_;
                  Global.lobby_client.clickedCredits();
               }
               else
               {
                  _loc4_;
                  if(param1 == "MB_Shop")
                  {
                     _loc4_;
                     _loc4_;
                     this.§_-N5§();
                     _loc4_;
                     _loc4_;
                     this.§_-2f§ = "panel_shop";
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     this.panel_shop.tweenIn(_loc2_);
                     this.panel_shop.update();
                     _loc3_;
                     _loc3_;
                  }
                  else
                  {
                     _loc4_;
                     _loc4_;
                     if(param1 == "MB_Stats")
                     {
                        _loc4_;
                        _loc4_;
                        this.§_-N5§();
                        _loc3_;
                        this.§_-2f§ = "panel_stats";
                        _loc3_;
                        _loc3_;
                        _loc3_;
                        this.panel_stats.tweenIn(_loc2_);
                        this.panel_stats.update();
                     }
                     else if(param1 == "MB_TeamSetUp")
                     {
                        this.§_-N5§();
                        this.§_-2f§ = "panel_team";
                        _loc3_;
                        _loc3_;
                        this.panel_team.tweenIn(_loc2_);
                        _loc4_;
                        this.panel_team.update();
                     }
                     else
                     {
                        _loc4_;
                        if(param1 == "MB_WeaponSetUp")
                        {
                           this.§_-N5§();
                           this.§_-2f§ = "panel_weapons";
                           _loc3_;
                           this.panel_weapons.tweenIn(_loc2_);
                           _loc4_;
                           this.panel_weapons.update(this.panel_weapons.§_-0-6§,this.panel_weapons.§_-ft§);
                        }
                        else
                        {
                           _loc4_;
                           _loc4_;
                           if(param1 == "MB_Help")
                           {
                              this.§_-N5§();
                              _loc4_;
                              this.§_-2f§ = "panel_help";
                              this.panel_help.tweenIn(_loc2_);
                           }
                           else if(param1 == "CustomWeapon0")
                           {
                              _loc3_;
                              _loc3_;
                              this.§_-N5§();
                              _loc4_;
                              _loc4_;
                              this.§_-2f§ = "panel_custom";
                              _loc4_;
                              _loc3_;
                              _loc4_;
                              this.panel_custom.§_-La§(0);
                              _loc4_;
                              _loc4_;
                              this.panel_custom.tweenIn(_loc2_);
                              _loc3_;
                           }
                           else
                           {
                              _loc4_;
                              _loc4_;
                              if(param1 == "CustomWeapon1")
                              {
                                 this.§_-N5§();
                                 this.§_-2f§ = "panel_custom";
                                 _loc3_;
                                 _loc4_;
                                 _loc4_;
                                 _loc4_;
                                 _loc4_;
                                 this.panel_custom.§_-La§(1);
                                 _loc3_;
                                 _loc3_;
                                 _loc3_;
                                 _loc3_;
                                 this.panel_custom.tweenIn(_loc2_);
                                 _loc3_;
                              }
                              else if(param1 == "CustomWeapon2")
                              {
                                 this.§_-N5§();
                                 _loc4_;
                                 _loc4_;
                                 this.§_-2f§ = "panel_custom";
                                 this.panel_custom.§_-La§(2);
                                 _loc3_;
                                 _loc4_;
                                 _loc4_;
                                 this.panel_custom.tweenIn(_loc2_);
                                 _loc3_;
                                 _loc3_;
                              }
                              else
                              {
                                 _loc3_;
                                 _loc3_;
                                 if(param1 == "TestCustomWeapon0")
                                 {
                                    this.§_-N5§();
                                    _loc3_;
                                    _loc3_;
                                    this.§_-2f§ = "panel_custom";
                                    _loc3_;
                                    _loc3_;
                                    this.panel_custom.§_-DS§();
                                    _loc3_;
                                    this.panel_custom.tweenIn(_loc2_);
                                 }
                                 else if(param1 == "TestCustomWeapon1")
                                 {
                                    _loc4_;
                                    this.§_-N5§();
                                    _loc4_;
                                    _loc4_;
                                    this.§_-2f§ = "panel_custom";
                                    this.panel_custom.§_-DS§();
                                    _loc4_;
                                    this.panel_custom.tweenIn(_loc2_);
                                    _loc3_;
                                    _loc3_;
                                 }
                                 else if(param1 == "TestCustomWeapon2")
                                 {
                                    _loc3_;
                                    _loc3_;
                                    this.§_-N5§();
                                    this.§_-2f§ = "panel_custom";
                                    _loc3_;
                                    this.panel_custom.§_-DS§();
                                    this.panel_custom.tweenIn(_loc2_);
                                 }
                                 
                                 
                              }
                              
                           }
                           
                        }
                     }
                     
                  }
               }
            }
         }
      }
      
      private function §_-R7§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:§_-Ex§ = getChildByName(this.§_-SN§) as §_-Ex§;
         _loc2_;
         if(_loc1_ != null)
         {
            _loc3_;
            _loc1_.§_-yF§();
         }
      }
      
      private function §_-N5§(param1:Boolean = false) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:§_-uw§ = parent.getChildByName(this.§_-2f§) as §_-uw§;
         _loc3_;
         if(_loc2_ != null)
         {
            _loc3_;
            _loc3_;
            _loc2_.tweenOut(param1);
         }
      }
      
      public function tweenOut() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(this.§_-Qk§)
         {
            _loc1_;
            this.§_-N5§(true);
            this.§_-Cs§ = new Tween(this,"x",Strong.easeOut,x,0 - (width + 20),1,true);
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            this.§_-Cs§.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOut,false,0,true);
            this.§_-Cs§.start();
            this.§_-Qk§ = false;
         }
      }
      
      private function finishTweenOut(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         visible = false;
      }
      
      public function tweenIn() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.§_-Qk§)
         {
            this.updateButtons();
            _loc2_;
            _loc2_;
            visible = true;
            this.§_-hH§ = new Tween(this,"x",Strong.easeOut,x,0,1,true);
            this.§_-hH§.start();
            this.§_-Qk§ = true;
         }
      }
   }
}
