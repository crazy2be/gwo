package §_-zO§
{
   import §_-Cv§.TutorialData;
   import §_-Cv§.§_-Wh§;
   import com.funkypear.ui.TutorialItemDisplay;
   import fl.transitions.Tween;
   import flash.events.Event;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   import flash.geom.Point;
   import §_-Cv§.GameOverData;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.events.KeyboardEvent;
   
   public class TutorialGame extends OfflineGame
   {
      
      public function TutorialGame(param1:String, param2:String, param3:String, param4:String)
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         _loc8_;
         SafeGlobal.§_-Uq§ = this;
         if(!§_-nG§)
         {
            _loc7_;
            _loc7_;
            levelData = Global.tutorial_map;
            §_-by§ = TimelineGlobal.player_name;
            §_-by§ = §_-by§ + ",";
            _loc8_;
            _loc8_;
            §_-by§ = §_-by§ + TimelineGlobal.player_uid;
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + Global.favourite_colour.getInt();
            §_-by§ = §_-by§ + ",";
            _loc8_;
            _loc8_;
            §_-by§ = §_-by§ + Global.favourite_helmet.getInt();
            _loc8_;
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + Global.anim_idle[0].getInt();
            _loc7_;
            §_-by§ = §_-by§ + ",";
            _loc8_;
            §_-by§ = §_-by§ + Global.anim_idle[1].getInt();
            _loc7_;
            _loc7_;
            §_-by§ = §_-by§ + ",";
            _loc8_;
            _loc8_;
            §_-by§ = §_-by§ + Global.anim_idle[2].getInt();
            §_-by§ = §_-by§ + ",";
            _loc8_;
            §_-by§ = §_-by§ + Global.anim_idle[3].getInt();
            _loc8_;
            _loc8_;
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + Global.anim_victory.getInt();
            §_-by§ = §_-by§ + ",1";
            §_-by§ = §_-by§ + "|";
            _loc7_;
            _loc7_;
            §_-by§ = §_-by§ + SafeGlobal.custom_weapon_string[0];
            _loc7_;
            _loc7_;
            §_-by§ = §_-by§ + "+";
            _loc8_;
            §_-by§ = §_-by§ + SafeGlobal.custom_weapon_string[1];
            §_-by§ = §_-by§ + "+";
            §_-by§ = §_-by§ + SafeGlobal.custom_weapon_string[2];
            _loc7_;
            §_-by§ = §_-by§ + "|";
            _loc8_;
            _loc5_ = false;
            _loc6_ = 0;
            while(true)
            {
               _loc8_;
               if(_loc6_ >= 4)
               {
                  break;
               }
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
               §_-by§ = §_-by§ + "1";
               _loc8_;
               _loc8_;
               §_-by§ = §_-by§ + ",";
               §_-by§ = §_-by§ + "1";
               §_-by§ = §_-by§ + ",";
               _loc7_;
               _loc7_;
               §_-by§ = §_-by§ + Global.unitDetails[_loc6_].name;
               _loc8_;
               §_-by§ = §_-by§ + ",";
               _loc7_;
               _loc7_;
               _loc7_;
               if(_loc6_ == 0)
               {
                  §_-by§ = §_-by§ + "1";
               }
               else
               {
                  §_-by§ = §_-by§ + "-1";
                  _loc8_;
                  _loc8_;
               }
               _loc6_++;
            }
            modData = "";
            _loc8_;
            stockData = "";
            _loc8_;
            _loc8_;
            _loc6_ = 0;
            while(_loc6_ < SafeGlobal.weaponsStock.length)
            {
               stockData = stockData + String(SafeGlobal.weaponsStock[_loc6_]);
               _loc6_++;
            }
            SafeGlobal.gameStock = stockData;
            §_-nG§ = true;
            SafeGlobal.§_-zK§.§_-IP§();
         }
         SafeGlobal.orderDisplayFinished = true;
         SafeGlobal.orderSetupReady = true;
         super(levelData,§_-by§,modData,stockData);
         §_-Yi§.turnTime = 3600000;
         this.§_-ck§ = new §_-nD§();
         this.§_-Sw§ = new §_-M8§();
         _loc7_;
         _loc7_;
         screen.addChild(this.§_-Sw§);
         _loc8_;
         _loc8_;
         screen.addChild(this.§_-ck§);
         this.§_-xw§();
         this.§_-Px§ = new §_-Lw§();
         this.§_-HB§ = new §_-NI§();
         screen.addChild(this.§_-HB§);
         screen.addChild(this.§_-Px§);
         _loc8_;
         _loc8_;
         this.§_-MU§();
      }
      
      private var §_-fP§:Boolean = true;
      
      private var §_-qu§:Boolean = false;
      
      private var §_-Xa§:Boolean = false;
      
      private var §_-X-§:int = 0;
      
      private var §_-vy§:int = 0;
      
      private var §_-9g§:int = 0;
      
      private var §_-uJ§:int = 0;
      
      private var §_-WA§:Array;
      
      private var wep_arrow:§_-3b§;
      
      private var §_-ck§:§_-nD§;
      
      private var §_-Sw§:§_-M8§;
      
      private var §_-Px§:§_-Lw§;
      
      private var §_-HB§:§_-NI§;
      
      private var §_-26§:§_-zq§;
      
      private var §_-w4§:Boolean = false;
      
      private var §_-DP§:TutorialData;
      
      private var §_-fA§:§_-Wh§;
      
      private var §_-FJ§:TutorialItemDisplay;
      
      private var §_-cv§:int;
      
      private var §_-IR§:int = 0;
      
      private var §_-Mp§:int = 1;
      
      private var HELP_ENEMY1:int = 2;
      
      private var §_-qm§:int = 3;
      
      private var §_-6L§:int = 4;
      
      private var §_-18§:int = 5;
      
      private var §_-jl§:int = 6;
      
      private var HELP_ENEMY2:int = 7;
      
      private var §_-c0§:int = 8;
      
      private var §_-tN§:int = 9;
      
      private var §_-lk§:int = 10;
      
      private var §_-K0§:int = 11;
      
      private var HELP_ENEMY3:int = 12;
      
      private var HELP_END1:int = 13;
      
      private var HELP_END2:int = 14;
      
      private var §_-n5§:int = 0;
      
      private var DISMISS_ONDESTROYENEMY1:int = 1;
      
      private var DISMISS_ONDESTROYENEMY2:int = 2;
      
      private var DISMISS_ONDESTROYENEMY3:int = 3;
      
      private var §_-1A§:int = 4;
      
      private var §_-mQ§:int = 5;
      
      private var §_-Gq§:int = 6;
      
      private var §_-D-§:int = 7;
      
      private var §_-AK§:int = 8;
      
      private var §_-l9§:Boolean = false;
      
      private var §_-yk§:Boolean = false;
      
      private var §_-Ej§:Boolean = false;
      
      private var §_-YI§:Boolean = false;
      
      private var §_-n3§:Boolean = false;
      
      private var §_-uQ§:Boolean = false;
      
      private var §_-DU§:Tween;
      
      private var §_-gq§:int = 0;
      
      override public function finishBuildLevel() : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc1_:* = 1;
         var _loc2_:* = 0;
         var _loc3_:* = 5;
         var _loc4_:* = 1;
         var _loc5_:* = 7;
         var _loc6_:* = 0;
         _loc8_;
         §_-e0§.push(new Costume(_loc6_,1,1,1,SafeGlobal.colour_hex[_loc5_],_loc1_));
         _loc7_;
         addEventListener(Event.ENTER_FRAME,this.§_-eF§);
      }
      
      public function §_-eF§(param1:Event) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = false;
         var _loc3_:* = 0;
         while(true)
         {
            if(_loc3_ >= §_-e0§.length)
            {
               _loc5_;
               break;
            }
            if(§_-e0§[_loc3_].processQueue.length > 0)
            {
               §_-e0§[_loc3_].processQueueItem();
               _loc4_;
               _loc4_;
               _loc4_;
               _loc2_ = true;
               _loc4_;
               break;
            }
            _loc3_++;
         }
         if(!_loc2_)
         {
            this.§_-TN§();
         }
      }
      
      public function §_-TN§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         removeEventListener(Event.ENTER_FRAME,this.§_-eF§);
         _loc1_;
         §_-3o§();
         _loc1_;
         this.§_-ll§();
      }
      
      public function §_-ll§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         §_-pA§ = new Array();
         var _loc1_:* = 0;
         while(true)
         {
            _loc3_;
            _loc3_;
            if(_loc1_ >= units.length)
            {
               break;
            }
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
            _loc3_;
            _loc1_++;
         }
         §_-Yi§.y = -100;
         _loc3_;
         statusBar.visible = false;
         _loc2_;
         _loc3_;
         _loc3_;
         SafeGlobal.TIMELINE.removeLobbyGameDisplay();
         _loc2_;
         _loc2_;
         _loc3_;
         if((this.§_-fP§) && SafeGlobal.helpItemsViewed[0] == false)
         {
            _loc2_;
            _loc2_;
            this.§_-DP§ = new TutorialData();
            this.displayTutorialItem(this.§_-DP§.§_-po§());
            _loc2_;
            _loc2_;
            this.§_-SJ§();
            this.§_-wn§(1,false);
            _loc2_;
            _loc2_;
            SafeGlobal.TIMELINE.showTutorialSkipButton();
            _loc3_;
         }
         else
         {
            if(this.§_-FJ§ != null)
            {
               _loc3_;
               _loc3_;
               _loc2_;
               if(this.§_-cv§ == this.DISMISS_ONDESTROYENEMY1)
               {
                  this.§_-wn§(1);
                  _loc3_;
                  _loc3_;
               }
               _loc3_;
               _loc2_;
               if(this.§_-cv§ == this.DISMISS_ONDESTROYENEMY2)
               {
                  _loc2_;
                  this.§_-wn§(2);
                  _loc2_;
               }
               if(this.§_-cv§ == this.DISMISS_ONDESTROYENEMY3)
               {
                  _loc3_;
                  _loc3_;
                  this.§_-wn§(3);
                  _loc3_;
                  _loc3_;
               }
            }
            this.§_-rm§();
            _loc3_;
         }
         this.§_-fP§ = false;
      }
      
      public function handleClickedSkip() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-w4§ = true;
      }
      
      public function displayTutorialItem(param1:§_-Wh§) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(!this.§_-w4§)
         {
            if(param1 == null)
            {
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               SafeGlobal.§_-zK§.§_-oC§();
               SafeGlobal.GAME.gameOver();
               _loc5_;
            }
            else
            {
               _loc4_;
               if(param1.optional == true)
               {
                  if(param1.dismiss_type == this.DISMISS_ONDESTROYENEMY2)
                  {
                     _loc4_;
                     _loc4_;
                     _loc5_;
                     _loc5_;
                     if(this.§_-GU§() != true)
                     {
                        this.finishDismissTutorialItem();
                        _loc4_;
                        return;
                     }
                  }
               }
               _loc4_;
               _loc4_;
               _loc4_;
               this.§_-gq§++;
               SafeGlobal.§_-zK§.§_-Qw§(this.§_-gq§);
               _loc4_;
               _loc4_;
               this.§_-fA§ = param1;
               _loc4_;
               this.§_-cv§ = param1.dismiss_type;
               this.§_-FJ§ = new TutorialItemDisplay(param1,this);
               _loc4_;
               _loc5_;
               if(param1.id == this.§_-qm§)
               {
                  camera.addTarget(units[currentUnit],-1,"");
                  this.§_-rt§();
               }
               if(param1.id == this.§_-6L§)
               {
                  this.§_-j8§();
                  _loc5_;
               }
               _loc5_;
               _loc5_;
               _loc5_;
               if(!this.§_-qu§ && param1.dismiss_type == this.DISMISS_ONDESTROYENEMY1)
               {
                  _loc5_;
                  _loc5_;
                  this.§_-rm§();
                  _loc4_;
                  _loc4_;
                  this.§_-mJ§();
                  _loc5_;
               }
               _loc4_;
               if(param1.dismiss_type == this.§_-1A§)
               {
                  this.§_-rm§();
               }
               if(param1.dismiss_type == this.§_-mQ§)
               {
                  this.§_-rm§();
               }
               if(param1.dismiss_type == this.§_-AK§)
               {
                  _loc5_;
                  _loc5_;
                  this.§_-gp§();
               }
               _loc5_;
               _loc5_;
               _loc4_;
               if(param1.dismiss_type == this.§_-D-§)
               {
                  this.§_-wn§(2);
                  camera.addTarget(units[units.length - 1],-1,"");
                  _loc4_;
               }
               if(param1.dismiss_type == this.DISMISS_ONDESTROYENEMY2)
               {
                  this.§_-rm§();
               }
               _loc5_;
               _loc5_;
               if(param1.dismiss_type == this.DISMISS_ONDESTROYENEMY3)
               {
                  this.§_-wn§(3);
                  _loc4_;
                  _loc4_;
                  this.§_-rm§();
               }
               _loc5_;
               _loc5_;
               if(param1.dismiss_type == this.§_-Gq§)
               {
                  this.§_-rm§();
                  _loc4_;
                  _loc4_;
               }
               if(param1.id == this.HELP_END1)
               {
                  camera.addTarget(units[currentUnit],-1,"");
                  _loc5_;
                  this.§_-9C§();
               }
               if(param1.id == this.HELP_END2)
               {
                  _loc5_;
                  _loc5_;
                  SafeGlobal.TIMELINE.hideTutorialSkipButton();
               }
               SafeGlobal.TIMELINE.addTutorialItemDisplay(this.§_-FJ§);
            }
         }
      }
      
      private function §_-9C§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            if(units[_loc1_].team == 0)
            {
               _loc2_;
               _loc2_;
               units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_VICTORY]);
               _loc3_;
            }
            _loc1_++;
            _loc2_;
         }
      }
      
      private function §_-rt§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-26§ = new §_-zq§();
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-26§.x = 380;
         _loc2_;
         this.§_-26§.y = 480;
         _loc1_;
         screen.addChild(this.§_-26§);
      }
      
      private function §_-j8§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-26§.play();
      }
      
      private function §_-Os§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-DU§ = new Tween(this.§_-26§,"alpha",Strong.easeOut,1,0,1,true);
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-DU§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-8y§,false,0,true);
         _loc2_;
         this.§_-DU§.start();
      }
      
      private function §_-8y§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-DU§.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-8y§);
         _loc2_;
         _loc2_;
         this.§_-DU§ = null;
         _loc2_;
         _loc2_;
         screen.removeChild(this.§_-26§);
         _loc2_;
         _loc2_;
         this.§_-26§ = null;
      }
      
      private function §_-Z8§(param1:int, param2:int) : void
      {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Point = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         _loc12_;
         _loc11_;
         _loc12_;
         _loc11_;
         if(param1 == 0 && this.§_-YI§ == false || param1 == 1 && this.§_-Ej§ == false)
         {
            _loc11_;
            _loc3_ = units[param2].locationPlanet;
            _loc4_ = units[param2].locationShape;
            _loc5_ = units[param2].locationCurve;
            _loc12_;
            _loc12_;
            _loc6_ = 1;
            _loc7_ = 0;
            while(true)
            {
               _loc11_;
               _loc11_;
               if(_loc6_ >= 40)
               {
                  break;
               }
               _loc11_;
               _loc7_ = planets[_loc3_].RandomAngleOnCurve(_loc4_,_loc5_);
               _loc8_ = planets[_loc3_].shapes[_loc4_].curves[_loc5_].curvePos(_loc7_);
               _loc12_;
               _loc12_;
               _loc9_ = _loc8_.x - units[param2].x;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc10_ = _loc8_.y - units[param2].y;
               _loc11_;
               _loc6_ = Math.sqrt(_loc9_ * _loc9_) + _loc10_ * _loc10_;
            }
            _loc7_ = §_-yl§(§_-2T§(_loc7_));
            _loc11_;
            _loc11_;
            if(param1 == 0)
            {
               this.§_-uQ§ = false;
               _loc11_;
               _loc11_;
               _loc12_;
               _loc5_ = units[param2].locationCurve;
               _loc12_;
               _loc12_;
            }
            else
            {
               this.§_-n3§ = false;
            }
            if(§_-Hf§.numChildren > 0)
            {
               _loc12_;
               _loc11_;
               _loc11_;
               _loc12_;
               if(!(_loc3_ == powerUps[0].locationPlanet) || !(_loc4_ == powerUps[0].locationShape))
               {
                  this.§_-V1§();
                  addPowerUp(param1,1,_loc3_,_loc4_,_loc5_,_loc7_);
                  this.§_-Ob§();
               }
               else
               {
                  this.§_-Ob§();
               }
            }
            else
            {
               addPowerUp(param1,1,_loc3_,_loc4_,_loc5_,_loc7_);
               _loc12_;
               this.§_-Ob§();
            }
         }
      }
      
      private function §_-mJ§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-Re§();
         _loc2_;
         _loc2_;
         this.§_-WA§ = new Array();
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            if(units[_loc1_].team == 1)
            {
               if(units[_loc1_].health > 0)
               {
                  _loc3_;
                  _loc3_;
                  this.§_-WA§.push(new §_-3b§());
                  _loc3_;
                  _loc2_;
                  _loc2_;
                  _loc3_;
                  _loc3_;
                  this.§_-WA§[this.§_-WA§.length - 1].x = units[_loc1_].iX;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc3_;
                  this.§_-WA§[this.§_-WA§.length - 1].y = units[_loc1_].iY;
                  _loc3_;
                  _loc2_;
                  _loc3_;
                  _loc3_;
                  this.§_-WA§[this.§_-WA§.length - 1].rotation = units[_loc1_].rotation;
                  _loc3_;
                  _loc3_;
                  this.§_-WA§[this.§_-WA§.length - 1].visible = true;
                  screen.addChild(this.§_-WA§[this.§_-WA§.length - 1]);
               }
            }
            _loc1_++;
            _loc3_;
            _loc3_;
         }
      }
      
      private function §_-Re§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.§_-WA§ != null)
         {
            _loc3_;
            _loc3_;
            if(this.§_-WA§.length > 0)
            {
               _loc3_;
               _loc1_ = 0;
               while(_loc1_ < this.§_-WA§.length)
               {
                  _loc2_;
                  _loc3_;
                  _loc3_;
                  if(this.§_-WA§[_loc1_] != null)
                  {
                     _loc3_;
                     screen.removeChild(this.§_-WA§[_loc1_]);
                     _loc3_;
                     _loc2_;
                     _loc3_;
                     _loc3_;
                     this.§_-WA§[_loc1_] = null;
                     _loc3_;
                  }
                  _loc1_++;
                  _loc3_;
                  _loc3_;
               }
               _loc3_;
               _loc3_;
            }
            this.§_-WA§.length = 0;
         }
      }
      
      public function §_-Ob§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Re§();
         _loc3_;
         this.§_-WA§ = new Array();
         var _loc1_:* = 0;
         while(_loc1_ < powerUps.length)
         {
            _loc3_;
            _loc3_;
            this.§_-WA§.push(new §_-3b§());
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            this.§_-WA§[_loc1_].x = powerUps[_loc1_].iX;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-WA§[_loc1_].y = powerUps[_loc1_].iY;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc2_;
            _loc2_;
            this.§_-WA§[_loc1_].rotation = powerUps[_loc1_].rotation;
            _loc2_;
            this.§_-WA§[_loc1_].visible = true;
            _loc2_;
            _loc2_;
            screen.addChild(this.§_-WA§[_loc1_]);
            _loc1_++;
         }
      }
      
      private function §_-gp§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-Re§();
         this.wep_arrow = new §_-3b§();
         _loc1_;
         _loc1_;
         _loc1_;
         this.wep_arrow.x = 33;
         _loc2_;
         _loc2_;
         _loc2_;
         this.wep_arrow.y = 30;
         _loc1_;
         _loc1_;
         this.wep_arrow.rotation = 0;
         _loc1_;
         _loc1_;
         this.wep_arrow.visible = true;
         _loc1_;
         §_-oN§.addChild(this.wep_arrow);
      }
      
      private function §_-WR§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         §_-oN§.removeChild(this.wep_arrow);
         _loc2_;
         _loc2_;
         this.wep_arrow = null;
      }
      
      override public function gameOver() : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         _loc5_;
         _loc5_;
         SafeGlobal.game_over_data = new GameOverData();
         _loc5_;
         _loc5_;
         SafeGlobal.game_over_data.§_-sA§ = screen;
         _loc5_;
         SafeGlobal.game_over_data.game_radius = SafeGlobal.§_-p§(Global.tutorial_map);
         _loc4_;
         _loc4_;
         if(this.wep_arrow != null)
         {
            this.wep_arrow.visible = false;
         }
         _loc5_;
         _loc5_;
         if(this.§_-ck§ != null)
         {
            _loc4_;
            _loc4_;
            this.§_-ck§.visible = false;
         }
         _loc4_;
         _loc4_;
         if(this.§_-Sw§ != null)
         {
            _loc5_;
            this.§_-Sw§.visible = false;
         }
         _loc4_;
         if(this.§_-Px§ != null)
         {
            this.§_-Px§.visible = false;
         }
         _loc5_;
         _loc5_;
         if(this.§_-HB§ != null)
         {
            this.§_-HB§.visible = false;
            _loc4_;
            _loc4_;
         }
         _loc5_;
         if(this.§_-26§ != null)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            this.§_-26§.visible = false;
            _loc5_;
            _loc5_;
            this.§_-26§.stop();
            _loc4_;
            _loc4_;
         }
         _loc5_;
         if(this.§_-WA§ != null)
         {
            if(this.§_-WA§.length > 0)
            {
               _loc2_ = 0;
               while(true)
               {
                  _loc5_;
                  if(_loc2_ >= this.§_-WA§.length)
                  {
                     break;
                  }
                  this.§_-WA§[_loc2_].visible = false;
                  _loc4_;
                  _loc2_++;
                  _loc5_;
                  _loc5_;
               }
            }
         }
         if(powerUps != null)
         {
            _loc5_;
            _loc3_ = 0;
            while(true)
            {
               _loc4_;
               if(_loc3_ >= powerUps.length)
               {
                  break;
               }
               powerUps[_loc3_].visible = false;
               _loc3_++;
            }
            _loc4_;
         }
         §_-Wb§(false);
         §_-m8§();
         §_-0T§();
         var _loc1_:* = 0;
         _loc4_;
         while(_loc1_ < units.length)
         {
            units[_loc1_].hideMe();
            _loc1_++;
            _loc5_;
         }
         _loc5_;
         _loc5_;
         §_-Yv§.visible = false;
         _loc5_;
         _loc5_;
         Global.lobby_client.saveHelpItemViewed(0);
         Global.lobby_display.displayTutorialEndScreen();
         destroyGame();
      }
      
      override public function displayYourTurn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         showMessage("your turn",SafeGlobal.colour_hex[teams[param1].colourID]);
         selectWeapon(0);
         showWeaponPanelButton();
         _loc3_;
         _loc3_;
         §_-oN§.tweenOnWeaponName();
         _loc2_;
         _loc2_;
         §_-VK§(units[currentUnit]);
         _loc3_;
         _loc2_;
         _loc3_;
         _loc2_;
         _loc3_;
         if(this.§_-fA§.dismiss_type == this.§_-1A§ || this.§_-fA§.dismiss_type == this.§_-mQ§)
         {
            this.§_-Kg§(units[currentUnit]);
            _loc2_;
         }
         else
         {
            this.§_-0-K§(units[currentUnit]);
         }
      }
      
      public function §_-Kg§(param1:Unit) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc2_;
         _loc2_;
         this.§_-Px§.x = param1.iX;
         _loc2_;
         this.§_-Px§.y = param1.iY;
         _loc2_;
         this.§_-Px§.rotation = param1.rotation;
         this.§_-Px§.visible = true;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-HB§.x = param1.iX;
         _loc3_;
         _loc3_;
         this.§_-HB§.y = param1.iY;
         _loc3_;
         _loc3_;
         _loc2_;
         this.§_-HB§.rotation = param1.rotation;
         _loc3_;
         _loc3_;
         this.§_-HB§.visible = true;
         screen.setChildIndex(this.§_-HB§,screen.numChildren - 1);
         _loc2_;
         _loc2_;
         screen.setChildIndex(this.§_-Px§,screen.numChildren - 1);
      }
      
      public function §_-MU§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-Px§.visible = false;
         _loc2_;
         this.§_-HB§.visible = false;
      }
      
      public function §_-0-K§(param1:Unit) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-ck§.x = param1.iX;
         _loc3_;
         _loc2_;
         _loc2_;
         this.§_-ck§.y = param1.iY;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.§_-ck§.rotation = param1.rotation;
         this.§_-ck§.visible = true;
         _loc2_;
         this.§_-Sw§.x = param1.iX;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-Sw§.y = param1.iY;
         _loc2_;
         this.§_-Sw§.rotation = param1.rotation;
         this.§_-Sw§.visible = true;
         screen.setChildIndex(this.§_-Sw§,screen.numChildren - 1);
         _loc3_;
         screen.setChildIndex(this.§_-ck§,screen.numChildren - 1);
      }
      
      public function §_-xw§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-ck§.visible = false;
         _loc2_;
         this.§_-Sw§.visible = false;
      }
      
      public function §_-4L§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:§_-yR§ = null;
         _loc3_;
         _loc3_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,§_-XE§);
         _loc3_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,§_-K2§);
         _loc3_;
         _loc3_;
         turnState = "retreat";
         _loc2_;
         §_-Tw§();
         _loc2_;
         _loc2_;
         §_-tg§();
         _loc1_ = new §_-yR§(SafeGlobal.SIMEVENT_ENDTURN,currentTime,null);
         _loc3_;
         _loc3_;
         simManager.addObject(_loc1_);
         _loc2_;
         _loc2_;
         §_-v9§ = currentTime;
         _loc2_;
         _loc2_;
         §_-Yi§.startRetreat(currentTime,0);
         _loc2_;
         _loc2_;
         simManager.startRetreat(currentTime,0);
         _loc3_;
         §_-XG§ = currentTime;
      }
      
      public function §_-sl§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(this.§_-fA§ != null)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.§_-fA§.dismiss_type == this.DISMISS_ONDESTROYENEMY1)
            {
               this.§_-Re§();
               _loc2_;
               _loc2_;
            }
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            if(this.§_-fA§.dismiss_type == this.DISMISS_ONDESTROYENEMY2)
            {
               this.§_-Re§();
               _loc2_;
            }
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            if(this.§_-fA§.dismiss_type == this.DISMISS_ONDESTROYENEMY3)
            {
               this.§_-Re§();
            }
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.§_-fA§.dismiss_type == this.§_-AK§)
            {
               _loc1_;
               _loc1_;
               this.§_-WR§();
               this.§_-0-K§(units[currentUnit]);
            }
            _loc1_;
            _loc1_;
            _loc2_;
            if(this.§_-fA§.dismiss_type == this.§_-1A§)
            {
               this.§_-Re§();
               this.§_-MU§();
            }
            if(this.§_-fA§.dismiss_type == this.§_-mQ§)
            {
               this.§_-Re§();
               this.§_-MU§();
               _loc2_;
            }
         }
         this.§_-FJ§.tweenOff();
      }
      
      public function finishDismissTutorialItem() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(this.§_-fA§ != null)
         {
            _loc2_;
            _loc2_;
            if(this.§_-fA§.id == this.§_-6L§)
            {
               _loc1_;
               this.§_-Os§();
               _loc1_;
            }
         }
         this.§_-fA§ = null;
         _loc1_;
         _loc1_;
         this.§_-FJ§ = null;
         this.§_-cv§ = -1;
         SafeGlobal.TIMELINE.removeTutorialItemDisplay();
         this.displayTutorialItem(this.§_-DP§.§_-po§());
      }
      
      private function §_-wn§(param1:int, param2:Boolean = true) : void
      {
         var _loc16_:* = true;
         var _loc17_:* = false;
         var _loc3_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = undefined;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = false;
         var _loc13_:§_-0Y§ = null;
         var _loc14_:ColorTransform = null;
         var _loc15_:* = 0;
         _loc17_;
         _loc17_;
         _loc17_;
         _loc3_ = 0;
         var _loc4_:* = 0;
         while(true)
         {
            _loc17_;
            if(_loc4_ >= units.length)
            {
               break;
            }
            _loc17_;
            _loc17_;
            if((units[_loc4_] as Unit).team == 1)
            {
               _loc17_;
               _loc17_;
               _loc3_ = _loc3_ + (units[_loc4_] as Unit).health;
               _loc17_;
            }
            _loc4_++;
         }
         _loc16_;
         if(_loc3_ <= 0)
         {
            _loc5_ = 0;
            _loc17_;
            _loc17_;
            _loc6_ = 0;
            _loc16_;
            _loc16_;
            _loc16_;
            _loc16_;
            if(param1 == 1)
            {
               _loc5_ = 3;
               _loc16_;
               _loc16_;
               _loc6_ = 135;
               _loc17_;
            }
            else
            {
               _loc16_;
               if(param1 == 2)
               {
                  _loc5_ = 3;
                  _loc17_;
                  _loc6_ = 0;
               }
               else
               {
                  _loc17_;
                  if(param1 == 3)
                  {
                     _loc5_ = 2;
                     _loc6_ = 270;
                  }
               }
            }
            _loc17_;
            _loc17_;
            _loc7_ = 1;
            _loc16_;
            _loc16_;
            _loc8_ = 0;
            _loc17_;
            _loc3_ = 5;
            _loc16_;
            _loc9_ = 1;
            _loc16_;
            _loc16_;
            _loc16_;
            _loc10_ = 7;
            _loc11_ = 0;
            _loc17_;
            _loc17_;
            _loc12_ = false;
            _loc16_;
            _loc16_;
            if(teams.length == 1)
            {
               teams.push(new Team(_loc7_));
               statuses.push(new UIPlayerStatus(_loc7_));
               _loc16_;
               _loc16_;
               statusBar.addChild(statuses[statuses.length - 1]);
               _loc16_;
               _loc16_;
            }
            teams[_loc7_].teamName = "Gravitee";
            _loc17_;
            _loc17_;
            teams[_loc7_].colourID = _loc10_;
            teams[_loc7_].helmetID = _loc11_;
            _loc16_;
            teams[_loc7_].idle1ID = 0;
            teams[_loc7_].idle2ID = 1;
            teams[_loc7_].idle3ID = 2;
            teams[_loc7_].idle4ID = 3;
            teams[_loc7_].victoryID = 0;
            _loc13_ = new §_-0Y§(_loc5_,_loc6_,0,0);
            _loc16_;
            _loc16_;
            units.push(new Unit(_loc13_.planetID,_loc13_.angle,_loc7_,_loc8_,_loc3_,_loc9_,_loc10_,_loc11_));
            _loc16_;
            §_-N7§.push(new §_-n6§(1));
            _loc14_ = new ColorTransform();
            _loc14_.color = SafeGlobal.colour_hex[_loc10_];
            §_-N7§[§_-N7§.length - 1].colour.transform.colorTransform = _loc14_;
            §_-wP§.addChild(§_-N7§[§_-N7§.length - 1]);
            _loc16_;
            §_-N7§[§_-N7§.length - 1].visible = false;
            _loc8_++;
            units[units.length - 1].healthDisplay.num.textColor = SafeGlobal.colour_hex[_loc10_];
            _loc17_;
            units[units.length - 1].nameDisplay.word.textColor = SafeGlobal.colour_hex[_loc10_];
            _loc17_;
            _loc17_;
            units[units.length - 1].nameDisplay.word.text = "Enemy";
            _loc16_;
            _loc16_;
            units[units.length - 1].nameDisplay.wordshadow.text = "Enemy";
            _loc17_;
            units[units.length - 1].facing = 1;
            units[units.length - 1].scaleX = units[units.length - 1].facing * -1;
            _loc17_;
            units[units.length - 1].healthDisplay.scaleX = units[units.length - 1].scaleX;
            _loc16_;
            units[units.length - 1].nameDisplay.scaleX = units[units.length - 1].scaleX;
            §_-mh§.addChild(units[units.length - 1]);
            updateTeamHealths();
            _loc16_;
            _loc16_;
            _loc15_ = 0;
            while(_loc15_ < units.length)
            {
               if(units[_loc15_].team == _loc7_)
               {
                  units[_loc15_].costumeID = §_-e0§.length - 1;
                  units[_loc15_].costume = §_-e0§[units[_loc15_].costumeID];
                  _loc17_;
                  units[_loc15_].newAnimState([SafeGlobal.ANIM_UNIT_TELEPORTIN,SafeGlobal.ANIM_UNIT_BOB]);
               }
               _loc15_++;
               _loc16_;
            }
         }
         if(param2)
         {
            this.§_-mJ§();
         }
      }
      
      override public function onCollectAmmo() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(this.§_-FJ§ != null)
         {
            _loc1_;
            if(this.§_-cv§ == this.§_-1A§)
            {
               _loc2_;
               _loc2_;
               this.§_-Ej§ = true;
               _loc1_;
               this.§_-sl§();
            }
         }
      }
      
      override public function onCollectHealth() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(this.§_-FJ§ != null)
         {
            _loc2_;
            if(this.§_-cv§ == this.§_-mQ§)
            {
               _loc2_;
               this.§_-YI§ = true;
               _loc1_;
               this.§_-sl§();
            }
         }
      }
      
      override public function onDestroyAmmo() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.§_-FJ§ != null)
         {
            _loc2_;
            if(this.§_-cv§ == this.§_-1A§)
            {
               _loc2_;
               this.§_-n3§ = true;
            }
         }
      }
      
      override public function onDestroyHealth() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.§_-FJ§ != null)
         {
            _loc1_;
            _loc1_;
            if(this.§_-cv§ == this.§_-mQ§)
            {
               _loc2_;
               _loc2_;
               this.§_-uQ§ = true;
            }
         }
      }
      
      override public function onShootClusterBazooka() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.§_-FJ§ != null)
         {
            _loc2_;
            _loc2_;
            this.§_-yk§ = true;
         }
      }
      
      override public function onSelectClusterBazooka() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(this.§_-FJ§ != null)
         {
            _loc2_;
            if(this.§_-cv§ == this.§_-AK§)
            {
               _loc2_;
               this.§_-l9§ = true;
               _loc1_;
               _loc1_;
               this.§_-sl§();
            }
         }
      }
      
      override public function onCancelShot() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(this.§_-FJ§ != null)
         {
            _loc1_;
            _loc1_;
            if(this.§_-cv§ == this.§_-Gq§)
            {
               _loc2_;
               this.§_-sl§();
            }
         }
      }
      
      public function §_-dZ§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.§_-FJ§ != null)
         {
            _loc2_;
            if(this.§_-cv§ == this.DISMISS_ONDESTROYENEMY1)
            {
               this.§_-sl§();
            }
            _loc2_;
            if(this.§_-cv§ == this.DISMISS_ONDESTROYENEMY2)
            {
               _loc2_;
               this.§_-sl§();
               _loc1_;
            }
            _loc1_;
            if(this.§_-cv§ == this.DISMISS_ONDESTROYENEMY3)
            {
               this.§_-sl§();
            }
            _loc1_;
            if(this.§_-cv§ == this.§_-D-§)
            {
               _loc2_;
               _loc1_;
               _loc1_;
               _loc1_;
               _loc1_;
               if(this.§_-yk§ == true)
               {
                  this.§_-sl§();
               }
            }
            if(this.§_-cv§ == this.§_-AK§)
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               if(this.§_-l9§ == false)
               {
                  this.§_-rm§();
               }
            }
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            if(this.§_-cv§ == this.§_-1A§)
            {
               _loc1_;
               _loc2_;
               _loc2_;
               if(this.§_-n3§ == true)
               {
                  _loc2_;
                  _loc2_;
                  this.§_-rm§();
               }
            }
            if(this.§_-cv§ == this.§_-mQ§)
            {
               if(this.§_-uQ§ == true)
               {
                  this.§_-rm§();
               }
            }
         }
      }
      
      override public function showWaiting() : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(true)
         {
            _loc4_;
            _loc4_;
            if(_loc2_ >= units.length)
            {
               break;
            }
            if(units[_loc2_].team == 1)
            {
               _loc3_;
               _loc3_;
               _loc1_ = _loc1_ + units[_loc2_].health;
               _loc4_;
            }
            _loc2_++;
            _loc4_;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.§_-cv§ == this.§_-D-§)
         {
            _loc4_;
            if(this.§_-yk§)
            {
               this.§_-sl§();
            }
            else
            {
               _loc4_;
               _loc4_;
               if(_loc1_ <= 0)
               {
                  _loc3_;
                  _loc3_;
                  this.§_-wn§(2);
               }
               this.§_-rm§();
               _loc4_;
            }
         }
         if(this.§_-cv§ == this.§_-AK§)
         {
            if(!this.§_-l9§)
            {
               this.§_-rm§();
            }
         }
         if(this.§_-cv§ == this.DISMISS_ONDESTROYENEMY1)
         {
            _loc4_;
            _loc3_;
            _loc3_;
            if(_loc1_ <= 0)
            {
               this.§_-dZ§();
               _loc3_;
            }
            else
            {
               this.§_-rm§();
            }
         }
         if(this.§_-cv§ == this.DISMISS_ONDESTROYENEMY2)
         {
            if(_loc1_ <= 0)
            {
               this.§_-dZ§();
               _loc4_;
               _loc4_;
            }
            else
            {
               this.§_-rm§();
               _loc3_;
            }
         }
         _loc4_;
         if(this.§_-cv§ == this.DISMISS_ONDESTROYENEMY3)
         {
            _loc3_;
            _loc3_;
            if(_loc1_ <= 0)
            {
               _loc3_;
               this.§_-dZ§();
            }
            else
            {
               this.§_-rm§();
               _loc3_;
               _loc3_;
            }
         }
         _loc4_;
         if(this.§_-cv§ == this.§_-1A§)
         {
            this.§_-rm§();
            _loc3_;
         }
         if(this.§_-cv§ == this.§_-mQ§)
         {
            _loc4_;
            this.§_-rm§();
         }
         if(this.§_-cv§ == this.§_-Gq§)
         {
            this.§_-rm§();
         }
      }
      
      override public function turnOverNoShot() : *
      {
      }
      
      override public function sendFireProjectile(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         removeStock(param2);
         §_-LC§ = true;
         if(param2 == SafeGlobal.WEAPONINFO_CLUSTER[0])
         {
            _loc6_;
            this.onShootClusterBazooka();
         }
         this.§_-xw§();
         _loc6_;
         _loc6_;
         this.§_-MU§();
         this.§_-Re§();
      }
      
      override public function sendStartWalk(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         this.§_-xw§();
         _loc4_;
         this.§_-MU§();
      }
      
      override public function sendStopWalk(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         if(this.§_-fA§ != null)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(this.§_-fA§.dismiss_type == this.§_-1A§)
            {
               _loc2_;
               _loc3_;
               if(this.§_-Ej§ == false)
               {
                  this.§_-Kg§(units[currentUnit]);
                  _loc3_;
               }
            }
            else if(this.§_-fA§.dismiss_type == this.§_-mQ§)
            {
               if(this.§_-YI§ == false)
               {
                  this.§_-Kg§(units[currentUnit]);
               }
            }
            else
            {
               this.§_-0-K§(units[currentUnit]);
            }
            
         }
         else
         {
            this.§_-0-K§(units[currentUnit]);
         }
      }
      
      public function §_-SJ§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(!§_-Y0§)
         {
            _loc2_;
            _loc2_;
            §_-Y0§ = true;
            _loc2_;
            addEventListener(Event.ENTER_FRAME,§_-kg§);
            stage.addEventListener(MouseEvent.MOUSE_DOWN,§_-K2§);
            stage.addEventListener(KeyboardEvent.KEY_DOWN,§_-ur§);
            _loc2_;
            stage.addEventListener(KeyboardEvent.KEY_UP,§_-UQ§);
         }
         camera.emptyList();
         currentUnit = 0;
         _loc2_;
         camera.addTarget(units[0],-1,"unit startTurn");
         §_-a9§.x = units[0].iX;
         §_-a9§.y = units[0].iY;
         §_-a9§.active = true;
      }
      
      public function §_-V1§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         §_-Hf§.removeChild(powerUps[0]);
         _loc2_;
         powerUps[0].destroyMe();
         _loc2_;
         powerUps.length = 0;
      }
      
      public function §_-rm§() : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc6_:* = undefined;
         var _loc1_:int = §_-7w§();
         var _loc5_:* = "";
         _loc8_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         if(_loc1_ == 0 || _loc1_ == 1 || _loc1_ == 2 || _loc1_ == 3)
         {
            _loc7_;
            _loc6_ = §_-cJ§();
            §_-lU§ = _loc1_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            if(!(this.§_-fA§ == null) && this.§_-fA§.dismiss_type == this.DISMISS_ONDESTROYENEMY1)
            {
               this.§_-mJ§();
            }
            else
            {
               _loc7_;
               _loc8_;
               _loc8_;
               if(!(this.§_-fA§ == null) && this.§_-fA§.dismiss_type == this.DISMISS_ONDESTROYENEMY2)
               {
                  this.§_-mJ§();
               }
               else
               {
                  _loc8_;
                  _loc7_;
                  if(!(this.§_-fA§ == null) && this.§_-fA§.dismiss_type == this.DISMISS_ONDESTROYENEMY3)
                  {
                     this.§_-mJ§();
                  }
                  else
                  {
                     _loc7_;
                     _loc7_;
                     _loc7_;
                     if(!(this.§_-fA§ == null) && this.§_-fA§.dismiss_type == this.§_-D-§)
                     {
                        this.§_-mJ§();
                     }
                     else
                     {
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        _loc8_;
                        _loc8_;
                        if(!(this.§_-fA§ == null) && this.§_-fA§.dismiss_type == this.§_-1A§)
                        {
                           this.§_-Z8§(1,§_-lU§);
                        }
                        else
                        {
                           _loc7_;
                           if(!(this.§_-fA§ == null) && this.§_-fA§.dismiss_type == this.§_-mQ§)
                           {
                              this.§_-Z8§(0,§_-lU§);
                           }
                        }
                     }
                  }
               }
            }
            startTurn(0,_loc1_,"",_loc6_);
         }
         else
         {
            §_-PP§();
         }
         this.§_-qu§ = true;
      }
      
      private function §_-GU§() : Boolean
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(true)
         {
            _loc4_;
            _loc4_;
            if(_loc2_ >= units.length)
            {
               break;
            }
            if(units[_loc2_].team == 1)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc1_ = _loc1_ + units[_loc2_].health;
               _loc3_;
               _loc3_;
            }
            _loc2_++;
            _loc4_;
            _loc4_;
         }
         _loc3_;
         if(_loc1_ <= 0)
         {
            _loc3_;
            _loc3_;
            return false;
         }
         return true;
      }
   }
}
