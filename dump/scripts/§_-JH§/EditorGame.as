package §_-JH§
{
   import §_-bY§.EditorGameQuitButton;
   
   public class EditorGame extends OfflineGame
   {
      
      public function EditorGame(param1:String, param2:String, param3:String, param4:String)
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         SafeGlobal.§_-vX§ = this;
         SafeGlobal.playerID = 0;
         if(!§_-xt§)
         {
            _loc7_;
            _loc7_;
            if(param1 == "")
            {
               levelData = Global.tutorial_map;
               _loc7_;
               _loc7_;
            }
            else
            {
               levelData = param1;
            }
            §_-o5§ = TimelineGlobal.player_name;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + TimelineGlobal.player_uid;
            _loc8_;
            _loc8_;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.favourite_colour.getInt();
            _loc8_;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.favourite_helmet.getInt();
            §_-o5§ = §_-o5§ + ",";
            _loc8_;
            §_-o5§ = §_-o5§ + Global.anim_idle[0].getInt();
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.anim_idle[1].getInt();
            _loc7_;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.anim_idle[2].getInt();
            _loc7_;
            _loc7_;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.anim_idle[3].getInt();
            §_-o5§ = §_-o5§ + ",";
            _loc8_;
            _loc8_;
            §_-o5§ = §_-o5§ + Global.anim_victory.getInt();
            §_-o5§ = §_-o5§ + ",1";
            §_-o5§ = §_-o5§ + "|";
            _loc7_;
            §_-o5§ = §_-o5§ + SafeGlobal.custom_weapon_string[0];
            §_-o5§ = §_-o5§ + "+";
            _loc8_;
            _loc8_;
            §_-o5§ = §_-o5§ + SafeGlobal.custom_weapon_string[1];
            _loc8_;
            _loc8_;
            §_-o5§ = §_-o5§ + "+";
            §_-o5§ = §_-o5§ + SafeGlobal.custom_weapon_string[2];
            _loc7_;
            _loc7_;
            §_-o5§ = §_-o5§ + "|";
            _loc8_;
            _loc8_;
            _loc5_ = false;
            _loc7_;
            _loc7_;
            _loc6_ = 0;
            while(true)
            {
               _loc8_;
               if(_loc6_ >= 6)
               {
                  break;
               }
               if(Global.unitDetails[_loc6_].active == true)
               {
                  _loc7_;
                  _loc7_;
                  if(_loc5_)
                  {
                     _loc8_;
                     _loc8_;
                     §_-o5§ = §_-o5§ + "|";
                     _loc7_;
                     _loc7_;
                  }
                  else
                  {
                     _loc5_ = true;
                     _loc8_;
                  }
                  §_-o5§ = §_-o5§ + Global.unitDetails[_loc6_].health;
                  _loc7_;
                  _loc7_;
                  §_-o5§ = §_-o5§ + ",";
                  §_-o5§ = §_-o5§ + Global.unitDetails[_loc6_].accuracy;
                  §_-o5§ = §_-o5§ + ",";
                  §_-o5§ = §_-o5§ + Global.unitDetails[_loc6_].name;
                  §_-o5§ = §_-o5§ + ",";
                  §_-o5§ = §_-o5§ + "1";
               }
               _loc6_++;
            }
            _loc8_;
            _loc8_;
            modData = "";
            _loc7_;
            _loc7_;
            stockData = "";
            _loc8_;
            _loc6_ = 0;
            _loc8_;
            _loc8_;
            while(_loc6_ < SafeGlobal.weaponsStock.length)
            {
               stockData = stockData + String(SafeGlobal.weaponsStock[_loc6_]);
               _loc8_;
               _loc6_++;
               _loc7_;
            }
            _loc8_;
            SafeGlobal.gameStock = stockData;
            _loc7_;
            §_-xt§ = true;
         }
         SafeGlobal.orderDisplayFinished = true;
         _loc7_;
         SafeGlobal.orderSetupReady = true;
         super(levelData,§_-o5§,modData,stockData);
      }
      
      private var §_-nS§:EditorGameQuitButton;
      
      override public function finishBuildLevel() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         §_-OI§();
         _loc2_;
         _loc2_;
         §_-iu§ = new Array();
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            §_-iu§[_loc1_] = {
               "x":units[_loc1_].iX,
               "y":units[_loc1_].iY,
               "r":units[_loc1_].iR,
               "locationPlanet":units[_loc1_].locationPlanet,
               "locationShape":units[_loc1_].locationShape,
               "locationCurve":units[_loc1_].locationCurve,
               "locationAngle":units[_loc1_].locationAngle,
               "health":units[_loc1_].health
            };
            _loc1_++;
         }
         _loc3_;
         _loc3_;
         §_-Jz§.ignore = true;
         §_-Jz§.hideMe();
         _loc3_;
         statusBar.visible = false;
         _loc3_;
         SafeGlobal.TIMELINE.removeLobbyGameDisplay();
         this.§_-nS§ = new EditorGameQuitButton();
         _loc3_;
         _loc2_;
         this.§_-nS§.x = -318;
         _loc2_;
         _loc2_;
         this.§_-nS§.y = 510;
         _loc2_;
         §_-pn§.addChild(this.§_-nS§);
         this.§_-nS§.tweenOn();
         §_-yn§();
      }
      
      override public function gameOver() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         §_-qm§(false);
         _loc3_;
         _loc3_;
         §_-tz§();
         _loc3_;
         _loc3_;
         §_-sA§();
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            units[_loc1_].hideMe();
            _loc2_;
            _loc2_;
            _loc1_++;
            _loc3_;
         }
         §_-W1§.visible = false;
         _loc2_;
         this.§_-nS§.tweenOff();
         Global.editor_game_x = screen.x;
         Global.editor_game_y = screen.y;
         Global.lobby_display.finishEditorGame();
         _loc2_;
         destroyGame();
         Global.EDITOR.comeBack();
      }
   }
}
