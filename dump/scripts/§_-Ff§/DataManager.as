package §_-Ff§
{
   import §_-bk§.§_-aq§;
   import flash.net.SharedObject;
   import §_-bk§.§_-qD§;
   import §_-1Q§.MD5;
   
   public class DataManager extends Object
   {
      
      public function DataManager()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
      }
      
      public static function §_-ZY§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(Global.§_-kR§ == false)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
            {
               _loc2_;
               TimelineGlobal.player_name = TimelineGlobal.kong_player_name;
               _loc2_;
               _loc2_;
            }
            else if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-Ir§)
            {
               TimelineGlobal.player_name = TimelineGlobal.§_-BK§;
            }
            else
            {
               TimelineGlobal.player_name = TimelineGlobal.input_username;
            }
            
         }
      }
      
      public static function §_-gQ§(param1:String) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Array = param1.split("|");
         var _loc3_:Array = _loc2_[0].split(",");
         var _loc4_:Array = _loc2_[1].split(",");
         SafeGlobal.§_-yA§ = parseInt(_loc3_[0]);
         SafeGlobal.§_-dW§ = parseInt(_loc3_[2]);
         _loc5_;
         SafeGlobal.§_-mh§ = parseInt(_loc3_[3]);
         _loc5_;
         _loc5_;
         SafeGlobal.§_-yg§ = _loc3_[1];
         SafeGlobal.§_-7j§ = parseInt(_loc4_[0]);
         SafeGlobal.§_-7T§ = parseInt(_loc4_[2]);
         _loc6_;
         SafeGlobal.§_-if§ = parseInt(_loc4_[3]);
         SafeGlobal.§_-Fu§ = _loc4_[1];
      }
      
      public static function §_-Gg§(param1:String) : void
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc2_:Array = param1.split("|");
         _loc3_ = parseInt(_loc2_[0]);
         _loc9_;
         _loc9_;
         _loc9_;
         _loc10_;
         _loc4_ = _loc3_.toString(2);
         _loc10_;
         _loc10_;
         _loc3_ = parseInt(_loc2_[1]);
         _loc10_;
         _loc5_ = _loc3_.toString(2);
         _loc10_;
         _loc10_;
         §_-sg§(_loc4_.substring(1) + _loc5_.substring(1));
         _loc3_ = parseInt(_loc2_[2]);
         _loc4_ = _loc3_.toString(2);
         _loc10_;
         _loc10_;
         §_-A3§(_loc4_.substring(1));
         _loc3_ = parseInt(_loc2_[3]);
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc4_ = _loc3_.toString(2);
         §_-ON§(_loc4_.substring(1));
         _loc10_;
         _loc10_;
         _loc3_ = parseInt(_loc2_[4]);
         _loc9_;
         _loc9_;
         _loc9_;
         _loc10_;
         _loc10_;
         _loc4_ = _loc3_.toString(2);
         _loc9_;
         §_-Yg§(_loc4_.substring(1));
         _loc3_ = parseInt(_loc2_[5]);
         _loc10_;
         _loc10_;
         _loc10_;
         _loc4_ = _loc3_.toString(2);
         §_-MB§(_loc4_.substring(1));
         _loc10_;
         _loc10_;
         _loc3_ = parseInt(_loc2_[6]);
         _loc10_;
         _loc10_;
         _loc4_ = _loc3_.toString(2);
         _loc10_;
         _loc10_;
         §_-MN§(_loc4_.substring(1));
         _loc3_ = parseInt(_loc2_[7]);
         _loc9_;
         _loc9_;
         _loc4_ = _loc3_.toString(2);
         _loc10_;
         §_-NR§(_loc4_.substring(1));
         _loc3_ = parseInt(_loc2_[8]);
         _loc9_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc4_ = _loc3_.toString(2);
         _loc10_;
         _loc10_;
         _loc3_ = parseInt(_loc2_[9]);
         _loc10_;
         _loc9_;
         _loc9_;
         _loc5_ = _loc3_.toString(2);
         _loc9_;
         _loc9_;
         _loc3_ = parseInt(_loc2_[10]);
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc6_ = _loc3_.toString(2);
         _loc10_;
         _loc3_ = parseInt(_loc2_[11]);
         _loc10_;
         _loc9_;
         _loc9_;
         _loc7_ = _loc3_.toString(2);
         _loc3_ = parseInt(_loc2_[12]);
         _loc10_;
         _loc10_;
         _loc10_;
         _loc9_;
         _loc8_ = _loc3_.toString(2);
         §_-kj§(_loc4_.substring(1) + _loc5_.substring(1) + _loc6_.substring(1) + _loc7_.substring(1) + _loc8_.substring(1));
         _loc9_;
         _loc9_;
         _loc3_ = parseInt(_loc2_[13]);
         _loc10_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc4_ = _loc3_.toString(2);
         §_-sv§(_loc4_.substring(1));
         _loc3_ = parseInt(_loc2_[14]);
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc4_ = _loc3_.toString(2);
         _loc9_;
         _loc9_;
         §_-b2§(_loc4_.substring(1));
         _loc10_;
         _loc10_;
         _loc3_ = parseInt(_loc2_[15]);
         _loc9_;
         _loc9_;
         _loc4_ = _loc3_.toString(2);
         §_-UD§(_loc4_.substring(1));
         _loc3_ = parseInt(_loc2_[16]);
         _loc10_;
         _loc10_;
         _loc4_ = _loc3_.toString(2);
         _loc9_;
         §_-mb§(_loc4_.substring(1));
      }
      
      public static function §_-A6§(param1:String) : void
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
            _loc6_;
            _loc5_ = 0;
            while(_loc5_ < 5)
            {
               if(_loc4_[_loc5_] == "0")
               {
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  SafeGlobal.campaigns[_loc3_].unlocked[_loc5_] = 0;
                  _loc6_;
                  _loc6_;
                  _loc7_;
                  _loc7_;
                  SafeGlobal.campaigns[_loc3_].medals[_loc5_] = 0;
                  _loc7_;
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
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  SafeGlobal.campaigns[_loc3_].medals[_loc5_] = 0;
               }
               else
               {
                  _loc6_;
                  _loc7_;
                  SafeGlobal.campaigns[_loc3_].unlocked[_loc5_] = 1;
                  _loc6_;
                  SafeGlobal.campaigns[_loc3_].medals[_loc5_] = parseInt(_loc4_[_loc5_]);
               }
               
               _loc5_++;
               _loc7_;
               _loc7_;
            }
            _loc6_;
            _loc3_++;
         }
      }
      
      public static function §_-Xw§(param1:String) : void
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
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_ = 0;
            _loc7_;
            while(_loc5_ < _loc4_.length)
            {
               SafeGlobal.campaigns[_loc3_].awards[_loc5_] = parseInt(_loc4_[_loc5_]);
               _loc7_;
               _loc5_++;
               _loc6_;
               _loc6_;
            }
            _loc6_;
            _loc3_++;
         }
      }
      
      public static function §_-NX§(param1:String) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Array = null;
         var _loc2_:Array = param1.split("|");
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = _loc2_[_loc3_].split(",");
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            Global.unitDetails[_loc3_].name = _loc4_[0];
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            Global.unitDetails[_loc3_].health = int(_loc4_[1]);
            _loc6_;
            _loc5_;
            _loc5_;
            _loc6_;
            Global.unitDetails[_loc3_].accuracy = int(_loc4_[2]);
            _loc5_;
            _loc5_;
            Global.unitDetails[_loc3_].active = int(_loc4_[3]) == 0?false:true;
            _loc6_;
            _loc3_++;
         }
      }
      
      public static function native(param1:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = param1.split(",");
         _loc4_;
         _loc4_;
         Global.favourite_colour.setInt(parseInt(_loc2_[0]));
         Global.favourite_helmet.setInt(parseInt(_loc2_[1]));
         _loc3_;
         _loc3_;
         Global.anim_victory.setInt(parseInt(_loc2_[2]));
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc4_;
         Global.anim_idle[0].setInt(parseInt(_loc2_[3]));
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         Global.anim_idle[1].setInt(parseInt(_loc2_[4]));
         _loc3_;
         _loc4_;
         _loc3_;
         Global.anim_idle[2].setInt(parseInt(_loc2_[5]));
         _loc3_;
         _loc3_;
         Global.anim_idle[3].setInt(parseInt(_loc2_[6]));
         _loc4_;
         Global.lobby_display.lobby_stats.§_-Qc§();
      }
      
      public static function §_-sg§(param1:String) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = false;
         var _loc2_:* = 0;
         _loc6_;
         _loc6_;
         SafeGlobal.weaponsUnlocked = new Array();
         var _loc4_:* = 0;
         while(_loc4_ < param1.length)
         {
            _loc3_ = param1.substr(_loc4_,1) == "1"?true:false;
            _loc6_;
            SafeGlobal.weaponsUnlocked.push(_loc3_);
            _loc5_;
            _loc5_;
            if(_loc3_ == true || _loc4_ == 0)
            {
               _loc2_++;
            }
            _loc4_++;
            _loc5_;
            _loc5_;
         }
         _loc5_;
         SafeGlobal.§_-wv§.setInt(_loc2_);
      }
      
      public static function §_-0-L§(param1:String) : *
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
            _loc5_;
            SafeGlobal.weaponsStock.push(_loc2_);
            _loc5_;
            _loc5_;
            _loc3_++;
            _loc5_;
            _loc5_;
         }
      }
      
      public static function §_-A3§(param1:String) : *
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
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               SafeGlobal.helmetsUnlocked.push(true);
               _loc4_;
               _loc4_;
            }
            else
            {
               SafeGlobal.helmetsUnlocked.push(false);
               _loc3_;
            }
            _loc2_++;
            _loc3_;
         }
      }
      
      public static function §_-ON§(param1:String) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
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
               SafeGlobal.modsUnlocked.push(true);
               _loc3_;
               _loc3_;
            }
            else
            {
               SafeGlobal.modsUnlocked.push(false);
               _loc4_;
               _loc4_;
            }
            _loc2_++;
            _loc3_;
         }
      }
      
      public static function §_-Yg§(param1:String) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         SafeGlobal.coloursUnlocked = new Array();
         var _loc2_:* = 0;
         while(_loc2_ < param1.length)
         {
            if(param1.substr(_loc2_,1) == "1")
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               SafeGlobal.coloursUnlocked.push(true);
               _loc3_;
            }
            else
            {
               SafeGlobal.coloursUnlocked.push(false);
               _loc4_;
            }
            _loc2_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public static function §_-MB§(param1:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         SafeGlobal.victoryAnimsUnlocked = new Array();
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
               SafeGlobal.victoryAnimsUnlocked.push(true);
               _loc3_;
               _loc3_;
            }
            else
            {
               SafeGlobal.victoryAnimsUnlocked.push(false);
               _loc3_;
               _loc3_;
            }
            _loc2_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public static function §_-MN§(param1:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         SafeGlobal.idleAnimsUnlocked = new Array();
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
            }
            _loc2_++;
            _loc4_;
         }
      }
      
      public static function §_-2K§(param1:String) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         _loc5_;
         _loc5_;
         SafeGlobal.victoryAnimsUnlocked = new Array();
         _loc5_;
         SafeGlobal.idleAnimsUnlocked = new Array();
         var _loc2_:Array = param1.split("|");
         _loc5_;
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
               _loc5_;
               _loc5_;
               _loc4_;
               SafeGlobal.victoryAnimsUnlocked.push(true);
            }
            else
            {
               _loc5_;
               _loc4_;
               _loc4_;
               SafeGlobal.victoryAnimsUnlocked.push(false);
               _loc4_;
            }
            _loc3_++;
            _loc5_;
            _loc5_;
         }
         _loc5_;
         _loc3_ = 0;
         _loc5_;
         _loc5_;
         while(_loc3_ < _loc2_[1].length)
         {
            if(_loc2_[1].substr(_loc3_,1) == "1")
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               SafeGlobal.idleAnimsUnlocked.push(true);
               _loc4_;
            }
            else
            {
               SafeGlobal.idleAnimsUnlocked.push(false);
            }
            _loc3_++;
         }
      }
      
      public static function §_-b2§(param1:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         SafeGlobal.wepGfxUnlocked = new Array();
         _loc3_;
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            if(param1.substr(_loc2_,1) == "1")
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc4_;
               SafeGlobal.wepGfxUnlocked.push(true);
               _loc3_;
            }
            else
            {
               SafeGlobal.wepGfxUnlocked.push(false);
               _loc3_;
               _loc3_;
            }
            _loc2_++;
            _loc3_;
            _loc3_;
         }
      }
      
      public static function §_-UD§(param1:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         SafeGlobal.projGfxUnlocked = new Array();
         _loc4_;
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            if(param1.substr(_loc2_,1) == "1")
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               SafeGlobal.projGfxUnlocked.push(true);
               _loc4_;
            }
            else
            {
               SafeGlobal.projGfxUnlocked.push(false);
               _loc4_;
               _loc4_;
            }
            _loc2_++;
            _loc3_;
            _loc3_;
         }
      }
      
      public static function §_-mb§(param1:String) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         SafeGlobal.projTrailUnlocked = new Array();
         _loc4_;
         _loc2_ = 0;
         while(_loc2_ < param1.length)
         {
            if(param1.substr(_loc2_,1) == "1")
            {
               _loc4_;
               _loc4_;
               _loc3_;
               SafeGlobal.projTrailUnlocked.push(true);
               _loc3_;
            }
            else
            {
               SafeGlobal.projTrailUnlocked.push(false);
               _loc3_;
               _loc3_;
            }
            _loc2_++;
            _loc3_;
         }
      }
      
      public static function §_-NR§(param1:String) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         SafeGlobal.editorUnlocked = new Array();
         var _loc2_:* = 0;
         while(true)
         {
            _loc5_;
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
               SafeGlobal.editorUnlocked.push(true);
               _loc5_;
               _loc5_;
            }
            else
            {
               SafeGlobal.editorUnlocked.push(false);
               _loc5_;
            }
            _loc2_++;
            _loc5_;
         }
         _loc5_;
         _loc5_;
         Global.planets_unlocked = new Array();
         var _loc3_:* = 0;
         _loc5_;
         while(_loc3_ < Global.TOTAL_PLANETS)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            Global.planets_unlocked[_loc3_] = false;
            _loc4_;
            _loc4_;
            _loc3_++;
         }
         _loc4_;
         §_-1D§();
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc4_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK1])
         {
            §_-K1§(0);
            _loc4_;
         }
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK2])
         {
            §_-K1§(1);
         }
         _loc5_;
         _loc5_;
         _loc5_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK3])
         {
            §_-K1§(2);
            _loc4_;
         }
         _loc4_;
         _loc5_;
         _loc5_;
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK4])
         {
            §_-K1§(3);
         }
         if(SafeGlobal.editorUnlocked[Global.EDITOR_PACK5])
         {
            §_-K1§(4);
         }
      }
      
      public static function §_-1D§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Array = Global.default_planets;
         var _loc2_:* = 0;
         while(_loc2_ < _loc1_.length)
         {
            Global.planets_unlocked[_loc1_[_loc2_]] = true;
            _loc3_;
            _loc2_++;
            _loc4_;
         }
      }
      
      public static function §_-K1§(param1:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Array = Global.planet_packs[param1];
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_.length)
         {
            Global.planets_unlocked[_loc2_[_loc3_]] = true;
            _loc4_;
            _loc3_++;
            _loc4_;
         }
      }
      
      public static function §_-ma§(param1:String) : *
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
         _loc9_;
         _loc8_;
         _loc8_;
         if(param1 != "")
         {
            _loc2_ = param1.split("|");
            _loc3_ = _loc2_[0].split(",");
            _loc4_ = _loc2_[1].split(",");
            _loc5_ = _loc2_[2].split("");
            _loc6_ = _loc2_[3].split(",");
            _loc9_;
            _loc9_;
            _loc7_ = 0;
            while(true)
            {
               _loc9_;
               if(_loc7_ >= _loc3_.length)
               {
                  break;
               }
               _loc9_;
               _loc8_;
               Global.game_stats[_loc7_] = int(_loc3_[_loc7_]);
               _loc8_;
               _loc8_;
               _loc7_++;
            }
            _loc9_;
            _loc9_;
            _loc7_ = 0;
            _loc8_;
            while(_loc7_ < _loc4_.length)
            {
               _loc9_;
               _loc8_;
               _loc8_;
               Global.other_stats[_loc7_] = int(_loc4_[_loc7_]);
               _loc7_++;
            }
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               _loc9_;
               _loc8_;
               _loc8_;
               Global.one_time_stats[_loc7_] = int(_loc5_[_loc7_]);
               _loc9_;
               _loc9_;
               _loc7_++;
            }
            _loc8_;
            _loc8_;
            _loc7_ = 0;
            while(_loc7_ < _loc6_.length)
            {
               Global.global_stats[_loc7_] = _loc6_[_loc7_];
               _loc8_;
               _loc7_++;
               _loc8_;
               _loc8_;
            }
         }
      }
      
      public static function §_-kj§(param1:String) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Array = param1.split("");
         _loc5_;
         _loc5_;
         if(§_-dS§.ready == false)
         {
            _loc4_;
            §_-dS§.init();
         }
         var _loc3_:* = 0;
         while(_loc3_ < §_-dS§.awards.length)
         {
            (§_-dS§.awards[_loc3_] as §_-LC§).award_complete = int(_loc2_[_loc3_]);
            _loc4_;
            _loc4_;
            _loc3_++;
            _loc5_;
            _loc5_;
         }
      }
      
      public static function §_-sv§(param1:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         SafeGlobal.helpItemsViewed = new Array();
         var _loc2_:* = 0;
         while(_loc2_ < param1.length)
         {
            if(param1.substr(_loc2_,1) == "1")
            {
               _loc4_;
               _loc4_;
               _loc3_;
               SafeGlobal.helpItemsViewed.push(true);
               _loc4_;
            }
            else
            {
               SafeGlobal.helpItemsViewed.push(false);
               _loc4_;
            }
            _loc2_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public static function §_-SL§(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         SafeGlobal.custom_weapon_string = param1.split("+");
      }
      
      public static function awardUnlocked(param1:String) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Array = param1.split(",");
         _loc3_;
         _loc3_;
         §_-dS§.awards[int(_loc2_[0])].award_complete = 1;
         §_-dS§.awards[int(_loc2_[0])].new_award = true;
         _loc3_;
         Global.coins.setInt(Global.coins.getInt() + int(_loc2_[1]));
         _loc4_;
         _loc3_;
         _loc3_;
         Global.lobby_display.lobby_stats.§_-Cm§();
         _loc3_;
         _loc3_;
         Global.lobby_display.lobby_menu.updateButtons();
         Global.lobby_display.displayAwardUnlocked(int(_loc2_[0]),int(_loc2_[1]));
      }
      
      public static function §_-Q5§(param1:String) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Array = param1.split("|");
         _loc5_;
         _loc5_;
         SafeGlobal.§_-eN§.setInt(int(_loc2_[0]));
         var _loc3_:Array = _loc2_[1].split(",");
         _loc6_;
         _loc6_;
         SafeGlobal.§_-f0§ = new Array();
         var _loc4_:* = 0;
         while(_loc4_ < _loc3_.length)
         {
            SafeGlobal.§_-f0§[_loc4_] = new §_-aq§(int(_loc3_[_loc4_]));
            _loc6_;
            _loc6_;
            _loc4_++;
            _loc6_;
            _loc6_;
         }
      }
      
      public static function §_-Oq§(param1:String) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc2_:Array = param1.split("|");
         var _loc7_:* = 0;
         while(_loc7_ < _loc2_.length)
         {
            _loc3_ = _loc2_[_loc7_].split(",");
            _loc8_;
            _loc4_ = _loc3_[0].substr(0,1);
            _loc8_;
            _loc9_;
            _loc9_;
            _loc5_ = int(_loc3_[0].substr(1));
            _loc9_;
            _loc6_ = int(_loc3_[1]);
            _loc8_;
            ItemsData.setItemPrice(_loc4_,_loc5_,_loc6_);
            _loc9_;
            _loc7_++;
         }
      }
      
      public static function §_-9g§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var shared_obj:SharedObject = null;
         _loc3_;
         _loc3_;
         var md5_list:String = null;
         _loc3_;
         _loc3_;
         var i:int = 0;
         _loc4_;
         _loc3_;
         _loc3_;
         var final_md5:String = null;
         _loc4_;
         _loc4_;
         var full_str:String = null;
         _loc3_;
         var ar:Array = null;
         _loc3_;
         _loc3_;
         var obj:§_-qD§ = null;
         _loc3_;
         _loc3_;
         var str:String = null;
         try
         {
            Global.custom_maps = new Array();
            _loc3_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            Global.custom_maps[0] = null;
            _loc4_;
            shared_obj = SharedObject.getLocal("GWOCustomMaps2" + TimelineGlobal.player_name);
            _loc4_;
            _loc4_;
            if(shared_obj.data.custom_maps != null)
            {
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               i = 0;
               while(true)
               {
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  if(i >= shared_obj.data.custom_maps.length)
                  {
                     break;
                  }
                  _loc4_;
                  full_str = shared_obj.data.custom_maps[i];
                  _loc3_;
                  if(full_str != null)
                  {
                     _loc3_;
                     _loc3_;
                     ar = full_str.split("$");
                     _loc3_;
                     _loc3_;
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     Global.custom_maps[i] = new §_-qD§(ar[1],ar[0]);
                  }
                  else
                  {
                     _loc4_;
                     _loc3_;
                     _loc3_;
                     _loc4_;
                     Global.custom_maps[i] = null;
                     _loc3_;
                  }
                  _loc4_;
                  _loc3_;
                  _loc3_;
                  _loc4_;
                  i++;
                  _loc4_;
                  _loc4_;
               }
            }
            else
            {
               Global.custom_maps[0] = null;
            }
            _loc4_;
            _loc4_;
            md5_list = "";
            i = 0;
            while(true)
            {
               _loc3_;
               if(i >= Global.custom_maps.length)
               {
                  break;
               }
               obj = Global.custom_maps[i];
               _loc3_;
               str = "";
               if(obj != null)
               {
                  _loc4_;
                  _loc4_;
                  _loc3_;
                  _loc4_;
                  str = obj.mapData + obj.mapKey;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  str = "";
               }
               md5_list = md5_list + MD5.hash(str);
               _loc4_;
               _loc4_;
               _loc4_;
               _loc3_;
               i++;
            }
            final_md5 = MD5.hash(md5_list.toUpperCase());
            _loc3_;
            Global.lobby_client.checkCustomMaps(final_md5.toUpperCase());
         }
         catch(e:Error)
         {
         }
      }
      
      public static function refreshCustomMaps(param1:String) : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         _loc7_;
         Global.custom_maps = new Array();
         _loc6_;
         _loc6_;
         _loc7_;
         if(param1 != "")
         {
            _loc2_ = param1.split("/");
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
               }
               else
               {
                  _loc4_ = _loc2_[_loc3_].split("|");
                  _loc5_ = _loc4_[_loc4_.length - 1];
                  _loc7_;
                  _loc7_;
                  _loc4_.splice(_loc4_.length - 1,1);
                  _loc6_;
                  _loc6_;
                  Global.custom_maps[_loc3_] = new §_-qD§(_loc5_,_loc4_.join("|"));
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
            _loc7_;
            §_-3S§();
         }
      }
      
      public static function §_-3S§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         var shared_obj:SharedObject = null;
         _loc3_;
         var i:int = 0;
         try
         {
            _loc3_;
            shared_obj = SharedObject.getLocal("GWOCustomMaps2" + TimelineGlobal.player_name);
            _loc3_;
            _loc3_;
            shared_obj.data.custom_maps = new Array();
            _loc4_;
            _loc4_;
            i = 0;
            while(i < Global.custom_maps.length)
            {
               if(Global.custom_maps[i] != null)
               {
                  _loc4_;
                  shared_obj.data.custom_maps[i] = String(Global.custom_maps[i].mapData + "$" + Global.custom_maps[i].mapKey);
                  _loc3_;
               }
               else
               {
                  shared_obj.data.custom_maps[i] = null;
                  _loc3_;
               }
               _loc4_;
               _loc4_;
               _loc3_;
               i++;
               _loc4_;
               _loc4_;
            }
            shared_obj.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      public static function §_-Bt§(param1:String, param2:String) : void
      {
         var _loc28_:* = true;
         var _loc29_:* = false;
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
         _loc28_;
         Global.replay_list = new Array();
         _loc29_;
         _loc28_;
         _loc28_;
         _loc28_;
         _loc28_;
         _loc29_;
         if(!(param1 == "") && !(param2 == ""))
         {
            _loc3_ = param1.split("$");
            _loc4_ = param2.split("#");
            _loc28_;
            _loc28_;
            _loc5_ = 0;
            while(_loc5_ < _loc3_.length)
            {
               _loc6_ = _loc3_[_loc5_].split("£");
               _loc7_ = _loc4_[_loc5_].split("£");
               _loc8_ = _loc6_[0];
               _loc9_ = int(_loc6_[1]);
               _loc29_;
               _loc10_ = _loc6_[2];
               _loc28_;
               _loc28_;
               _loc11_ = "";
               if(_loc6_.length > 3)
               {
                  _loc11_ = _loc6_[3];
               }
               _loc12_ = "";
               if(_loc6_.length > 4)
               {
                  _loc28_;
                  _loc28_;
                  _loc28_;
                  _loc12_ = _loc6_[4];
               }
               _loc13_ = _loc7_[0];
               _loc29_;
               _loc14_ = _loc7_[1];
               _loc28_;
               _loc15_ = false;
               _loc28_;
               _loc28_;
               _loc28_;
               _loc28_;
               if(_loc12_ == "")
               {
                  _loc29_;
                  _loc29_;
                  _loc15_ = false;
                  _loc29_;
               }
               else
               {
                  _loc29_;
                  _loc29_;
                  if(_loc12_ == TimelineGlobal.replay_version)
                  {
                     _loc29_;
                     _loc15_ = true;
                  }
                  else
                  {
                     _loc16_ = _loc12_.split(".");
                     _loc17_ = TimelineGlobal.replay_version.split(".");
                     _loc29_;
                     _loc29_;
                     _loc18_ = int(_loc16_[0].substring(1));
                     _loc19_ = int(_loc16_[1]);
                     _loc20_ = 0;
                     _loc28_;
                     _loc28_;
                     _loc21_ = 0;
                     if(_loc16_.length > 2)
                     {
                        _loc28_;
                        _loc20_ = int(_loc16_[2]);
                        _loc28_;
                     }
                     if(_loc16_.length > 3)
                     {
                        _loc29_;
                        _loc29_;
                        _loc29_;
                        _loc21_ = int(_loc16_[3]);
                        _loc29_;
                     }
                     _loc22_ = int(_loc17_[0].substring(1));
                     _loc28_;
                     _loc28_;
                     _loc28_;
                     _loc23_ = int(_loc17_[1]);
                     _loc24_ = 0;
                     _loc25_ = 0;
                     if(_loc17_.length > 2)
                     {
                        _loc24_ = int(_loc17_[2]);
                        _loc28_;
                        _loc28_;
                     }
                     if(_loc17_.length > 3)
                     {
                        _loc25_ = int(_loc17_[3]);
                     }
                     _loc29_;
                     _loc29_;
                     _loc28_;
                     _loc28_;
                     _loc28_;
                     _loc29_;
                     _loc28_;
                     _loc28_;
                     _loc28_;
                     _loc28_;
                     _loc28_;
                     _loc29_;
                     _loc29_;
                     _loc29_;
                     _loc26_ = _loc18_ * 1000 + _loc19_ * 100 + _loc20_ * 10 + _loc21_;
                     _loc28_;
                     _loc28_;
                     _loc28_;
                     _loc28_;
                     _loc28_;
                     _loc28_;
                     _loc28_;
                     _loc28_;
                     _loc29_;
                     _loc29_;
                     _loc28_;
                     _loc28_;
                     _loc28_;
                     _loc29_;
                     _loc27_ = _loc22_ * 1000 + _loc23_ * 100 + _loc24_ * 10 + _loc25_;
                     _loc29_;
                     _loc29_;
                     if(_loc26_ >= _loc27_)
                     {
                        _loc28_;
                        _loc28_;
                        _loc29_;
                        _loc29_;
                        _loc15_ = true;
                     }
                     else
                     {
                        _loc15_ = false;
                     }
                  }
               }
               if(_loc15_)
               {
                  Global.replay_list.push(new §_-Hd§(_loc5_,_loc8_,_loc9_,_loc10_,_loc11_,_loc13_,_loc14_));
                  _loc29_;
               }
               _loc5_++;
            }
         }
      }
   }
}
