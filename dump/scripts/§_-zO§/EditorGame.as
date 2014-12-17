package §_-zO§
{
   import §_-ZN§.EditorGameQuitButton;
   
   public class EditorGame extends OfflineGame
   {
      
      public function EditorGame(param1:String, param2:String, param3:String, param4:String)
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         _loc8_;
         _loc8_;
         SafeGlobal.§_-Uq§ = this;
         SafeGlobal.playerID = 0;
         _loc7_;
         if(!§_-nG§)
         {
            _loc7_;
            if(param1 == "")
            {
               _loc8_;
               _loc8_;
               levelData = Global.tutorial_map;
            }
            else
            {
               levelData = param1;
               _loc7_;
            }
            §_-by§ = TimelineGlobal.player_name;
            _loc8_;
            _loc8_;
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + TimelineGlobal.player_uid;
            §_-by§ = §_-by§ + ",";
            _loc8_;
            §_-by§ = §_-by§ + Global.favourite_colour.getInt();
            §_-by§ = §_-by§ + ",";
            _loc8_;
            _loc8_;
            §_-by§ = §_-by§ + Global.favourite_helmet.getInt();
            §_-by§ = §_-by§ + ",";
            _loc8_;
            §_-by§ = §_-by§ + Global.anim_idle[0].getInt();
            _loc7_;
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + Global.anim_idle[1].getInt();
            _loc7_;
            _loc7_;
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + Global.anim_idle[2].getInt();
            _loc7_;
            §_-by§ = §_-by§ + ",";
            _loc7_;
            _loc7_;
            §_-by§ = §_-by§ + Global.anim_idle[3].getInt();
            _loc7_;
            §_-by§ = §_-by§ + ",";
            _loc8_;
            _loc8_;
            §_-by§ = §_-by§ + Global.anim_victory.getInt();
            §_-by§ = §_-by§ + ",1";
            §_-by§ = §_-by§ + "|";
            §_-by§ = §_-by§ + SafeGlobal.custom_weapon_string[0];
            §_-by§ = §_-by§ + "+";
            §_-by§ = §_-by§ + SafeGlobal.custom_weapon_string[1];
            _loc7_;
            §_-by§ = §_-by§ + "+";
            _loc8_;
            _loc8_;
            §_-by§ = §_-by§ + SafeGlobal.custom_weapon_string[2];
            _loc8_;
            §_-by§ = §_-by§ + "|";
            _loc7_;
            _loc5_ = false;
            _loc6_ = 0;
            while(true)
            {
               _loc7_;
               if(_loc6_ >= 6)
               {
                  break;
               }
               if(Global.unitDetails[_loc6_].active == true)
               {
                  _loc8_;
                  _loc8_;
                  if(_loc5_)
                  {
                     §_-by§ = §_-by§ + "|";
                  }
                  else
                  {
                     _loc5_ = true;
                  }
                  §_-by§ = §_-by§ + Global.unitDetails[_loc6_].health;
                  _loc7_;
                  §_-by§ = §_-by§ + ",";
                  §_-by§ = §_-by§ + Global.unitDetails[_loc6_].accuracy;
                  §_-by§ = §_-by§ + ",";
                  _loc7_;
                  _loc7_;
                  §_-by§ = §_-by§ + Global.unitDetails[_loc6_].name;
                  _loc8_;
                  §_-by§ = §_-by§ + ",";
                  §_-by§ = §_-by§ + "1";
               }
               _loc6_++;
            }
            modData = "";
            _loc7_;
            stockData = "";
            _loc8_;
            _loc7_;
            _loc7_;
            _loc6_ = 0;
            while(_loc6_ < SafeGlobal.weaponsStock.length)
            {
               stockData = stockData + String(SafeGlobal.weaponsStock[_loc6_]);
               _loc8_;
               _loc8_;
               _loc6_++;
            }
            SafeGlobal.gameStock = stockData;
            §_-nG§ = true;
            _loc7_;
         }
         SafeGlobal.orderDisplayFinished = true;
         SafeGlobal.orderSetupReady = true;
         _loc7_;
         super(levelData,§_-by§,modData,stockData);
      }
      
      private var §_-3X§:EditorGameQuitButton;
      
      override public function finishBuildLevel() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         §_-3o§();
         _loc3_;
         §_-pA§ = new Array();
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            §_-pA§[_loc1_] = {
               "x":units[_loc1_].iX,
               "y":units[_loc1_].iY,
               "r":units[_loc1_].iR,
               "locationPlanet":units[_loc1_].locationPlanet,
               "locationShape":units[_loc1_].locationShape,
               "locationCurve":units[_loc1_].locationCurve,
               "locationAngle":units[_loc1_].locationAngle,
               "health":units[_loc1_].health
            };
            _loc2_;
            _loc1_++;
            _loc2_;
         }
         _loc2_;
         _loc2_;
         §_-Yi§.ignore = true;
         §_-Yi§.hideMe();
         statusBar.visible = false;
         SafeGlobal.TIMELINE.removeLobbyGameDisplay();
         this.§_-3X§ = new EditorGameQuitButton();
         _loc2_;
         _loc2_;
         this.§_-3X§.x = -318;
         _loc3_;
         _loc3_;
         this.§_-3X§.y = 510;
         _loc2_;
         _loc2_;
         §_-wP§.addChild(this.§_-3X§);
         this.§_-3X§.tweenOn();
         _loc2_;
         §_-aC§();
      }
      
      override public function gameOver() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         §_-Wb§(false);
         _loc3_;
         _loc3_;
         §_-m8§();
         _loc3_;
         _loc3_;
         §_-0T§();
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            units[_loc1_].hideMe();
            _loc3_;
            _loc1_++;
         }
         §_-Yv§.visible = false;
         this.§_-3X§.tweenOff();
         Global.editor_game_x = screen.x;
         Global.editor_game_y = screen.y;
         Global.lobby_display.finishEditorGame();
         destroyGame();
         Global.EDITOR.comeBack();
      }
   }
}
