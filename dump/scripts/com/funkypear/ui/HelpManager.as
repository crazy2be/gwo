package com.funkypear.ui
{
   import §_-Cv§.LobbyTutorialData;
   import §_-Cv§.§throw§;
   
   public class HelpManager extends Object
   {
      
      public function HelpManager()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
         _loc2_;
         _loc2_;
         this.§_-DP§ = new LobbyTutorialData();
      }
      
      private var §_-pO§:int = 1;
      
      private var §_-UV§:int = 2;
      
      private var §_-AF§:int = 3;
      
      private var §_-6v§:int = 4;
      
      private var §_-Pb§:int = 5;
      
      private var §_-HT§:int = 6;
      
      private var §_-HW§:int = 7;
      
      private var §_-7m§:int = 8;
      
      private var §_-n-§:int = 9;
      
      private var §_-nO§:int = 10;
      
      private var §_-2Q§:int = 11;
      
      private var §_-Tl§:int = 12;
      
      private var §_-0-N§:int = 13;
      
      private var §_-p7§:int = 14;
      
      private var §_-ov§:int = 15;
      
      private var §_-YG§:int = 16;
      
      private var §_-eX§:int = 17;
      
      private var §_-P8§:int = 18;
      
      private var §_-OU§:int = 19;
      
      private var §_-Yn§:int = 20;
      
      private var §in§:int = 21;
      
      private var §_-U§:int = 22;
      
      private var §_-Ht§:Boolean = false;
      
      private var §_-dO§:int;
      
      private var §_-CG§:int = -1;
      
      private var §_-lH§:int;
      
      private var lhd:LobbyHelpDisplay;
      
      private var §_-DP§:LobbyTutorialData;
      
      private var §_-e9§:Boolean = false;
      
      public function §_-7q§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.§_-lH§ = param1;
         _loc3_;
         _loc3_;
         if(SafeGlobal.helpItemsViewed != null)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_HUB)
            {
               _loc3_;
               _loc2_;
               if(SafeGlobal.helpItemsViewed[this.§_-pO§] == false)
               {
                  _loc3_;
                  _loc3_;
                  this.§_-II§(this.§_-pO§);
                  _loc2_;
                  _loc2_;
               }
               else
               {
                  _loc2_;
                  _loc2_;
                  Global.lobby_display.panel_team.updatePoints();
                  _loc2_;
                  _loc2_;
                  _loc3_;
                  _loc3_;
                  _loc2_;
                  _loc2_;
                  _loc3_;
                  _loc2_;
                  _loc2_;
                  if(Global.lobby_display.panel_team.§_-fk§.getInt() > 0 && Global.other_stats[Global.OSTAT_GAMES_PLAYED] > 0)
                  {
                     _loc3_;
                     _loc2_;
                     if(SafeGlobal.helpItemsViewed[this.§_-Pb§] == false)
                     {
                        _loc3_;
                        this.§_-II§(this.§_-Pb§);
                     }
                     else
                     {
                        _loc2_;
                        _loc2_;
                        _loc2_;
                        if(SafeGlobal.§_-LL§.getInt() > 1)
                        {
                           _loc2_;
                           if(SafeGlobal.helpItemsViewed[this.§_-HW§] == false)
                           {
                              _loc2_;
                              this.§_-II§(this.§_-HW§);
                           }
                           else
                           {
                              _loc3_;
                              if(SafeGlobal.helpItemsViewed[this.§_-eX§] == false)
                              {
                                 this.§_-II§(this.§_-eX§);
                              }
                              else
                              {
                                 _loc2_;
                                 _loc2_;
                                 if(SafeGlobal.campaigns[1].unlocked[0] == 1)
                                 {
                                    _loc3_;
                                    _loc2_;
                                    if(SafeGlobal.helpItemsViewed[this.§_-nO§] == false)
                                    {
                                       this.§_-II§(this.§_-nO§);
                                    }
                                    else
                                    {
                                       _loc2_;
                                       _loc3_;
                                       if(!(Global.custom_maps[0] == "") && !(Global.custom_maps[0] == null))
                                       {
                                          _loc2_;
                                          _loc3_;
                                          _loc2_;
                                          if(SafeGlobal.helpItemsViewed[this.§_-Tl§] == false)
                                          {
                                             _loc2_;
                                             this.§_-II§(this.§_-Tl§);
                                             _loc3_;
                                             _loc3_;
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
            }
            else
            {
               _loc3_;
               _loc3_;
               _loc2_;
               if(param1 == Global.SCREEN_CAMPAIGN_SELECT)
               {
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  if(SafeGlobal.helpItemsViewed[this.§_-UV§] == false)
                  {
                     _loc3_;
                     this.§_-II§(this.§_-UV§);
                     _loc3_;
                     _loc3_;
                  }
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  if(param1 == Global.SCREEN_BROWSE_CAMPAIGN)
                  {
                     _loc3_;
                     _loc2_;
                     _loc2_;
                     if(SafeGlobal.helpItemsViewed[this.§_-AF§] == false)
                     {
                        _loc2_;
                        _loc2_;
                        this.§_-II§(this.§_-AF§);
                     }
                     else
                     {
                        _loc2_;
                        _loc3_;
                        Global.lobby_display.panel_team.updatePoints();
                        _loc3_;
                        if(Global.lobby_display.panel_team.§_-fk§.getInt() > 0 && Global.other_stats[Global.OSTAT_GAMES_PLAYED] > 0)
                        {
                           _loc2_;
                           if(SafeGlobal.helpItemsViewed[this.§_-Pb§] == false)
                           {
                              _loc2_;
                              this.§_-II§(this.§_-Pb§);
                           }
                           else
                           {
                              _loc3_;
                              _loc3_;
                              if(SafeGlobal.§_-LL§.getInt() > 1)
                              {
                                 _loc2_;
                                 _loc2_;
                                 _loc2_;
                                 _loc2_;
                                 if(SafeGlobal.helpItemsViewed[this.§_-HW§] == false)
                                 {
                                    this.§_-II§(this.§_-HW§);
                                 }
                                 else
                                 {
                                    _loc3_;
                                    _loc3_;
                                    if(SafeGlobal.helpItemsViewed[this.§_-eX§] == false)
                                    {
                                       _loc2_;
                                       _loc2_;
                                       this.§_-II§(this.§_-eX§);
                                       _loc2_;
                                       _loc2_;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc2_;
                     _loc2_;
                     if(param1 == Global.SCREEN_WAITING_AREA)
                     {
                        _loc2_;
                        _loc2_;
                        if(SafeGlobal.helpItemsViewed[this.§_-6v§] == false)
                        {
                           _loc2_;
                           if(Global.other_stats[Global.OSTAT_GAMES_PLAYED] > 0)
                           {
                              Global.lobby_client.saveHelpItemViewed(this.§_-6v§);
                           }
                           else
                           {
                              this.§_-II§(this.§_-6v§);
                           }
                        }
                        else
                        {
                           _loc2_;
                           _loc2_;
                           _loc2_;
                           if(SafeGlobal.selected_level.is_private == true && SafeGlobal.selected_level.§_-F5§ == true)
                           {
                              _loc2_;
                              _loc2_;
                              if(SafeGlobal.helpItemsViewed[this.§_-ov§] == false)
                              {
                                 this.§_-II§(this.§_-ov§);
                              }
                           }
                        }
                     }
                     else if(param1 != Global.SCREEN_GAME_END)
                     {
                        _loc2_;
                        _loc2_;
                        _loc2_;
                        if(param1 == Global.SCREEN_EDITOR_SLOTS)
                        {
                           _loc3_;
                           _loc2_;
                           _loc2_;
                           if(SafeGlobal.helpItemsViewed[this.§_-2Q§] == false)
                           {
                              this.§_-II§(this.§_-2Q§);
                           }
                        }
                        else if(param1 == Global.SCREEN_CUSTOM_SELECT)
                        {
                           _loc3_;
                           _loc3_;
                           _loc2_;
                           _loc2_;
                           _loc2_;
                           if(!(Global.custom_maps[0] == "") && !(Global.custom_maps[0] == null))
                           {
                              _loc2_;
                              _loc2_;
                              if(SafeGlobal.helpItemsViewed[this.§_-0-N§] == false)
                              {
                                 this.§_-II§(this.§_-0-N§);
                                 _loc2_;
                              }
                           }
                        }
                        else if(param1 == Global.SCREEN_CUSTOM_GAME)
                        {
                           if(SafeGlobal.helpItemsViewed[this.§_-p7§] == false)
                           {
                              this.§_-II§(this.§_-p7§);
                              _loc3_;
                           }
                        }
                        else if(param1 == Global.SCREEN_BROWSE_GAMES)
                        {
                           _loc3_;
                           if(SafeGlobal.helpItemsViewed[this.§_-U§] == false)
                           {
                              _loc2_;
                              _loc2_;
                              this.§_-II§(this.§_-U§);
                           }
                        }
                        
                        
                        
                     }
                     
                  }
               }
            }
         }
      }
      
      public function §_-gV§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         if(SafeGlobal.helpItemsViewed[this.§_-6v§] == true)
         {
            _loc2_;
            _loc2_;
            if(SafeGlobal.helpItemsViewed[this.§in§] == false)
            {
               _loc1_;
               this.§_-II§(this.§in§);
            }
         }
      }
      
      public function checkForMenuClickHelp(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(SafeGlobal.helpItemsViewed != null)
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            if(param1 == "MB_TeamSetUp")
            {
               _loc2_;
               _loc2_;
               _loc2_;
               if(SafeGlobal.helpItemsViewed[this.§_-HT§] == false)
               {
                  this.§_-II§(this.§_-HT§);
                  _loc2_;
                  _loc2_;
               }
               else
               {
                  _loc3_;
                  if(this.§_-e9§)
                  {
                     this.tweenOffHelp();
                     _loc3_;
                     _loc3_;
                  }
               }
               _loc2_;
               _loc2_;
               _loc3_;
               if(SafeGlobal.helpItemsViewed[this.§_-Pb§] == false)
               {
                  _loc2_;
                  _loc3_;
                  Global.lobby_client.saveHelpItemViewed(this.§_-Pb§);
                  _loc3_;
               }
            }
            else
            {
               _loc2_;
               _loc3_;
               _loc3_;
               if(param1 == "MB_WeaponSetUp")
               {
                  _loc3_;
                  if(SafeGlobal.§_-LL§.getInt() > 1)
                  {
                     _loc3_;
                     _loc3_;
                     if(SafeGlobal.helpItemsViewed[this.§_-7m§] == false)
                     {
                        this.§_-II§(this.§_-7m§);
                     }
                     else
                     {
                        _loc3_;
                        _loc3_;
                        _loc3_;
                        _loc3_;
                        if(SafeGlobal.weaponsUnlocked[31] == true || SafeGlobal.weaponsUnlocked[39] == true || SafeGlobal.weaponsUnlocked[40] == true)
                        {
                           _loc2_;
                           _loc2_;
                           _loc2_;
                           if(SafeGlobal.helpItemsViewed[this.§_-YG§] == false)
                           {
                              _loc3_;
                              _loc3_;
                              this.§_-II§(this.§_-YG§);
                           }
                           else if(this.§_-e9§)
                           {
                              _loc3_;
                              _loc3_;
                              this.tweenOffHelp();
                              _loc3_;
                              _loc3_;
                           }
                           
                        }
                        else
                        {
                           _loc3_;
                           _loc3_;
                           if(this.§_-e9§)
                           {
                              this.tweenOffHelp();
                           }
                        }
                     }
                  }
                  _loc3_;
                  _loc3_;
                  if(SafeGlobal.helpItemsViewed[this.§_-HW§] == false)
                  {
                     _loc3_;
                     _loc3_;
                     Global.lobby_client.saveHelpItemViewed(this.§_-HW§);
                     _loc2_;
                     _loc2_;
                  }
               }
               else if(param1 == "MB_Shop")
               {
                  _loc2_;
                  _loc2_;
                  if(SafeGlobal.helpItemsViewed[this.§_-P8§] == false)
                  {
                     _loc2_;
                     _loc2_;
                     this.§_-II§(this.§_-P8§);
                  }
                  else if(this.§_-e9§)
                  {
                     this.tweenOffHelp();
                     _loc3_;
                  }
                  
                  if(SafeGlobal.helpItemsViewed[this.§_-eX§] == false)
                  {
                     _loc3_;
                     _loc3_;
                     Global.lobby_client.saveHelpItemViewed(this.§_-eX§);
                  }
               }
               
            }
         }
      }
      
      public function checkForPanelCloseHelp(param1:String) : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:* = false;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         _loc7_;
         _loc7_;
         if(param1 == "panel_team")
         {
            _loc8_;
            _loc8_;
            _loc2_ = false;
            if(SafeGlobal.helpItemsViewed[this.§_-Yn§] == false)
            {
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               Global.lobby_display.panel_team.updatePoints();
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               if(Global.lobby_display.panel_team.§_-fk§.getInt() > 0)
               {
                  _loc8_;
                  _loc3_ = false;
                  _loc8_;
                  _loc8_;
                  _loc4_ = 0;
                  while(true)
                  {
                     _loc7_;
                     _loc8_;
                     if(_loc4_ >= 6)
                     {
                        break;
                     }
                     _loc7_;
                     _loc7_;
                     _loc7_;
                     _loc7_;
                     if(Global.unitDetails[_loc4_].active)
                     {
                        _loc7_;
                        _loc8_;
                        _loc8_;
                        _loc7_;
                        if(Global.unitDetails[_loc4_].health > 1 || Global.unitDetails[_loc4_].accuracy > 1)
                        {
                           _loc7_;
                           _loc7_;
                           _loc8_;
                           _loc8_;
                           _loc3_ = true;
                           _loc7_;
                           break;
                        }
                     }
                     _loc4_++;
                  }
                  if(_loc3_)
                  {
                     _loc7_;
                     _loc7_;
                     _loc7_;
                     Global.lobby_client.saveHelpItemViewed(this.§_-Yn§);
                  }
                  else
                  {
                     this.§_-II§(this.§_-Yn§);
                     _loc7_;
                     _loc2_ = true;
                  }
               }
            }
            if(!_loc2_)
            {
               _loc7_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               if(SafeGlobal.§_-LL§.getInt() > 1)
               {
                  if(SafeGlobal.helpItemsViewed[this.§_-HW§] == false)
                  {
                     _loc8_;
                     _loc7_;
                     Global.lobby_display.panel_weapons.updatePoints();
                     _loc8_;
                     _loc8_;
                     _loc7_;
                     _loc8_;
                     _loc8_;
                     _loc7_;
                     if(Global.lobby_display.panel_weapons.§_-fk§.getInt() > 0)
                     {
                        this.§_-II§(this.§_-HW§);
                        _loc7_;
                        _loc7_;
                     }
                  }
               }
            }
         }
         else if(param1 == "panel_weapons")
         {
            _loc2_ = false;
            _loc7_;
            if(SafeGlobal.§_-LL§.getInt() > 1)
            {
               if(SafeGlobal.helpItemsViewed[this.§_-OU§] == false)
               {
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  Global.lobby_display.panel_weapons.updatePoints();
                  _loc8_;
                  if(Global.lobby_display.panel_weapons.§_-fk§.getInt() > 0)
                  {
                     _loc5_ = false;
                     _loc6_ = 1;
                     while(_loc6_ < SafeGlobal.weaponsStock.length)
                     {
                        _loc7_;
                        _loc7_;
                        if(SafeGlobal.weaponsStock[_loc6_] > 0)
                        {
                           _loc8_;
                           _loc5_ = true;
                           _loc7_;
                           break;
                        }
                        _loc6_++;
                     }
                     _loc7_;
                     _loc7_;
                     if(_loc5_)
                     {
                        Global.lobby_client.saveHelpItemViewed(this.§_-OU§);
                     }
                     else
                     {
                        this.§_-II§(this.§_-OU§);
                        _loc2_ = true;
                     }
                  }
               }
               if(!_loc2_)
               {
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  if(SafeGlobal.helpItemsViewed[this.§_-eX§] == false)
                  {
                     if(Global.other_stats[Global.OSTAT_GAMES_PLAYED] > 0)
                     {
                        this.§_-II§(this.§_-eX§);
                     }
                  }
               }
            }
         }
         
      }
      
      public function §_-9q§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(SafeGlobal.helpItemsViewed[param1] == false)
         {
            _loc2_;
            this.§_-II§(param1);
         }
      }
      
      private function §_-II§(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:§throw§ = null;
         _loc3_;
         _loc3_;
         if(!this.§_-e9§)
         {
            _loc3_;
            this.§_-dO§ = param1;
            _loc3_;
            _loc3_;
            this.§_-CG§ = -1;
            _loc3_;
            _loc3_;
            _loc2_ = this.§_-DP§.§_-7K§(param1);
            _loc4_;
            this.lhd = new LobbyHelpDisplay(this.§_-DP§.§_-7K§(param1),this);
            _loc4_;
            _loc4_;
            SafeGlobal.TIMELINE.addLobbyHelpDisplay(this.lhd);
            _loc3_;
            this.§_-e9§ = true;
         }
         else
         {
            this.§_-CG§ = param1;
            _loc3_;
            this.tweenOffHelp();
         }
      }
      
      public function tweenOffHelp() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-e9§ = false;
         _loc2_;
         _loc1_;
         _loc1_;
         if(this.lhd != null)
         {
            _loc1_;
            _loc2_;
            this.lhd.§_-JK§();
            _loc1_;
            _loc1_;
            this.lhd.tweenOff();
         }
      }
      
      public function finishTweenOffHelp() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-e9§ = false;
         _loc1_;
         _loc2_;
         if(this.§_-dO§ != -1)
         {
            Global.lobby_client.saveHelpItemViewed(this.§_-dO§);
         }
         SafeGlobal.TIMELINE.removeLobbyHelpDisplay();
         _loc2_;
         this.lhd = null;
         if(this.§_-CG§ != -1)
         {
            this.§_-II§(this.§_-CG§);
         }
      }
   }
}
