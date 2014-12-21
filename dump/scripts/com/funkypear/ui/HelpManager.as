package com.funkypear.ui
{
   import §_-Ff§.LobbyTutorialData;
   import §_-Ff§.§_-YS§;
   
   public class HelpManager extends Object
   {
      
      public function HelpManager()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
         _loc1_;
         _loc1_;
         this.§_-Tt§ = new LobbyTutorialData();
      }
      
      private var §_-nZ§:int = 1;
      
      private var §_-iI§:int = 2;
      
      private var §_-Bm§:int = 3;
      
      private var §_-N1§:int = 4;
      
      private var §_-Yb§:int = 5;
      
      private var §_-pb§:int = 6;
      
      private var §_-Zh§:int = 7;
      
      private var §_-w8§:int = 8;
      
      private var §_-r3§:int = 9;
      
      private var §_-jR§:int = 10;
      
      private var §_-n2§:int = 11;
      
      private var §_-zc§:int = 12;
      
      private var §_-M9§:int = 13;
      
      private var §_-la§:int = 14;
      
      private var §_-sC§:int = 15;
      
      private var §null§:int = 16;
      
      private var §_-r1§:int = 17;
      
      private var §_-1H§:int = 18;
      
      private var §_-su§:int = 19;
      
      private var §_-8f§:int = 20;
      
      private var §_-Y1§:int = 21;
      
      private var §_-Q8§:int = 22;
      
      private var §_-Y0§:Boolean = false;
      
      private var §_-43§:int;
      
      private var §_-8Q§:int = -1;
      
      private var §_-Mh§:int;
      
      private var lhd:LobbyHelpDisplay;
      
      private var §_-Tt§:LobbyTutorialData;
      
      private var §_-RJ§:Boolean = false;
      
      public function §_-MK§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-Mh§ = param1;
         _loc2_;
         _loc2_;
         if(SafeGlobal.helpItemsViewed != null)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_HUB)
            {
               _loc2_;
               _loc2_;
               if(SafeGlobal.helpItemsViewed[this.§_-nZ§] == false)
               {
                  this.§_-fd§(this.§_-nZ§);
               }
               else
               {
                  _loc2_;
                  _loc2_;
                  Global.lobby_display.panel_team.updatePoints();
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  if(Global.lobby_display.panel_team.§_-VP§.getInt() > 0 && Global.other_stats[Global.OSTAT_GAMES_PLAYED] > 0)
                  {
                     _loc2_;
                     if(SafeGlobal.helpItemsViewed[this.§_-Yb§] == false)
                     {
                        this.§_-fd§(this.§_-Yb§);
                        _loc2_;
                        _loc2_;
                     }
                     else
                     {
                        _loc2_;
                        _loc2_;
                        _loc2_;
                        _loc3_;
                        _loc3_;
                        if(SafeGlobal.§_-wv§.getInt() > 1)
                        {
                           _loc2_;
                           _loc2_;
                           _loc3_;
                           _loc3_;
                           if(SafeGlobal.helpItemsViewed[this.§_-Zh§] == false)
                           {
                              this.§_-fd§(this.§_-Zh§);
                           }
                           else if(SafeGlobal.helpItemsViewed[this.§_-r1§] == false)
                           {
                              this.§_-fd§(this.§_-r1§);
                              _loc2_;
                           }
                           else
                           {
                              _loc3_;
                              _loc3_;
                              _loc3_;
                              if(SafeGlobal.campaigns[1].unlocked[0] == 1)
                              {
                                 _loc3_;
                                 _loc3_;
                                 if(SafeGlobal.helpItemsViewed[this.§_-jR§] == false)
                                 {
                                    this.§_-fd§(this.§_-jR§);
                                 }
                                 else
                                 {
                                    _loc2_;
                                    if(!(Global.custom_maps[0] == "") && !(Global.custom_maps[0] == null))
                                    {
                                       _loc2_;
                                       _loc2_;
                                       _loc2_;
                                       if(SafeGlobal.helpItemsViewed[this.§_-zc§] == false)
                                       {
                                          _loc3_;
                                          this.§_-fd§(this.§_-zc§);
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
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               if(param1 == Global.SCREEN_CAMPAIGN_SELECT)
               {
                  _loc2_;
                  if(SafeGlobal.helpItemsViewed[this.§_-iI§] == false)
                  {
                     this.§_-fd§(this.§_-iI§);
                  }
               }
               else if(param1 == Global.SCREEN_BROWSE_CAMPAIGN)
               {
                  _loc3_;
                  _loc3_;
                  if(SafeGlobal.helpItemsViewed[this.§_-Bm§] == false)
                  {
                     this.§_-fd§(this.§_-Bm§);
                     _loc3_;
                  }
                  else
                  {
                     _loc3_;
                     _loc3_;
                     _loc2_;
                     _loc2_;
                     Global.lobby_display.panel_team.updatePoints();
                     if(Global.lobby_display.panel_team.§_-VP§.getInt() > 0 && Global.other_stats[Global.OSTAT_GAMES_PLAYED] > 0)
                     {
                        _loc3_;
                        if(SafeGlobal.helpItemsViewed[this.§_-Yb§] == false)
                        {
                           _loc2_;
                           _loc2_;
                           this.§_-fd§(this.§_-Yb§);
                        }
                        else
                        {
                           _loc3_;
                           _loc3_;
                           if(SafeGlobal.§_-wv§.getInt() > 1)
                           {
                              _loc2_;
                              _loc2_;
                              _loc2_;
                              _loc2_;
                              if(SafeGlobal.helpItemsViewed[this.§_-Zh§] == false)
                              {
                                 _loc2_;
                                 _loc2_;
                                 this.§_-fd§(this.§_-Zh§);
                                 _loc2_;
                                 _loc2_;
                              }
                              else
                              {
                                 _loc3_;
                                 _loc3_;
                                 if(SafeGlobal.helpItemsViewed[this.§_-r1§] == false)
                                 {
                                    this.§_-fd§(this.§_-r1§);
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
                  _loc2_;
                  if(param1 == Global.SCREEN_WAITING_AREA)
                  {
                     _loc2_;
                     _loc2_;
                     if(SafeGlobal.helpItemsViewed[this.§_-N1§] == false)
                     {
                        _loc3_;
                        _loc3_;
                        if(Global.other_stats[Global.OSTAT_GAMES_PLAYED] > 0)
                        {
                           _loc3_;
                           Global.lobby_client.saveHelpItemViewed(this.§_-N1§);
                        }
                        else
                        {
                           this.§_-fd§(this.§_-N1§);
                           _loc2_;
                           _loc2_;
                           SafeGlobal.helpItemsViewed[this.§_-N1§] = true;
                           _loc2_;
                        }
                     }
                     else
                     {
                        _loc3_;
                        _loc3_;
                        _loc3_;
                        _loc3_;
                        _loc2_;
                        _loc2_;
                        if(SafeGlobal.selected_level.is_private == true && SafeGlobal.selected_level.§_-Wn§ == true)
                        {
                           _loc3_;
                           _loc3_;
                           _loc3_;
                           _loc3_;
                           _loc3_;
                           if(SafeGlobal.helpItemsViewed[this.§_-sC§] == false)
                           {
                              this.§_-fd§(this.§_-sC§);
                           }
                        }
                     }
                  }
                  else if(param1 == Global.SCREEN_GAME_END)
                  {
                     _loc2_;
                  }
                  else
                  {
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     if(param1 == Global.SCREEN_EDITOR_SLOTS)
                     {
                        _loc2_;
                        _loc2_;
                        _loc3_;
                        _loc3_;
                        if(SafeGlobal.helpItemsViewed[this.§_-n2§] == false)
                        {
                           _loc3_;
                           this.§_-fd§(this.§_-n2§);
                        }
                     }
                     else if(param1 == Global.SCREEN_CUSTOM_SELECT)
                     {
                        _loc2_;
                        if(!(Global.custom_maps[0] == "") && !(Global.custom_maps[0] == null))
                        {
                           _loc3_;
                           if(SafeGlobal.helpItemsViewed[this.§_-M9§] == false)
                           {
                              _loc3_;
                              this.§_-fd§(this.§_-M9§);
                           }
                        }
                     }
                     else
                     {
                        _loc3_;
                        if(param1 == Global.SCREEN_CUSTOM_GAME)
                        {
                           _loc2_;
                           _loc2_;
                           if(SafeGlobal.helpItemsViewed[this.§_-la§] == false)
                           {
                              this.§_-fd§(this.§_-la§);
                              _loc3_;
                           }
                        }
                        else if(param1 == Global.SCREEN_BROWSE_GAMES)
                        {
                           _loc3_;
                           if(SafeGlobal.helpItemsViewed[this.§_-Q8§] == false)
                           {
                              this.§_-fd§(this.§_-Q8§);
                           }
                        }
                        
                     }
                     
                  }
                  
               }
               
            }
         }
      }
      
      public function §_-8d§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         if(SafeGlobal.helpItemsViewed[this.§_-N1§] == true)
         {
            _loc1_;
            if(SafeGlobal.helpItemsViewed[this.§_-Y1§] == false)
            {
               _loc1_;
               _loc1_;
               this.§_-fd§(this.§_-Y1§);
            }
         }
      }
      
      public function checkForMenuClickHelp(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(SafeGlobal.helpItemsViewed != null)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            if(param1 == "MB_TeamSetUp")
            {
               _loc2_;
               _loc2_;
               if(SafeGlobal.helpItemsViewed[this.§_-pb§] == false)
               {
                  _loc2_;
                  this.§_-fd§(this.§_-pb§);
                  _loc3_;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  if(this.§_-RJ§)
                  {
                     this.tweenOffHelp();
                     _loc2_;
                     _loc2_;
                  }
               }
               _loc3_;
               if(SafeGlobal.helpItemsViewed[this.§_-Yb§] == false)
               {
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc3_;
                  _loc3_;
                  Global.lobby_client.saveHelpItemViewed(this.§_-Yb§);
                  _loc2_;
                  _loc2_;
               }
            }
            else
            {
               _loc2_;
               _loc2_;
               _loc3_;
               if(param1 == "MB_WeaponSetUp")
               {
                  if(SafeGlobal.§_-wv§.getInt() > 1)
                  {
                     if(SafeGlobal.helpItemsViewed[this.§_-w8§] == false)
                     {
                        this.§_-fd§(this.§_-w8§);
                        _loc2_;
                     }
                     else
                     {
                        _loc3_;
                        _loc3_;
                        _loc2_;
                        _loc2_;
                        _loc3_;
                        _loc3_;
                        if(SafeGlobal.weaponsUnlocked[31] == true || SafeGlobal.weaponsUnlocked[39] == true || SafeGlobal.weaponsUnlocked[40] == true)
                        {
                           if(SafeGlobal.helpItemsViewed[this.§null§] == false)
                           {
                              this.§_-fd§(this.§null§);
                           }
                           else if(this.§_-RJ§)
                           {
                              _loc3_;
                              this.tweenOffHelp();
                              _loc3_;
                           }
                           
                        }
                        else if(this.§_-RJ§)
                        {
                           _loc3_;
                           _loc3_;
                           this.tweenOffHelp();
                        }
                        
                     }
                  }
                  if(SafeGlobal.helpItemsViewed[this.§_-Zh§] == false)
                  {
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     Global.lobby_client.saveHelpItemViewed(this.§_-Zh§);
                     _loc2_;
                  }
               }
               else if(param1 == "MB_Shop")
               {
                  _loc2_;
                  _loc2_;
                  _loc3_;
                  _loc3_;
                  if(SafeGlobal.helpItemsViewed[this.§_-1H§] == false)
                  {
                     this.§_-fd§(this.§_-1H§);
                  }
                  else if(this.§_-RJ§)
                  {
                     _loc3_;
                     this.tweenOffHelp();
                  }
                  
                  if(SafeGlobal.helpItemsViewed[this.§_-r1§] == false)
                  {
                     Global.lobby_client.saveHelpItemViewed(this.§_-r1§);
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
         if(param1 == "panel_team")
         {
            _loc8_;
            _loc2_ = false;
            _loc8_;
            if(SafeGlobal.helpItemsViewed[this.§_-8f§] == false)
            {
               _loc7_;
               _loc7_;
               _loc8_;
               _loc8_;
               Global.lobby_display.panel_team.updatePoints();
               _loc8_;
               _loc8_;
               if(Global.lobby_display.panel_team.§_-VP§.getInt() > 0)
               {
                  _loc3_ = false;
                  _loc4_ = 0;
                  while(true)
                  {
                     _loc8_;
                     _loc7_;
                     if(_loc4_ >= 6)
                     {
                        _loc8_;
                        _loc8_;
                        break;
                     }
                     _loc7_;
                     _loc7_;
                     if(Global.unitDetails[_loc4_].active)
                     {
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        if(Global.unitDetails[_loc4_].health > 1 || Global.unitDetails[_loc4_].accuracy > 1)
                        {
                           _loc3_ = true;
                           _loc8_;
                           break;
                        }
                     }
                     _loc4_++;
                     _loc7_;
                  }
                  if(_loc3_)
                  {
                     _loc8_;
                     _loc7_;
                     Global.lobby_client.saveHelpItemViewed(this.§_-8f§);
                  }
                  else
                  {
                     this.§_-fd§(this.§_-8f§);
                     _loc7_;
                     _loc7_;
                     _loc2_ = true;
                  }
               }
            }
            if(!_loc2_)
            {
               _loc7_;
               _loc8_;
               _loc8_;
               _loc7_;
               if(SafeGlobal.§_-wv§.getInt() > 1)
               {
                  if(SafeGlobal.helpItemsViewed[this.§_-Zh§] == false)
                  {
                     _loc7_;
                     _loc7_;
                     _loc7_;
                     _loc7_;
                     Global.lobby_display.panel_weapons.updatePoints();
                     _loc8_;
                     _loc7_;
                     _loc7_;
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     if(Global.lobby_display.panel_weapons.§_-VP§.getInt() > 0)
                     {
                        this.§_-fd§(this.§_-Zh§);
                     }
                  }
               }
            }
         }
         else if(param1 == "panel_weapons")
         {
            _loc8_;
            _loc2_ = false;
            _loc8_;
            _loc8_;
            if(SafeGlobal.§_-wv§.getInt() > 1)
            {
               _loc7_;
               _loc8_;
               _loc8_;
               if(SafeGlobal.helpItemsViewed[this.§_-su§] == false)
               {
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  Global.lobby_display.panel_weapons.updatePoints();
                  if(Global.lobby_display.panel_weapons.§_-VP§.getInt() > 0)
                  {
                     _loc5_ = false;
                     _loc8_;
                     _loc8_;
                     _loc6_ = 1;
                     while(true)
                     {
                        if(_loc6_ >= SafeGlobal.weaponsStock.length)
                        {
                           _loc7_;
                           _loc7_;
                           break;
                        }
                        _loc7_;
                        if(SafeGlobal.weaponsStock[_loc6_] > 0)
                        {
                           _loc7_;
                           _loc7_;
                           _loc7_;
                           _loc5_ = true;
                           break;
                        }
                        _loc6_++;
                     }
                     if(_loc5_)
                     {
                        _loc7_;
                        Global.lobby_client.saveHelpItemViewed(this.§_-su§);
                     }
                     else
                     {
                        this.§_-fd§(this.§_-su§);
                        _loc7_;
                        _loc7_;
                        _loc8_;
                        _loc8_;
                        _loc2_ = true;
                        _loc7_;
                     }
                  }
               }
               if(!_loc2_)
               {
                  _loc7_;
                  _loc7_;
                  if(SafeGlobal.helpItemsViewed[this.§_-r1§] == false)
                  {
                     _loc8_;
                     _loc8_;
                     if(Global.other_stats[Global.OSTAT_GAMES_PLAYED] > 0)
                     {
                        _loc7_;
                        this.§_-fd§(this.§_-r1§);
                     }
                  }
               }
            }
         }
         
      }
      
      public function §_-Q1§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(SafeGlobal.helpItemsViewed[param1] == false)
         {
            _loc3_;
            _loc3_;
            this.§_-fd§(param1);
         }
      }
      
      private function §_-fd§(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:§_-YS§ = null;
         _loc4_;
         if(!this.§_-RJ§)
         {
            _loc3_;
            this.§_-43§ = param1;
            _loc4_;
            _loc4_;
            this.§_-8Q§ = -1;
            _loc4_;
            _loc4_;
            _loc2_ = this.§_-Tt§.§_-aL§(param1);
            _loc3_;
            this.lhd = new LobbyHelpDisplay(this.§_-Tt§.§_-aL§(param1),this);
            _loc3_;
            SafeGlobal.TIMELINE.addLobbyHelpDisplay(this.lhd);
            _loc4_;
            this.§_-RJ§ = true;
         }
         else
         {
            this.§_-8Q§ = param1;
            _loc3_;
            _loc3_;
            this.tweenOffHelp();
         }
      }
      
      public function tweenOffHelp() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-RJ§ = false;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         if(this.lhd != null)
         {
            _loc1_;
            _loc2_;
            _loc2_;
            this.lhd.§_-bi§();
            _loc2_;
            _loc2_;
            this.lhd.tweenOff();
         }
      }
      
      public function finishTweenOffHelp() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-RJ§ = false;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.§_-43§ != -1)
         {
            Global.lobby_client.saveHelpItemViewed(this.§_-43§);
         }
         SafeGlobal.TIMELINE.removeLobbyHelpDisplay();
         this.lhd = null;
         _loc2_;
         if(this.§_-8Q§ != -1)
         {
            this.§_-fd§(this.§_-8Q§);
         }
      }
   }
}
