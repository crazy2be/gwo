package §_-Ff§
{
   import flash.display.MovieClip;
   
   public class GameOverData extends Object
   {
      
      public function GameOverData()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         _loc1_;
         _loc1_;
         this.§_-Ht§ = 0;
         this.§_-Z6§ = 0;
         this.§_-uo§ = 0;
         this.§_-mv§ = 0;
         _loc2_;
         this.§_-nn§ = 0;
         this.§_-ZL§ = 0;
         _loc1_;
         _loc1_;
         this.unlock_data = "";
         this.§_-jO§ = "";
         _loc1_;
         this.§_-5C§ = "";
         _loc1_;
         _loc1_;
         this.§_-aT§ = "";
         this.§_-ts§ = null;
         this.game_radius = 0;
         _loc2_;
         this.§_-1§ = "";
         _loc1_;
         _loc1_;
         this.§_-W5§ = false;
         _loc1_;
         this.team_data = new Array();
         _loc2_;
         this.§_-aY§ = 0;
      }
      
      public var §_-Ht§:int = 0;
      
      public var §_-Z6§:int = 0;
      
      public var §_-uo§:int = 0;
      
      public var §_-mv§:int = 0;
      
      public var §_-nn§:int = 0;
      
      public var §_-ZL§:int = 0;
      
      public var unlock_data:String = "";
      
      public var §_-jO§:String = "";
      
      public var §_-5C§:String = "";
      
      public var §_-aT§:String = "";
      
      public var §_-ts§:MovieClip;
      
      public var game_radius:Number = 0;
      
      public var §_-1§:String = "";
      
      public var §_-W5§:Boolean = false;
      
      public var team_data:Array;
      
      public var §_-aY§:int = 0;
      
      public function §_-sJ§(param1:String) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:* = undefined;
         var _loc5_:Array = null;
         _loc6_;
         _loc6_;
         this.team_data = new Array();
         var _loc2_:Array = param1.split(":");
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = _loc2_[_loc3_].split("|");
            _loc5_ = _loc4_[0].split(",");
            _loc6_;
            _loc6_;
            this.team_data.push({
               "teamName":_loc5_[0],
               "uid":_loc5_[1],
               "colourID":int(_loc5_[2]),
               "helmetID":int(_loc5_[3]),
               "tauntID":int(_loc5_[4]),
               "idle1ID":int(_loc5_[5]),
               "idle2ID":int(_loc5_[6]),
               "idle3ID":int(_loc5_[7]),
               "idle4ID":int(_loc5_[8]),
               "victoryID":int(_loc5_[9]),
               "teamBattleID":int(_loc5_[10]),
               "medal":0,
               "online":true
            });
            _loc7_;
            _loc7_;
            _loc3_++;
         }
      }
      
      public function §_-6u§(param1:String) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         var _loc2_:Array = param1.split("");
         _loc5_;
         _loc3_ = 0;
         while(_loc3_ < _loc2_.length)
         {
            if(_loc2_[_loc3_] == "1")
            {
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               this.team_data[_loc3_].online = true;
               _loc4_;
               _loc4_;
            }
            else
            {
               this.team_data[_loc3_].online = false;
               _loc5_;
            }
            _loc3_++;
            _loc5_;
            _loc5_;
         }
      }
      
      public function §_-Qv§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.team_data[param1].online = false;
      }
      
      public function §_-kv§(param1:int) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc2_:String = String(param1);
         var _loc3_:int = _loc2_.length;
         if(this.team_data.length == 4)
         {
            _loc7_;
            _loc7_;
            _loc6_;
            if(_loc3_ == 1)
            {
               _loc7_;
               _loc2_ = String("000" + param1);
            }
            else
            {
               _loc7_;
               _loc6_;
               _loc6_;
               if(_loc3_ == 2)
               {
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc2_ = String("00" + param1);
                  _loc6_;
               }
               else if(_loc3_ == 3)
               {
                  _loc7_;
                  _loc7_;
                  _loc2_ = String("0" + param1);
                  _loc6_;
                  _loc6_;
               }
               else
               {
                  _loc6_;
                  _loc2_ = String(param1);
               }
               
            }
            _loc4_ = _loc2_.split("");
            _loc6_;
            _loc6_;
            _loc5_ = 0;
            while(_loc5_ < this.team_data.length)
            {
               this.team_data[_loc5_].medal = int(_loc4_[_loc5_]);
               _loc6_;
               _loc5_++;
               _loc7_;
               _loc7_;
            }
         }
         else
         {
            _loc6_;
            _loc6_;
            if(this.team_data.length == 3)
            {
               _loc7_;
               _loc7_;
               _loc6_;
               if(_loc3_ == 1)
               {
                  _loc6_;
                  _loc2_ = String("00" + param1);
               }
               else
               {
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  if(_loc3_ == 2)
                  {
                     _loc6_;
                     _loc2_ = String("0" + param1);
                  }
                  else
                  {
                     _loc2_ = String(param1);
                     _loc6_;
                  }
               }
               _loc6_;
               _loc6_;
               _loc6_;
               _loc4_ = _loc2_.split("");
               _loc6_;
               _loc7_;
               _loc5_ = 0;
               _loc7_;
               _loc7_;
               while(_loc5_ < this.team_data.length)
               {
                  this.team_data[_loc5_].medal = int(_loc4_[_loc5_]);
                  _loc6_;
                  _loc6_;
                  _loc5_++;
                  _loc7_;
               }
            }
            else if(this.team_data.length == 2)
            {
               if(_loc3_ == 1)
               {
                  _loc2_ = String("0" + param1);
               }
               else
               {
                  _loc2_ = String(param1);
               }
               _loc4_ = _loc2_.split("");
               _loc7_;
               _loc7_;
               _loc6_;
               _loc6_;
               _loc5_ = 0;
               _loc6_;
               _loc6_;
               while(_loc5_ < this.team_data.length)
               {
                  this.team_data[_loc5_].medal = int(_loc4_[_loc5_]);
                  _loc6_;
                  _loc5_++;
                  _loc7_;
                  _loc7_;
               }
            }
            
         }
      }
      
      public function §_-1G§() : void
      {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc1_:Array = null;
         var _loc2_:* = 0;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:Array = null;
         var _loc10_:Array = null;
         var _loc11_:* = 0;
         var _loc12_:Array = null;
         var _loc13_:Array = null;
         var _loc14_:Array = null;
         _loc16_;
         _loc16_;
         _loc15_;
         _loc16_;
         if(this.unlock_data != "")
         {
            _loc1_ = this.unlock_data.split("|");
            _loc16_;
            _loc2_ = 0;
            while(_loc2_ < _loc1_.length)
            {
               _loc3_ = _loc1_[_loc2_].split(",");
               _loc4_ = parseInt(_loc3_[0]);
               _loc5_ = parseInt(_loc3_[1]);
               _loc15_;
               _loc6_ = parseInt(_loc3_[2]);
               _loc7_ = parseInt(_loc3_[3]);
               _loc16_;
               _loc16_;
               if(_loc5_ == SafeGlobal.UNLOCKTYPE_COLOUR)
               {
                  _loc16_;
                  _loc15_;
                  _loc16_;
                  _loc16_;
                  SafeGlobal.coloursUnlocked[_loc6_] = true;
               }
               else
               {
                  _loc16_;
                  if(_loc5_ == SafeGlobal.UNLOCKTYPE_HELMET)
                  {
                     _loc15_;
                     _loc15_;
                     _loc16_;
                     _loc16_;
                     _loc16_;
                     _loc16_;
                     SafeGlobal.helmetsUnlocked[_loc6_] = true;
                  }
                  else
                  {
                     _loc15_;
                     if(_loc5_ == SafeGlobal.UNLOCKTYPE_WEAPON)
                     {
                        _loc16_;
                        _loc16_;
                        _loc15_;
                        _loc15_;
                        _loc16_;
                        _loc16_;
                        SafeGlobal.weaponsUnlocked[_loc6_] = true;
                        SafeGlobal.§_-wv§.setInt(SafeGlobal.§_-wv§.getInt() + 1);
                        _loc16_;
                     }
                     else
                     {
                        _loc16_;
                        _loc16_;
                        _loc15_;
                        if(_loc5_ == SafeGlobal.UNLOCKTYPE_EDITORPACK)
                        {
                           _loc16_;
                           _loc16_;
                           SafeGlobal.editorUnlocked[_loc6_] = true;
                        }
                        else
                        {
                           _loc15_;
                           _loc15_;
                           _loc16_;
                           if(_loc5_ == SafeGlobal.UNLOCKTYPE_ANIMPACK)
                           {
                              _loc16_;
                              _loc16_;
                              _loc9_ = SafeGlobal.animPackVictoryAnim[_loc6_];
                              _loc16_;
                              _loc16_;
                              _loc8_ = 0;
                              _loc16_;
                              while(_loc8_ < _loc9_.length)
                              {
                                 _loc15_;
                                 _loc15_;
                                 SafeGlobal.victoryAnimsUnlocked[_loc9_[_loc8_]] = true;
                                 _loc16_;
                                 _loc16_;
                                 _loc8_++;
                                 _loc16_;
                                 _loc16_;
                              }
                              _loc10_ = SafeGlobal.animPackIdleAnim[_loc6_];
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc16_;
                              _loc8_ = 0;
                              _loc15_;
                              while(_loc8_ < _loc10_.length)
                              {
                                 SafeGlobal.idleAnimsUnlocked[_loc10_[_loc8_]] = true;
                                 _loc15_;
                                 _loc15_;
                                 _loc8_++;
                                 _loc16_;
                              }
                           }
                           else if(_loc5_ == SafeGlobal.UNLOCKTYPE_CWPACK)
                           {
                              _loc16_;
                              _loc16_;
                              _loc12_ = SafeGlobal.cwPackWepGfx[_loc6_];
                              _loc15_;
                              _loc16_;
                              _loc16_;
                              _loc11_ = 0;
                              _loc16_;
                              _loc16_;
                              while(_loc11_ < _loc12_.length)
                              {
                                 _loc16_;
                                 SafeGlobal.wepGfxUnlocked[_loc12_[_loc11_]] = true;
                                 _loc15_;
                                 _loc11_++;
                                 _loc16_;
                                 _loc16_;
                              }
                              _loc13_ = SafeGlobal.cwPackProjGfx[_loc6_];
                              _loc16_;
                              _loc16_;
                              _loc11_ = 0;
                              _loc16_;
                              while(_loc11_ < _loc13_.length)
                              {
                                 _loc15_;
                                 SafeGlobal.projGfxUnlocked[_loc13_[_loc11_]] = true;
                                 _loc15_;
                                 _loc11_++;
                                 _loc15_;
                              }
                              _loc14_ = SafeGlobal.cwPackProjTrail[_loc6_];
                              _loc16_;
                              _loc16_;
                              _loc15_;
                              _loc15_;
                              _loc11_ = 0;
                              _loc16_;
                              _loc16_;
                              while(_loc11_ < _loc14_.length)
                              {
                                 SafeGlobal.projTrailUnlocked[_loc14_[_loc11_]] = true;
                                 _loc15_;
                                 _loc11_++;
                                 _loc15_;
                                 _loc15_;
                              }
                           }
                           else
                           {
                              _loc16_;
                              _loc16_;
                              if(_loc5_ == SafeGlobal.§_-pQ§)
                              {
                                 _loc16_;
                                 _loc15_;
                                 SafeGlobal.§_-f0§[SafeGlobal.§_-WS§].setInt(SafeGlobal.§_-f0§[SafeGlobal.§_-WS§].getInt() + _loc6_);
                              }
                              else if(_loc5_ == SafeGlobal.§_-Kg§)
                              {
                                 SafeGlobal.§_-f0§[SafeGlobal.§super§].setInt(SafeGlobal.§_-f0§[SafeGlobal.§super§].getInt() + _loc6_);
                                 _loc15_;
                              }
                              
                           }
                           
                        }
                     }
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public function §_-l9§() : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         _loc8_;
         _loc8_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         if((SafeGlobal.selected_level.§_-Td§) && SafeGlobal.selected_level.§_-tn§ == false)
         {
            _loc7_;
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc1_ = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].medals[SafeGlobal.selected_level.level_id];
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            if(_loc1_ == 0 || _loc1_ > 0 && this.§_-Ht§ < _loc1_)
            {
               SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].medals[SafeGlobal.selected_level.level_id] = this.§_-Ht§;
               _loc7_;
            }
            _loc7_;
            _loc2_ = 0;
            _loc8_;
            _loc3_ = 0;
            while(true)
            {
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               if(_loc3_ >= SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].medals.length)
               {
                  break;
               }
               _loc7_;
               _loc8_;
               _loc7_;
               _loc4_ = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].medals[_loc3_];
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               if((SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].medals[_loc3_]) == 1 || _loc4_ == 2 || _loc4_ == 3 || _loc4_ == 4)
               {
                  _loc2_++;
               }
               _loc3_++;
            }
            _loc7_;
            if(_loc2_ == 5)
            {
               _loc5_ = SafeGlobal.selected_level.campaign_id + 1;
               if(_loc5_ < 3)
               {
                  _loc8_;
                  _loc6_ = 0;
                  while(_loc6_ < SafeGlobal.campaigns[_loc5_].unlocked.length)
                  {
                     _loc8_;
                     _loc7_;
                     _loc7_;
                     if(SafeGlobal.campaigns[_loc5_].unlocked[_loc6_] == 0)
                     {
                        SafeGlobal.campaigns[_loc5_].unlocked[_loc6_] = 1;
                        _loc8_;
                        _loc8_;
                     }
                     _loc6_++;
                  }
               }
            }
         }
      }
   }
}
