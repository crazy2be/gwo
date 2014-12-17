package §_-Cv§
{
   import §_-WX§.§_-A§;
   import flash.net.SharedObject;
   import §_-WX§.§switch§;
   import §_-3w§.MD5;
   
   public class DataManager extends Object
   {
      
      public function DataManager()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
      }
      
      public static function §_-Yc§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(Global.§_-41§ == false)
         {
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
            {
               _loc2_;
               _loc2_;
               TimelineGlobal.player_name = TimelineGlobal.kong_player_name;
            }
            else if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-AY§)
            {
               TimelineGlobal.player_name = TimelineGlobal.§_-WE§;
            }
            else
            {
               TimelineGlobal.player_name = TimelineGlobal.input_username;
            }
            
         }
      }
      
      public static function §_-P4§(param1:String) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Array = param1.split("|");
         var _loc3_:Array = _loc2_[0].split(",");
         var _loc4_:Array = _loc2_[1].split(",");
         SafeGlobal.§_-WQ§ = parseInt(_loc3_[0]);
         SafeGlobal.§_-Bu§ = parseInt(_loc3_[2]);
         _loc6_;
         _loc6_;
         SafeGlobal.§_-ba§ = parseInt(_loc3_[3]);
         SafeGlobal.§_-MT§ = _loc3_[1];
         SafeGlobal.§_-Jt§ = parseInt(_loc4_[0]);
         _loc6_;
         SafeGlobal.§_-q5§ = parseInt(_loc4_[2]);
         _loc5_;
         SafeGlobal.§_-5Z§ = parseInt(_loc4_[3]);
         _loc5_;
         SafeGlobal.§_-cD§ = _loc4_[1];
      }
      
      public static function §_-yM§(param1:String) : void
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc2_:Array = param1.split("|");
         _loc10_;
         _loc3_ = parseInt(_loc2_[0]);
         _loc10_;
         _loc4_ = _loc3_.toString(2);
         _loc9_;
         _loc9_;
         _loc3_ = parseInt(_loc2_[1]);
         _loc9_;
         _loc9_;
         _loc5_ = _loc3_.toString(2);
         §_-kY§(_loc4_.substring(1) + _loc5_.substring(1));
         _loc9_;
         _loc9_;
         _loc3_ = parseInt(_loc2_[2]);
         _loc10_;
         _loc4_ = _loc3_.toString(2);
         §_-DY§(_loc4_.substring(1));
         _loc9_;
         _loc3_ = parseInt(_loc2_[3]);
         _loc10_;
         _loc9_;
         _loc9_;
         _loc10_;
         _loc10_;
         _loc4_ = _loc3_.toString(2);
         §_-IL§(_loc4_.substring(1));
         _loc10_;
         _loc10_;
         _loc3_ = parseInt(_loc2_[4]);
         _loc4_ = _loc3_.toString(2);
         §_-K8§(_loc4_.substring(1));
         _loc3_ = parseInt(_loc2_[5]);
         _loc10_;
         _loc10_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc4_ = _loc3_.toString(2);
         _loc10_;
         §_-aB§(_loc4_.substring(1));
         _loc10_;
         _loc3_ = parseInt(_loc2_[6]);
         _loc9_;
         _loc9_;
         _loc9_;
         _loc4_ = _loc3_.toString(2);
         §_-hP§(_loc4_.substring(1));
         _loc10_;
         _loc10_;
         _loc3_ = parseInt(_loc2_[7]);
         _loc10_;
         _loc4_ = _loc3_.toString(2);
         §_-AU§(_loc4_.substring(1));
         _loc3_ = parseInt(_loc2_[8]);
         _loc9_;
         _loc9_;
         _loc4_ = _loc3_.toString(2);
         _loc10_;
         _loc10_;
         _loc9_;
         _loc3_ = parseInt(_loc2_[9]);
         _loc5_ = _loc3_.toString(2);
         _loc3_ = parseInt(_loc2_[10]);
         _loc9_;
         _loc9_;
         _loc10_;
         _loc6_ = _loc3_.toString(2);
         _loc10_;
         _loc10_;
         _loc3_ = parseInt(_loc2_[11]);
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc7_ = _loc3_.toString(2);
         _loc10_;
         _loc10_;
         _loc3_ = parseInt(_loc2_[12]);
         _loc8_ = _loc3_.toString(2);
         _loc10_;
         §_-oZ§(_loc4_.substring(1) + _loc5_.substring(1) + _loc6_.substring(1) + _loc7_.substring(1) + _loc8_.substring(1));
         _loc3_ = parseInt(_loc2_[13]);
         _loc10_;
         _loc4_ = _loc3_.toString(2);
         §_-XT§(_loc4_.substring(1));
         _loc10_;
         _loc10_;
         _loc3_ = parseInt(_loc2_[14]);
         _loc4_ = _loc3_.toString(2);
         §_-BP§(_loc4_.substring(1));
         _loc10_;
         _loc10_;
         _loc3_ = parseInt(_loc2_[15]);
         _loc9_;
         _loc10_;
         _loc4_ = _loc3_.toString(2);
         _loc10_;
         §_-me§(_loc4_.substring(1));
         _loc10_;
         _loc10_;
         _loc3_ = parseInt(_loc2_[16]);
         _loc10_;
         _loc10_;
         _loc4_ = _loc3_.toString(2);
         §_-ws§(_loc4_.substring(1));
      }
      
      public static function §_-IG§(param1:String) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc2_:Array = param1.split("|");
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = _loc2_[_loc3_].split("");
            _loc7_;
            _loc7_;
            _loc5_ = 0;
            while(_loc5_ < 5)
            {
               if(_loc4_[_loc5_] == "0")
               {
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  SafeGlobal.campaigns[_loc3_].unlocked[_loc5_] = 0;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  SafeGlobal.campaigns[_loc3_].medals[_loc5_] = 0;
               }
               else if(_loc4_[_loc5_] == "5")
               {
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  SafeGlobal.campaigns[_loc3_].unlocked[_loc5_] = 1;
                  _loc7_;
                  _loc7_;
                  _loc6_;
                  SafeGlobal.campaigns[_loc3_].medals[_loc5_] = 0;
                  _loc6_;
                  _loc6_;
               }
               else
               {
                  _loc7_;
                  _loc6_;
                  SafeGlobal.campaigns[_loc3_].unlocked[_loc5_] = 1;
                  _loc7_;
                  _loc7_;
                  SafeGlobal.campaigns[_loc3_].medals[_loc5_] = parseInt(_loc4_[_loc5_]);
               }
               
               _loc5_++;
               _loc7_;
            }
            _loc3_++;
         }
      }
      
      public static function §_-Vq§(param1:String) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc2_:Array = param1.split("|");
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = _loc2_[_loc3_].split("");
            _loc7_;
            _loc7_;
            _loc7_;
            _loc5_ = 0;
            _loc6_;
            _loc6_;
            while(_loc5_ < _loc4_.length)
            {
               SafeGlobal.campaigns[_loc3_].awards[_loc5_] = parseInt(_loc4_[_loc5_]);
               _loc6_;
               _loc6_;
               _loc5_++;
               _loc7_;
            }
            _loc7_;
            _loc7_;
            _loc3_++;
         }
      }
      
      public static function §_-HR§(param1:String) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Array = null;
         var _loc2_:Array = param1.split("|");
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = _loc2_[_loc3_].split(",");
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            Global.unitDetails[_loc3_].name = _loc4_[0];
            _loc6_;
            _loc5_;
            _loc6_;
            Global.unitDetails[_loc3_].health = int(_loc4_[1]);
            _loc6_;
            _loc5_;
            _loc6_;
            _loc6_;
            Global.unitDetails[_loc3_].accuracy = int(_loc4_[2]);
            _loc6_;
            _loc6_;
            Global.unitDetails[_loc3_].active = int(_loc4_[3]) == 0?false:true;
            _loc6_;
            _loc6_;
            _loc3_++;
         }
      }
      
      public static function §_-WC§(param1:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Array = param1.split(",");
         Global.favourite_colour.setInt(parseInt(_loc2_[0]));
         Global.favourite_helmet.setInt(parseInt(_loc2_[1]));
         Global.anim_victory.setInt(parseInt(_loc2_[2]));
         _loc3_;
         _loc4_;
         Global.anim_idle[0].setInt(parseInt(_loc2_[3]));
         _loc4_;
         _loc4_;
         _loc4_;
         Global.anim_idle[1].setInt(parseInt(_loc2_[4]));
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         Global.anim_idle[2].setInt(parseInt(_loc2_[5]));
         _loc3_;
         Global.anim_idle[3].setInt(parseInt(_loc2_[6]));
         _loc4_;
         _loc4_;
         Global.lobby_display.lobby_stats.§_-3P§();
      }
      
      public static function §_-kY§(param1:String) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = false;
         var _loc2_:* = 0;
         _loc6_;
         SafeGlobal.weaponsUnlocked = new Array();
         var _loc4_:* = 0;
         while(_loc4_ < param1.length)
         {
            if(param1.substr(_loc4_,1) == "1")
            {
               _loc5_;
               _loc5_;
            }
            if(param1.substr(_loc4_,1) == "1")
            {
               _loc3_ = true;
               SafeGlobal.weaponsUnlocked.push(_loc3_);
               _loc5_;
               if(_loc3_ == true || _loc4_ == 0)
               {
                  _loc5_;
                  _loc2_++;
               }
               _loc4_++;
            }
            else
            {
               _loc3_ = false;
               SafeGlobal.weaponsUnlocked.push(_loc3_);
               _loc5_;
               if(_loc3_ == true || _loc4_ == 0)
               {
                  _loc5_;
                  _loc2_++;
               }
               _loc4_++;
            }
         }
         SafeGlobal.§_-LL§.setInt(_loc2_);
      }
      
      public static function §_-mg§(param1:String) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         _loc4_;
         SafeGlobal.weaponsStock = new Array();
         var _loc3_:* = 0;
         while(_loc3_ < param1.length)
         {
            _loc5_;
            _loc2_ = int(param1.substr(_loc3_,1));
            _loc4_;
            _loc4_;
            SafeGlobal.weaponsStock.push(_loc2_);
            _loc5_;
            _loc5_;
            _loc3_++;
            _loc4_;
         }
      }
      
      public static function §_-DY§(param1:String) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         SafeGlobal.helmetsUnlocked = new Array();
         var _loc2_:* = 0;
         while(_loc2_ < param1.length)
         {
            if(param1.substr(_loc2_,1) == "1")
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               _loc3_;
               SafeGlobal.helmetsUnlocked.push(true);
               _loc3_;
               _loc3_;
            }
            else
            {
               SafeGlobal.helmetsUnlocked.push(false);
               _loc3_;
               _loc3_;
            }
            _loc2_++;
            _loc4_;
         }
      }
      
      public static function §_-IL§(param1:String) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         SafeGlobal.modsUnlocked = new Array();
         var _loc2_:* = 0;
         while(_loc2_ < param1.length)
         {
            if(param1.substr(_loc2_,1) == "1")
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               SafeGlobal.modsUnlocked.push(true);
               _loc3_;
            }
            else
            {
               SafeGlobal.modsUnlocked.push(false);
               _loc3_;
            }
            _loc2_++;
            _loc4_;
         }
      }
      
      public static function §_-K8§(param1:String) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         SafeGlobal.coloursUnlocked = new Array();
         var _loc2_:* = 0;
         while(_loc2_ < param1.length)
         {
            if(param1.substr(_loc2_,1) == "1")
            {
               _loc3_;
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               SafeGlobal.coloursUnlocked.push(true);
               _loc4_;
            }
            else
            {
               SafeGlobal.coloursUnlocked.push(false);
               _loc4_;
               _loc4_;
            }
            _loc2_++;
            _loc3_;
         }
      }
      
      public static function §_-aB§(param1:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         SafeGlobal.victoryAnimsUnlocked = new Array();
         _loc4_;
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            if(param1.substr(_loc2_,1) == "1")
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               SafeGlobal.victoryAnimsUnlocked.push(true);
               _loc3_;
               _loc3_;
            }
            else
            {
               SafeGlobal.victoryAnimsUnlocked.push(false);
               _loc4_;
            }
            _loc2_++;
            _loc3_;
            _loc3_;
         }
      }
      
      public static function §_-hP§(param1:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         SafeGlobal.idleAnimsUnlocked = new Array();
         _loc3_;
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            if(param1.substr(_loc2_,1) == "1")
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               SafeGlobal.idleAnimsUnlocked.push(true);
               _loc4_;
               _loc4_;
            }
            else
            {
               SafeGlobal.idleAnimsUnlocked.push(false);
               _loc3_;
               _loc3_;
            }
            _loc2_++;
            _loc3_;
         }
      }
      
      public static function §_-NA§(param1:String) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         _loc4_;
         SafeGlobal.victoryAnimsUnlocked = new Array();
         _loc4_;
         _loc4_;
         SafeGlobal.idleAnimsUnlocked = new Array();
         var _loc2_:Array = param1.split("|");
         _loc4_;
         _loc3_ = 0;
         while(true)
         {
            _loc4_;
            if(_loc3_ >= _loc2_[0].length)
            {
               break;
            }
            if(_loc2_[0].substr(_loc3_,1) == "1")
            {
               _loc4_;
               _loc4_;
               _loc4_;
               SafeGlobal.victoryAnimsUnlocked.push(true);
            }
            else
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               SafeGlobal.victoryAnimsUnlocked.push(false);
            }
            _loc3_++;
            _loc4_;
            _loc4_;
         }
         _loc4_;
         _loc4_;
         _loc3_ = 0;
         while(_loc3_ < _loc2_[1].length)
         {
            if(_loc2_[1].substr(_loc3_,1) == "1")
            {
               _loc4_;
               _loc4_;
               _loc4_;
               SafeGlobal.idleAnimsUnlocked.push(true);
            }
            else
            {
               SafeGlobal.idleAnimsUnlocked.push(false);
            }
            _loc3_++;
         }
      }
      
      public static function §_-BP§(param1:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         SafeGlobal.wepGfxUnlocked = new Array();
         _loc3_;
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            if(param1.substr(_loc2_,1) == "1")
            {
               _loc4_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               SafeGlobal.wepGfxUnlocked.push(true);
               _loc3_;
               _loc3_;
            }
            else
            {
               SafeGlobal.wepGfxUnlocked.push(false);
               _loc4_;
            }
            _loc2_++;
            _loc4_;
         }
      }
      
      public static function §_-me§(param1:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         SafeGlobal.projGfxUnlocked = new Array();
         _loc4_;
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            if(param1.substr(_loc2_,1) == "1")
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               SafeGlobal.projGfxUnlocked.push(true);
               _loc3_;
            }
            else
            {
               SafeGlobal.projGfxUnlocked.push(false);
               _loc3_;
            }
            _loc2_++;
            _loc3_;
            _loc3_;
         }
      }
      
      public static function §_-ws§(param1:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         SafeGlobal.projTrailUnlocked = new Array();
         _loc3_;
         _loc3_;
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            if(param1.substr(_loc2_,1) == "1")
            {
               _loc4_;
               _loc3_;
               _loc4_;
               SafeGlobal.projTrailUnlocked.push(true);
               _loc4_;
            }
            else
            {
               SafeGlobal.projTrailUnlocked.push(false);
               _loc3_;
               _loc3_;
            }
            _loc2_++;
            _loc4_;
         }
      }
      
      public static function §_-AU§(param1:String) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         SafeGlobal.editorUnlocked = new Array();
         var _loc2_:* = 0;
         while(true)
         {
            _loc5_;
            if(_loc2_ >= param1.length)
            {
               break;
            }
            if(param1.substr(_loc2_,1) == "1")
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               SafeGlobal.editorUnlocked.push(true);
               _loc5_;
            }
            else
            {
               SafeGlobal.editorUnlocked.push(false);
               _loc5_;
               _loc5_;
            }
            _loc2_++;
            _loc5_;
         }
         _loc4_;
         _loc4_;
         Global.planets_unlocked = new Array();
         var _loc3_:* = 0;
         _loc5_;
         _loc5_;
         while(_loc3_ < Global.TOTAL_PLANETS)
         {
            _loc5_;
            _loc5_;
            _loc4_;
            Global.planets_unlocked[_loc3_] = false;
            _loc3_++;
            _loc5_;
            _loc5_;
         }
         §_-DO§();
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK1])
         {
            _loc4_;
            _loc4_;
            §_-KP§(0);
            _loc5_;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK2])
         {
            §_-KP§(1);
            _loc4_;
         }
         _loc5_;
         _loc5_;
         _loc5_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK3])
         {
            §_-KP§(2);
            _loc4_;
         }
         _loc4_;
         _loc5_;
         _loc5_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK4])
         {
            _loc4_;
            _loc4_;
            §_-KP§(3);
         }
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK5])
         {
            §_-KP§(4);
         }
      }
      
      public static function §_-DO§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Array = Global.default_planets;
         var _loc2_:* = 0;
         while(_loc2_ < _loc1_.length)
         {
            Global.planets_unlocked[_loc1_[_loc2_]] = true;
            _loc4_;
            _loc4_;
            _loc2_++;
            _loc4_;
         }
      }
      
      public static function §_-KP§(param1:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Array = Global.planet_packs[param1];
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_.length)
         {
            Global.planets_unlocked[_loc2_[_loc3_]] = true;
            _loc5_;
            _loc3_++;
            _loc4_;
         }
      }
      
      public static function §_-7U§(param1:String) : *
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:* = 0;
         _loc9_;
         _loc9_;
         _loc9_;
         if(param1 != "")
         {
            _loc2_ = param1.split("|");
            _loc3_ = _loc2_[0].split(",");
            _loc4_ = _loc2_[1].split(",");
            _loc5_ = _loc2_[2].split("");
            _loc6_ = _loc2_[3].split(",");
            _loc8_;
            _loc7_ = 0;
            while(_loc7_ < _loc3_.length)
            {
               _loc9_;
               _loc9_;
               Global.game_stats[_loc7_] = int(_loc3_[_loc7_]);
               _loc7_++;
            }
            _loc9_;
            _loc7_ = 0;
            while(_loc7_ < _loc4_.length)
            {
               _loc9_;
               _loc8_;
               _loc8_;
               Global.other_stats[_loc7_] = int(_loc4_[_loc7_]);
               _loc8_;
               _loc8_;
               _loc7_++;
               _loc8_;
            }
            _loc8_;
            _loc8_;
            _loc8_;
            _loc7_ = 0;
            while(true)
            {
               _loc8_;
               _loc8_;
               if(_loc7_ >= _loc5_.length)
               {
                  break;
               }
               _loc9_;
               _loc9_;
               Global.one_time_stats[_loc7_] = int(_loc5_[_loc7_]);
               _loc7_++;
            }
            _loc7_ = 0;
            while(_loc7_ < _loc6_.length)
            {
               Global.global_stats[_loc7_] = _loc6_[_loc7_];
               _loc9_;
               _loc9_;
               _loc7_++;
            }
         }
      }
      
      public static function §_-oZ§(param1:String) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Array = param1.split("");
         _loc5_;
         _loc5_;
         if(§_-x3§.ready == false)
         {
            _loc5_;
            _loc5_;
            §_-x3§.init();
         }
         var _loc3_:* = 0;
         while(_loc3_ < §_-x3§.awards.length)
         {
            (§_-x3§.awards[_loc3_] as §_-fD§).award_complete = int(_loc2_[_loc3_]);
            _loc4_;
            _loc3_++;
            _loc5_;
         }
      }
      
      public static function §_-XT§(param1:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         SafeGlobal.helpItemsViewed = new Array();
         var _loc2_:* = 0;
         while(_loc2_ < param1.length)
         {
            if(param1.substr(_loc2_,1) == "1")
            {
               _loc3_;
               _loc4_;
               _loc4_;
               _loc4_;
               SafeGlobal.helpItemsViewed.push(true);
               _loc3_;
               _loc3_;
            }
            else
            {
               SafeGlobal.helpItemsViewed.push(false);
               _loc3_;
               _loc3_;
            }
            _loc2_++;
            _loc3_;
            _loc3_;
         }
      }
      
      public static function §_-ro§(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         SafeGlobal.custom_weapon_string = param1.split("+");
      }
      
      public static function awardUnlocked(param1:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = param1.split(",");
         _loc3_;
         _loc3_;
         §_-x3§.awards[int(_loc2_[0])].award_complete = 1;
         _loc3_;
         §_-x3§.awards[int(_loc2_[0])].new_award = true;
         Global.coins.setInt(Global.coins.getInt() + int(_loc2_[1]));
         _loc4_;
         _loc4_;
         _loc4_;
         Global.lobby_display.lobby_stats.§_-zB§();
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         Global.lobby_display.lobby_menu.updateButtons();
         _loc4_;
         Global.lobby_display.displayAwardUnlocked(int(_loc2_[0]),int(_loc2_[1]));
      }
      
      public static function §_-Q8§(param1:String) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Array = param1.split("|");
         _loc5_;
         _loc5_;
         SafeGlobal.§_-Ds§.setInt(int(_loc2_[0]));
         var _loc3_:Array = _loc2_[1].split(",");
         _loc6_;
         SafeGlobal.§_-QC§ = new Array();
         var _loc4_:* = 0;
         while(_loc4_ < _loc3_.length)
         {
            SafeGlobal.§_-QC§[_loc4_] = new §_-A§(int(_loc3_[_loc4_]));
            _loc6_;
            _loc4_++;
            _loc6_;
            _loc6_;
         }
      }
      
      public static function §_-0I§(param1:String) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc2_:Array = param1.split("|");
         var _loc7_:* = 0;
         while(_loc7_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc7_].split(",");
            _loc9_;
            _loc4_ = _loc3_[0].substr(0,1);
            _loc8_;
            _loc8_;
            _loc9_;
            _loc5_ = int(_loc3_[0].substr(1));
            _loc9_;
            _loc6_ = int(_loc3_[1]);
            _loc8_;
            ItemsData.setItemPrice(_loc4_,_loc5_,_loc6_);
            _loc9_;
            _loc9_;
            _loc7_++;
         }
      }
      
      public static function §_-Wm§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var shared_obj:SharedObject = null;
         _loc4_;
         var md5_list:String = null;
         _loc3_;
         var i:int = 0;
         _loc4_;
         _loc4_;
         _loc4_;
         var final_md5:String = null;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         var full_str:String = null;
         _loc4_;
         _loc3_;
         var ar:Array = null;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         var obj:§switch§ = null;
         var str:String = null;
         try
         {
            Global.custom_maps = new Array();
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            Global.custom_maps[0] = null;
            shared_obj = SharedObject.getLocal("GWOCustomMaps2" + TimelineGlobal.player_name);
            _loc4_;
            if(shared_obj.data.custom_maps != null)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               i = 0;
               while(true)
               {
                  _loc4_;
                  _loc4_;
                  if(i >= shared_obj.data.custom_maps.length)
                  {
                     break;
                  }
                  _loc4_;
                  full_str = shared_obj.data.custom_maps[i];
                  _loc4_;
                  if(full_str != null)
                  {
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     ar = full_str.split("$");
                     _loc3_;
                     _loc4_;
                     _loc4_;
                     _loc3_;
                     _loc3_;
                     Global.custom_maps[i] = new §switch§(ar[1],ar[0]);
                     _loc3_;
                     _loc3_;
                  }
                  else
                  {
                     _loc3_;
                     _loc3_;
                     _loc4_;
                     _loc4_;
                     Global.custom_maps[i] = null;
                     _loc4_;
                  }
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  i++;
               }
            }
            else
            {
               Global.custom_maps[0] = null;
            }
            _loc3_;
            md5_list = "";
            i = 0;
            _loc3_;
            _loc3_;
            while(true)
            {
               _loc4_;
               _loc4_;
               if(i >= Global.custom_maps.length)
               {
                  break;
               }
               obj = Global.custom_maps[i];
               _loc4_;
               str = "";
               if(obj != null)
               {
                  _loc4_;
                  _loc4_;
                  _loc3_;
                  _loc4_;
                  str = obj.mapData + obj.mapKey;
                  _loc3_;
               }
               else
               {
                  _loc4_;
                  str = "";
                  _loc3_;
               }
               _loc4_;
               md5_list = md5_list + MD5.hash(str);
               _loc3_;
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               i++;
               _loc4_;
            }
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            final_md5 = MD5.hash(md5_list.toUpperCase());
            Global.lobby_client.checkCustomMaps(final_md5.toUpperCase());
         }
         catch(e:Error)
         {
         }
      }
      
      public static function refreshCustomMaps(param1:String) : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         _loc6_;
         Global.custom_maps = new Array();
         _loc7_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         if(param1 != "")
         {
            _loc2_ = param1.split("/");
            _loc6_;
            _loc6_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               if(_loc2_[_loc3_] == "0")
               {
                  _loc7_;
                  _loc7_;
                  Global.custom_maps[_loc3_] = null;
                  _loc6_;
                  _loc6_;
               }
               else
               {
                  _loc4_ = _loc2_[_loc3_].split("|");
                  _loc5_ = _loc4_[_loc4_.length - 1];
                  _loc6_;
                  _loc4_.splice(_loc4_.length - 1,1);
                  _loc6_;
                  Global.custom_maps[_loc3_] = new §switch§(_loc5_,_loc4_.join("|"));
               }
               if(_loc2_[_loc3_] == "0")
               {
                  _loc3_++;
                  _loc7_;
                  _loc7_;
               }
               else
               {
                  _loc3_++;
                  _loc7_;
                  _loc7_;
               }
            }
            _loc6_;
            §_-Zd§();
         }
      }
      
      public static function §_-Zd§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         var shared_obj:SharedObject = null;
         _loc4_;
         var i:int = 0;
         try
         {
            shared_obj = SharedObject.getLocal("GWOCustomMaps2" + TimelineGlobal.player_name);
            _loc4_;
            _loc4_;
            shared_obj.data.custom_maps = new Array();
            _loc4_;
            i = 0;
            while(true)
            {
               _loc3_;
               _loc3_;
               if(i >= Global.custom_maps.length)
               {
                  break;
               }
               if(Global.custom_maps[i] != null)
               {
                  shared_obj.data.custom_maps[i] = String(Global.custom_maps[i].mapData + "$" + Global.custom_maps[i].mapKey);
               }
               else
               {
                  shared_obj.data.custom_maps[i] = null;
                  _loc4_;
                  _loc4_;
               }
               _loc3_;
               _loc4_;
               _loc4_;
               _loc4_;
               i++;
            }
            shared_obj.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §_-lo§(param1:String, param2:String) : void
      {
         var _loc28_:* = false;
         var _loc29_:* = true;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:* = 0;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:* = 0;
         var _loc10_:String = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc14_:String = null;
         var _loc15_:* = false;
         var _loc16_:Array = null;
         var _loc17_:Array = null;
         var _loc18_:* = 0;
         var _loc19_:* = 0;
         var _loc20_:* = 0;
         var _loc21_:* = 0;
         var _loc22_:* = 0;
         var _loc23_:* = 0;
         var _loc24_:* = 0;
         var _loc25_:* = 0;
         var _loc26_:* = 0;
         var _loc27_:* = 0;
         _loc29_;
         Global.replay_list = new Array();
         _loc28_;
         _loc28_;
         _loc29_;
         _loc29_;
         _loc28_;
         _loc28_;
         _loc28_;
         _loc29_;
         if(!(param1 == "") && !(param2 == ""))
         {
            _loc3_ = param1.split("$");
            _loc4_ = param2.split("#");
            _loc29_;
            _loc29_;
            _loc5_ = 0;
            while(_loc5_ < _loc3_.length)
            {
               _loc6_ = _loc3_[_loc5_].split("£");
               _loc7_ = _loc4_[_loc5_].split("£");
               _loc29_;
               _loc8_ = _loc6_[0];
               _loc29_;
               _loc9_ = int(_loc6_[1]);
               _loc29_;
               _loc28_;
               _loc28_;
               _loc10_ = _loc6_[2];
               _loc28_;
               _loc28_;
               _loc11_ = "";
               _loc28_;
               if(_loc6_.length > 3)
               {
                  _loc11_ = _loc6_[3];
               }
               _loc12_ = "";
               if(_loc6_.length > 4)
               {
                  _loc12_ = _loc6_[4];
                  _loc28_;
               }
               _loc29_;
               _loc29_;
               _loc13_ = _loc7_[0];
               _loc14_ = _loc7_[1];
               _loc28_;
               _loc15_ = false;
               _loc29_;
               _loc29_;
               _loc28_;
               if(_loc12_ == "")
               {
                  _loc28_;
                  _loc15_ = false;
               }
               else if(_loc12_ == TimelineGlobal.replay_version)
               {
                  _loc28_;
                  _loc28_;
                  _loc28_;
                  _loc15_ = true;
                  _loc29_;
                  _loc29_;
               }
               else
               {
                  _loc16_ = _loc12_.split(".");
                  _loc17_ = TimelineGlobal.replay_version.split(".");
                  _loc29_;
                  _loc29_;
                  _loc28_;
                  _loc18_ = int(_loc16_[0].substring(1));
                  _loc29_;
                  _loc19_ = int(_loc16_[1]);
                  _loc20_ = 0;
                  _loc21_ = 0;
                  _loc28_;
                  if(_loc16_.length > 2)
                  {
                     _loc28_;
                     _loc28_;
                     _loc29_;
                     _loc29_;
                     _loc20_ = int(_loc16_[2]);
                     _loc29_;
                  }
                  if(_loc16_.length > 3)
                  {
                     _loc28_;
                     _loc28_;
                     _loc21_ = int(_loc16_[3]);
                     _loc29_;
                     _loc29_;
                  }
                  _loc22_ = int(_loc17_[0].substring(1));
                  _loc28_;
                  _loc28_;
                  _loc23_ = int(_loc17_[1]);
                  _loc29_;
                  _loc29_;
                  _loc29_;
                  _loc24_ = 0;
                  _loc29_;
                  _loc25_ = 0;
                  _loc28_;
                  if(_loc17_.length > 2)
                  {
                     _loc28_;
                     _loc24_ = int(_loc17_[2]);
                  }
                  if(_loc17_.length > 3)
                  {
                     _loc29_;
                     _loc29_;
                     _loc25_ = int(_loc17_[3]);
                     _loc28_;
                     _loc28_;
                  }
                  _loc29_;
                  _loc29_;
                  _loc29_;
                  _loc29_;
                  _loc29_;
                  _loc28_;
                  _loc28_;
                  _loc28_;
                  _loc28_;
                  _loc29_;
                  _loc29_;
                  _loc29_;
                  _loc29_;
                  _loc29_;
                  _loc29_;
                  _loc29_;
                  _loc28_;
                  _loc28_;
                  _loc26_ = _loc18_ * 1000 + _loc19_ * 100 + _loc20_ * 10 + _loc21_;
                  _loc28_;
                  _loc28_;
                  _loc28_;
                  _loc28_;
                  _loc29_;
                  _loc29_;
                  _loc29_;
                  _loc29_;
                  _loc28_;
                  _loc27_ = _loc22_ * 1000 + _loc23_ * 100 + _loc24_ * 10 + _loc25_;
                  if(_loc26_ >= _loc27_)
                  {
                     _loc28_;
                     _loc28_;
                     _loc15_ = true;
                     _loc29_;
                     _loc29_;
                  }
                  else
                  {
                     _loc15_ = false;
                  }
               }
               
               if(_loc15_)
               {
                  _loc29_;
                  Global.replay_list.push(new §_-OB§(_loc5_,_loc8_,_loc9_,_loc10_,_loc11_,_loc13_,_loc14_));
               }
               _loc5_++;
            }
         }
      }
   }
}
