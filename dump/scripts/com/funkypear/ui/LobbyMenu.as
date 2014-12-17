package com.funkypear.ui
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import fl.transitions.easing.*;
   import fl.transitions.TweenEvent;
   
   public class LobbyMenu extends Sprite
   {
      
      public function LobbyMenu(param1:LP_Awards, param2:LP_Shop, param3:LP_Stats, param4:LP_TeamSetUp, param5:LP_WeaponSetUp, param6:LP_Credits, param7:§_-t1§, param8:LP_CustomWeapon)
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         _loc10_;
         super();
         _loc10_;
         this.panel_awards = param1;
         this.panel_shop = param2;
         this.panel_stats = param3;
         this.panel_team = param4;
         this.panel_weapons = param5;
         _loc10_;
         this.panel_credits = param6;
         this.panel_help = param7;
         this.panel_custom = param8;
      }
      
      public var MB_Awards:§_-d3§;
      
      public var MB_FunkyPear:§_-d3§;
      
      public var MB_Shop:§_-d3§;
      
      public var MB_Stats:§_-d3§;
      
      public var MB_TeamSetUp:§_-d3§;
      
      public var MB_WeaponSetUp:§_-d3§;
      
      public var MB_Help:§_-d3§;
      
      private var panel_awards:LP_Awards;
      
      private var panel_shop:LP_Shop;
      
      private var panel_stats:LP_Stats;
      
      private var panel_team:LP_TeamSetUp;
      
      private var panel_weapons:LP_WeaponSetUp;
      
      private var panel_credits:LP_Credits;
      
      private var panel_help:§_-t1§;
      
      private var panel_custom:LP_CustomWeapon;
      
      private var §_-8S§:String = "";
      
      private var §_-Iv§:String = "";
      
      private var §_-Bm§:Tween;
      
      private var §_-hW§:Tween;
      
      private var §_-39§:Boolean = false;
      
      public function §_-Zu§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.panel_awards.§_-CK§();
         this.panel_shop.§_-CK§();
         this.panel_stats.§_-CK§();
         this.panel_team.§_-CK§();
         this.panel_weapons.§_-CK§();
         this.panel_credits.§_-CK§();
         this.panel_help.§_-CK§();
         this.panel_custom.§_-CK§();
      }
      
      private function §_-uN§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(Global.other_stats[Global.OSTAT_GAMES_PLAYED] == 0)
         {
            _loc2_;
         }
         else
         {
            this.MB_Awards.§_-QE§();
            this.MB_FunkyPear.§_-QE§();
            this.MB_Shop.§_-QE§();
            _loc2_;
            _loc2_;
            this.MB_Stats.§_-QE§();
            _loc1_;
            _loc1_;
            this.MB_TeamSetUp.§_-QE§();
            this.MB_WeaponSetUp.§_-QE§();
            this.MB_Help.§_-QE§();
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
         _loc9_;
         Global.lobby_display.panel_team.updatePoints();
         _loc8_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         if(Global.lobby_display.panel_team.§_-fk§.getInt() > 0)
         {
            _loc9_;
            _loc9_;
            _loc9_;
            this.MB_TeamSetUp.§_-Q1§();
            _loc9_;
         }
         else
         {
            this.MB_TeamSetUp.§_-qG§();
            _loc9_;
         }
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         Global.lobby_display.panel_weapons.updatePoints();
         _loc9_;
         var _loc1_:int = Global.lobby_display.panel_weapons.§_-fk§.getInt();
         var _loc2_:* = 999999;
         _loc9_;
         _loc8_;
         if(_loc1_ > 0)
         {
            _loc9_;
            _loc9_;
            _loc3_ = 0;
            while(true)
            {
               _loc8_;
               if(_loc3_ >= SafeGlobal.weaponsUnlocked.length)
               {
                  break;
               }
               _loc8_;
               _loc8_;
               _loc8_;
               if(SafeGlobal.weaponsUnlocked[_loc3_] == true)
               {
                  _loc9_;
                  _loc9_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc4_ = Global.weaponMaxStock[_loc3_];
                  _loc8_;
                  _loc8_;
                  _loc9_;
                  _loc9_;
                  _loc5_ = SafeGlobal.weaponsStock[_loc3_];
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc6_ = _loc4_ - _loc5_;
                  _loc9_;
                  _loc9_;
                  if((_loc4_ - _loc5_) > 0)
                  {
                     _loc9_;
                     _loc9_;
                     _loc8_;
                     _loc7_ = Global.weaponCost[_loc3_];
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     if((Global.weaponCost[_loc3_]) < _loc2_)
                     {
                        _loc9_;
                        _loc9_;
                        _loc2_ = _loc7_;
                     }
                  }
               }
               _loc3_++;
            }
            if(_loc1_ >= _loc2_)
            {
               _loc9_;
               this.MB_WeaponSetUp.§_-Q1§();
            }
            else
            {
               _loc8_;
               this.MB_WeaponSetUp.§_-qG§();
               _loc9_;
               _loc9_;
            }
         }
         else
         {
            this.MB_WeaponSetUp.§_-qG§();
         }
         if(Global.lobby_display.panel_awards.checkNewAwards() == true)
         {
            _loc8_;
            _loc8_;
            this.MB_Awards.§_-Q1§();
            _loc9_;
         }
         else
         {
            this.MB_Awards.§_-qG§();
         }
         this.§_-uN§();
      }
      
      public function §_-3-§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         Global.lobby_display.checkForPanelCloseHelp(this.§_-8S§);
         _loc2_;
         Global.lobby_display.lobby_stats.§_-3P§();
         _loc2_;
         this.updateButtons();
         _loc2_;
         _loc2_;
         this.§_-V7§();
         _loc1_;
         _loc1_;
         this.§_-8S§ = "";
      }
      
      public function §_-g5§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.§_-8S§ != "")
         {
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            if(this.§_-8S§ == "panel_team")
            {
               this.panel_team.§_-E8§();
               _loc2_;
               _loc2_;
            }
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.§_-8S§ == "panel_weapons")
            {
               this.panel_weapons.§_-E8§();
            }
            if(this.§_-8S§ == "panel_custom")
            {
               this.panel_custom.§_-E8§();
            }
            this.§_-V7§();
            this.updateButtons();
            this.§_-Iv§ = "";
            this.§_-dT§(true);
            this.§_-8S§ = "";
         }
      }
      
      public function §_-NE§(param1:String, param2:String) : Boolean
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1 == "MB_Awards" && param2 == "panel_awards")
         {
            _loc3_;
            _loc3_;
            return false;
         }
         _loc3_;
         _loc3_;
         if(param1 == "MB_Challenges" && param2 == "panel_challenges")
         {
            _loc4_;
            _loc4_;
            return false;
         }
         _loc3_;
         if(param1 == "MB_FunkyPear" && param2 == "panel_credits")
         {
            return false;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1 == "MB_Shop" && param2 == "panel_shop")
         {
            return false;
         }
         if(param1 == "MB_Stats" && param2 == "panel_stats")
         {
            _loc3_;
            return false;
         }
         _loc4_;
         if(param1 == "MB_TeamSetUp" && param2 == "panel_team")
         {
            return false;
         }
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(param1 == "MB_WeaponSetUp" && param2 == "panel_weapons")
         {
            _loc4_;
            _loc4_;
            return false;
         }
         if(param1 == "MB_Help" && param2 == "panel_help")
         {
            _loc4_;
            _loc3_;
            return false;
         }
         return true;
      }
      
      public function §_-rh§(param1:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = false;
         _loc4_;
         _loc4_;
         if(this.§_-Iv§ != param1)
         {
            this.§_-V7§();
            _loc3_;
            this.updateButtons();
         }
         _loc4_;
         _loc4_;
         if(this.§_-NE§(param1,this.§_-8S§))
         {
            if(this.§_-8S§ == "panel_team")
            {
               _loc4_;
               _loc4_;
               this.panel_team.§_-E8§();
            }
            _loc4_;
            _loc4_;
            if(this.§_-8S§ == "panel_weapons")
            {
               _loc4_;
               _loc4_;
               _loc4_;
               this.panel_weapons.§_-E8§();
            }
            _loc4_;
            _loc4_;
            if(this.§_-8S§ == "panel_custom")
            {
               this.panel_custom.§_-E8§();
            }
            this.§_-Iv§ = param1;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc2_ = false;
            if(this.§_-8S§ == "")
            {
               _loc2_ = true;
               _loc4_;
               _loc4_;
            }
            Global.lobby_display.checkForMenuClickHelp(param1);
            _loc3_;
            if(param1 == "MB_Awards")
            {
               this.§_-dT§();
               this.§_-8S§ = "panel_awards";
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               this.panel_awards.tweenIn(_loc2_);
               this.panel_awards.update();
               _loc4_;
               _loc4_;
            }
            else
            {
               _loc4_;
               if(param1 == "MB_FunkyPear")
               {
                  this.§_-dT§();
                  _loc4_;
                  this.§_-8S§ = "panel_credits";
                  _loc4_;
                  this.panel_credits.update();
                  _loc3_;
                  _loc3_;
                  this.panel_credits.tweenIn(_loc2_);
                  _loc3_;
                  _loc3_;
                  Global.lobby_client.clickedCredits();
                  _loc3_;
               }
               else
               {
                  _loc3_;
                  if(param1 == "MB_Shop")
                  {
                     _loc4_;
                     this.§_-dT§();
                     this.§_-8S§ = "panel_shop";
                     _loc4_;
                     this.panel_shop.tweenIn(_loc2_);
                     this.panel_shop.update();
                     _loc4_;
                  }
                  else
                  {
                     _loc3_;
                     if(param1 == "MB_Stats")
                     {
                        this.§_-dT§();
                        this.§_-8S§ = "panel_stats";
                        _loc3_;
                        this.panel_stats.tweenIn(_loc2_);
                        this.panel_stats.update();
                     }
                     else if(param1 == "MB_TeamSetUp")
                     {
                        _loc4_;
                        _loc4_;
                        this.§_-dT§();
                        this.§_-8S§ = "panel_team";
                        _loc4_;
                        _loc4_;
                        _loc4_;
                        this.panel_team.tweenIn(_loc2_);
                        this.panel_team.update();
                     }
                     else
                     {
                        _loc3_;
                        _loc3_;
                        if(param1 == "MB_WeaponSetUp")
                        {
                           this.§_-dT§();
                           _loc4_;
                           this.§_-8S§ = "panel_weapons";
                           _loc3_;
                           _loc3_;
                           this.panel_weapons.tweenIn(_loc2_);
                           _loc3_;
                           _loc3_;
                           this.panel_weapons.update(this.panel_weapons.§_-pR§,this.panel_weapons.§_-vh§);
                        }
                        else
                        {
                           _loc4_;
                           _loc4_;
                           if(param1 == "MB_Help")
                           {
                              _loc3_;
                              _loc3_;
                              this.§_-dT§();
                              this.§_-8S§ = "panel_help";
                              this.panel_help.tweenIn(_loc2_);
                           }
                           else if(param1 == "CustomWeapon0")
                           {
                              _loc4_;
                              this.§_-dT§();
                              this.§_-8S§ = "panel_custom";
                              _loc3_;
                              _loc4_;
                              _loc4_;
                              _loc3_;
                              this.panel_custom.§_-Yy§(0);
                              _loc4_;
                              this.panel_custom.tweenIn(_loc2_);
                              _loc3_;
                           }
                           else
                           {
                              _loc3_;
                              _loc4_;
                              if(param1 == "CustomWeapon1")
                              {
                                 this.§_-dT§();
                                 this.§_-8S§ = "panel_custom";
                                 _loc3_;
                                 _loc3_;
                                 this.panel_custom.§_-Yy§(1);
                                 _loc3_;
                                 _loc3_;
                                 _loc4_;
                                 this.panel_custom.tweenIn(_loc2_);
                                 _loc4_;
                              }
                              else if(param1 == "CustomWeapon2")
                              {
                                 this.§_-dT§();
                                 this.§_-8S§ = "panel_custom";
                                 _loc3_;
                                 this.panel_custom.§_-Yy§(2);
                                 _loc4_;
                                 _loc4_;
                                 _loc3_;
                                 this.panel_custom.tweenIn(_loc2_);
                              }
                              else
                              {
                                 _loc3_;
                                 _loc3_;
                                 if(param1 == "TestCustomWeapon0")
                                 {
                                    _loc4_;
                                    this.§_-dT§();
                                    this.§_-8S§ = "panel_custom";
                                    _loc3_;
                                    this.panel_custom.§_-mi§();
                                    _loc4_;
                                    _loc3_;
                                    this.panel_custom.tweenIn(_loc2_);
                                    _loc4_;
                                 }
                                 else if(param1 == "TestCustomWeapon1")
                                 {
                                    _loc3_;
                                    this.§_-dT§();
                                    _loc4_;
                                    this.§_-8S§ = "panel_custom";
                                    this.panel_custom.§_-mi§();
                                    _loc3_;
                                    _loc4_;
                                    _loc4_;
                                    this.panel_custom.tweenIn(_loc2_);
                                 }
                                 else if(param1 == "TestCustomWeapon2")
                                 {
                                    this.§_-dT§();
                                    _loc4_;
                                    this.§_-8S§ = "panel_custom";
                                    _loc4_;
                                    _loc4_;
                                    _loc3_;
                                    _loc3_;
                                    this.panel_custom.§_-mi§();
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
      
      private function §_-V7§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:§_-d3§ = getChildByName(this.§_-Iv§) as §_-d3§;
         _loc2_;
         _loc2_;
         if(_loc1_ != null)
         {
            _loc2_;
            _loc1_.§_-oD§();
         }
      }
      
      private function §_-dT§(param1:Boolean = false) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:§_-A3§ = parent.getChildByName(this.§_-8S§) as §_-A3§;
         _loc4_;
         _loc4_;
         if(_loc2_ != null)
         {
            _loc3_;
            _loc2_.tweenOut(param1);
         }
      }
      
      public function tweenOut() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.§_-39§)
         {
            this.§_-dT§(true);
            this.§_-Bm§ = new Tween(this,"x",Strong.easeOut,x,0 - (width + 20),1,true);
            _loc2_;
            this.§_-Bm§.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOut,false,0,true);
            this.§_-Bm§.start();
            _loc2_;
            _loc2_;
            this.§_-39§ = false;
         }
      }
      
      private function finishTweenOut(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         visible = false;
      }
      
      public function tweenIn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.§_-39§)
         {
            this.updateButtons();
            visible = true;
            this.§_-hW§ = new Tween(this,"x",Strong.easeOut,x,0,1,true);
            _loc2_;
            this.§_-hW§.start();
            _loc1_;
            this.§_-39§ = true;
         }
      }
   }
}
