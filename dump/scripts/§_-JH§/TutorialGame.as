package §_-JH§
{
   import §_-Ff§.TutorialData;
   import §_-Ff§.§_-H8§;
   import com.funkypear.ui.TutorialItemDisplay;
   import fl.transitions.Tween;
   import flash.events.Event;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   import flash.geom.Point;
   import §_-Ff§.GameOverData;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.events.KeyboardEvent;
   
   public class TutorialGame extends OfflineGame
   {
      
      public function TutorialGame(param1:String, param2:String, param3:String, param4:String)
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         _loc8_;
         SafeGlobal.§_-vX§ = this;
         if(!§_-xt§)
         {
            levelData = Global.tutorial_map;
            §_-o5§ = TimelineGlobal.player_name;
            _loc8_;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + TimelineGlobal.player_uid;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.favourite_colour.getInt();
            §_-o5§ = §_-o5§ + ",";
            _loc8_;
            §_-o5§ = §_-o5§ + Global.favourite_helmet.getInt();
            §_-o5§ = §_-o5§ + ",";
            _loc8_;
            §_-o5§ = §_-o5§ + Global.anim_idle[0].getInt();
            _loc8_;
            §_-o5§ = §_-o5§ + ",";
            _loc7_;
            §_-o5§ = §_-o5§ + Global.anim_idle[1].getInt();
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.anim_idle[2].getInt();
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.anim_idle[3].getInt();
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.anim_victory.getInt();
            §_-o5§ = §_-o5§ + ",1";
            _loc7_;
            §_-o5§ = §_-o5§ + "|";
            §_-o5§ = §_-o5§ + SafeGlobal.custom_weapon_string[0];
            §_-o5§ = §_-o5§ + "+";
            _loc7_;
            §_-o5§ = §_-o5§ + SafeGlobal.custom_weapon_string[1];
            §_-o5§ = §_-o5§ + "+";
            _loc8_;
            _loc8_;
            §_-o5§ = §_-o5§ + SafeGlobal.custom_weapon_string[2];
            §_-o5§ = §_-o5§ + "|";
            _loc8_;
            _loc5_ = false;
            _loc7_;
            _loc7_;
            _loc6_ = 0;
            while(true)
            {
               _loc8_;
               _loc8_;
               if(_loc6_ >= 4)
               {
                  break;
               }
               _loc8_;
               _loc8_;
               if(_loc5_)
               {
                  §_-o5§ = §_-o5§ + "|";
               }
               else
               {
                  _loc5_ = true;
               }
               §_-o5§ = §_-o5§ + "1";
               _loc7_;
               §_-o5§ = §_-o5§ + ",";
               _loc7_;
               _loc7_;
               §_-o5§ = §_-o5§ + "1";
               §_-o5§ = §_-o5§ + ",";
               _loc8_;
               _loc8_;
               §_-o5§ = §_-o5§ + Global.unitDetails[_loc6_].name;
               §_-o5§ = §_-o5§ + ",";
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               if(_loc6_ == 0)
               {
                  _loc8_;
                  §_-o5§ = §_-o5§ + "1";
                  _loc7_;
               }
               else
               {
                  §_-o5§ = §_-o5§ + "-1";
               }
               _loc6_++;
            }
            modData = "";
            stockData = "";
            _loc8_;
            _loc8_;
            _loc6_ = 0;
            _loc7_;
            while(_loc6_ < SafeGlobal.weaponsStock.length)
            {
               stockData = stockData + String(SafeGlobal.weaponsStock[_loc6_]);
               _loc7_;
               _loc7_;
               _loc6_++;
            }
            _loc8_;
            SafeGlobal.gameStock = stockData;
            _loc8_;
            §_-xt§ = true;
            SafeGlobal.§_-8m§.§_-Tg§();
            _loc8_;
         }
         SafeGlobal.orderDisplayFinished = true;
         _loc7_;
         _loc7_;
         SafeGlobal.orderSetupReady = true;
         super(levelData,§_-o5§,modData,stockData);
         _loc7_;
         §_-Jz§.turnTime = 3600000;
         _loc8_;
         this.§_-Ov§ = new §_-qB§();
         _loc7_;
         this.§_-aK§ = new §_-Oa§();
         screen.addChild(this.§_-aK§);
         _loc7_;
         screen.addChild(this.§_-Ov§);
         this.§_-cf§();
         _loc7_;
         _loc7_;
         this.§_-mJ§ = new §_-0--§();
         this.§_-Ci§ = new §_-4s§();
         _loc7_;
         _loc7_;
         screen.addChild(this.§_-Ci§);
         _loc7_;
         _loc7_;
         screen.addChild(this.§_-mJ§);
         this.§_-3t§();
      }
      
      private var §_-II§:Boolean = true;
      
      private var §_-kT§:Boolean = false;
      
      private var §_-fl§:Boolean = false;
      
      private var §_-Vy§:int = 0;
      
      private var §_-hW§:int = 0;
      
      private var §_-rv§:int = 0;
      
      private var §_-dc§:int = 0;
      
      private var §_-e1§:Array;
      
      private var wep_arrow:§_-Vc§;
      
      private var §_-Ov§:§_-qB§;
      
      private var §_-aK§:§_-Oa§;
      
      private var §_-mJ§:§_-0--§;
      
      private var §_-Ci§:§_-4s§;
      
      private var §_-MQ§:§_-Pl§;
      
      private var §_-wc§:Boolean = false;
      
      private var §_-Tt§:TutorialData;
      
      private var §_-m5§:§_-H8§;
      
      private var §_-c9§:TutorialItemDisplay;
      
      private var §_-hC§:int;
      
      private var §_-VA§:int = 0;
      
      private var §_-sf§:int = 1;
      
      private var HELP_ENEMY1:int = 2;
      
      private var §_-BF§:int = 3;
      
      private var §_-Jd§:int = 4;
      
      private var §_-Dc§:int = 5;
      
      private var §_-vh§:int = 6;
      
      private var HELP_ENEMY2:int = 7;
      
      private var §_-cj§:int = 8;
      
      private var §_-3b§:int = 9;
      
      private var §_-Z1§:int = 10;
      
      private var §_-N2§:int = 11;
      
      private var HELP_ENEMY3:int = 12;
      
      private var HELP_END1:int = 13;
      
      private var HELP_END2:int = 14;
      
      private var §_-pV§:int = 0;
      
      private var DISMISS_ONDESTROYENEMY1:int = 1;
      
      private var DISMISS_ONDESTROYENEMY2:int = 2;
      
      private var DISMISS_ONDESTROYENEMY3:int = 3;
      
      private var §_-iC§:int = 4;
      
      private var §_-CU§:int = 5;
      
      private var §_-7O§:int = 6;
      
      private var §_-sO§:int = 7;
      
      private var §_-JM§:int = 8;
      
      private var §_-xa§:Boolean = false;
      
      private var §_-vm§:Boolean = false;
      
      private var §_-VF§:Boolean = false;
      
      private var §_-ht§:Boolean = false;
      
      private var §_-V7§:Boolean = false;
      
      private var §_-xO§:Boolean = false;
      
      private var §_-td§:Tween;
      
      private var §_-St§:int = 0;
      
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
         _loc8_;
         §_-h2§.push(new Costume(_loc6_,1,1,1,SafeGlobal.colour_hex[_loc5_],_loc1_));
         _loc8_;
         addEventListener(Event.ENTER_FRAME,this.§_-ye§);
      }
      
      public function §_-ye§(param1:Event) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = false;
         var _loc3_:* = 0;
         while(true)
         {
            if(_loc3_ >= §_-h2§.length)
            {
               _loc5_;
               _loc5_;
               break;
            }
            if(§_-h2§[_loc3_].processQueue.length > 0)
            {
               §_-h2§[_loc3_].processQueueItem();
               _loc5_;
               _loc2_ = true;
               _loc4_;
               _loc4_;
               break;
            }
            _loc3_++;
         }
         if(!_loc2_)
         {
            this.§_-9G§();
         }
      }
      
      public function §_-9G§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         removeEventListener(Event.ENTER_FRAME,this.§_-ye§);
         _loc2_;
         _loc2_;
         §_-OI§();
         _loc1_;
         this.§_-vg§();
      }
      
      public function §_-vg§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         §_-iu§ = new Array();
         var _loc1_:* = 0;
         while(true)
         {
            _loc2_;
            _loc2_;
            if(_loc1_ >= units.length)
            {
               break;
            }
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
            _loc2_;
            _loc2_;
            _loc1_++;
            _loc2_;
         }
         §_-Jz§.y = -100;
         _loc2_;
         _loc2_;
         statusBar.visible = false;
         _loc2_;
         _loc2_;
         _loc2_;
         SafeGlobal.TIMELINE.removeLobbyGameDisplay();
         _loc2_;
         _loc2_;
         _loc2_;
         if((this.§_-II§) && SafeGlobal.helpItemsViewed[0] == false)
         {
            _loc3_;
            _loc3_;
            this.§_-Tt§ = new TutorialData();
            this.displayTutorialItem(this.§_-Tt§.§_-EL§());
            _loc2_;
            _loc2_;
            this.§_-z2§();
            this.§_-vp§(1,false);
            SafeGlobal.TIMELINE.showTutorialSkipButton();
            _loc2_;
         }
         else
         {
            if(this.§_-c9§ != null)
            {
               _loc3_;
               _loc3_;
               _loc2_;
               _loc3_;
               _loc3_;
               if(this.§_-hC§ == this.DISMISS_ONDESTROYENEMY1)
               {
                  this.§_-vp§(1);
                  _loc2_;
                  _loc2_;
               }
               _loc2_;
               _loc2_;
               if(this.§_-hC§ == this.DISMISS_ONDESTROYENEMY2)
               {
                  this.§_-vp§(2);
               }
               if(this.§_-hC§ == this.DISMISS_ONDESTROYENEMY3)
               {
                  _loc2_;
                  _loc2_;
                  this.§_-vp§(3);
               }
            }
            this.§_-SG§();
            _loc3_;
         }
         this.§_-II§ = false;
      }
      
      public function handleClickedSkip() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-wc§ = true;
      }
      
      public function displayTutorialItem(param1:§_-H8§) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(!this.§_-wc§)
         {
            if(param1 == null)
            {
               _loc5_;
               SafeGlobal.§_-8m§.§_-ax§();
               SafeGlobal.GAME.gameOver();
            }
            else
            {
               _loc5_;
               if(param1.optional == true)
               {
                  _loc4_;
                  _loc4_;
                  if(param1.dismiss_type == this.DISMISS_ONDESTROYENEMY2)
                  {
                     _loc4_;
                     _loc5_;
                     if(this.§_-7U§() != true)
                     {
                        this.finishDismissTutorialItem();
                        return;
                     }
                  }
               }
               _loc4_;
               _loc4_;
               _loc5_;
               this.§_-St§++;
               SafeGlobal.§_-8m§.§_-FJ§(this.§_-St§);
               _loc5_;
               _loc5_;
               this.§_-m5§ = param1;
               _loc5_;
               _loc5_;
               this.§_-hC§ = param1.dismiss_type;
               _loc4_;
               _loc4_;
               this.§_-c9§ = new TutorialItemDisplay(param1,this);
               if(param1.id == this.§_-BF§)
               {
                  camera.addTarget(units[currentUnit],-1,"");
                  this.§_-hN§();
               }
               if(param1.id == this.§_-Jd§)
               {
                  this.§_-uL§();
               }
               _loc5_;
               _loc4_;
               if(!this.§_-kT§ && param1.dismiss_type == this.DISMISS_ONDESTROYENEMY1)
               {
                  _loc5_;
                  this.§_-SG§();
                  this.§_-vq§();
                  _loc4_;
                  _loc4_;
               }
               _loc5_;
               if(param1.dismiss_type == this.§_-iC§)
               {
                  this.§_-SG§();
                  _loc4_;
                  _loc4_;
               }
               if(param1.dismiss_type == this.§_-CU§)
               {
                  this.§_-SG§();
               }
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               if(param1.dismiss_type == this.§_-JM§)
               {
                  this.§_-XF§();
               }
               if(param1.dismiss_type == this.§_-sO§)
               {
                  this.§_-vp§(2);
                  _loc5_;
                  _loc5_;
                  camera.addTarget(units[units.length - 1],-1,"");
                  _loc5_;
                  _loc5_;
               }
               if(param1.dismiss_type == this.DISMISS_ONDESTROYENEMY2)
               {
                  _loc5_;
                  this.§_-SG§();
                  _loc4_;
               }
               _loc5_;
               if(param1.dismiss_type == this.DISMISS_ONDESTROYENEMY3)
               {
                  _loc4_;
                  _loc4_;
                  this.§_-vp§(3);
                  this.§_-SG§();
               }
               if(param1.dismiss_type == this.§_-7O§)
               {
                  this.§_-SG§();
                  _loc5_;
                  _loc5_;
               }
               if(param1.id == this.HELP_END1)
               {
                  camera.addTarget(units[currentUnit],-1,"");
                  this.§_-z-§();
                  _loc5_;
                  _loc5_;
               }
               if(param1.id == this.HELP_END2)
               {
                  _loc4_;
                  SafeGlobal.TIMELINE.hideTutorialSkipButton();
                  _loc5_;
               }
               SafeGlobal.TIMELINE.addTutorialItemDisplay(this.§_-c9§);
            }
         }
      }
      
      private function §_-z-§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            if(units[_loc1_].team == 0)
            {
               _loc3_;
               units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_VICTORY]);
               _loc2_;
               _loc2_;
            }
            _loc1_++;
            _loc3_;
            _loc3_;
         }
      }
      
      private function §_-hN§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-MQ§ = new §_-Pl§();
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         this.§_-MQ§.x = 380;
         _loc1_;
         _loc1_;
         this.§_-MQ§.y = 480;
         _loc1_;
         _loc1_;
         screen.addChild(this.§_-MQ§);
      }
      
      private function §_-uL§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-MQ§.play();
      }
      
      private function §_-4N§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-td§ = new Tween(this.§_-MQ§,"alpha",Strong.easeOut,1,0,1,true);
         _loc1_;
         _loc2_;
         _loc2_;
         this.§_-td§.addEventListener(TweenEvent.MOTION_FINISH,this.§class§,false,0,true);
         _loc2_;
         this.§_-td§.start();
      }
      
      private function §class§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-td§.removeEventListener(TweenEvent.MOTION_FINISH,this.§class§);
         _loc3_;
         _loc3_;
         this.§_-td§ = null;
         _loc3_;
         screen.removeChild(this.§_-MQ§);
         _loc2_;
         this.§_-MQ§ = null;
      }
      
      private function §_-Zn§(param1:int, param2:int) : void
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
         _loc12_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         _loc11_;
         if(param1 == 0 && this.§_-ht§ == false || param1 == 1 && this.§_-VF§ == false)
         {
            _loc11_;
            _loc11_;
            _loc11_;
            _loc3_ = units[param2].locationPlanet;
            _loc11_;
            _loc11_;
            _loc4_ = units[param2].locationShape;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc5_ = units[param2].locationCurve;
            _loc12_;
            _loc12_;
            _loc6_ = 1;
            _loc12_;
            _loc7_ = 0;
            while(true)
            {
               _loc12_;
               if(_loc6_ >= 40)
               {
                  break;
               }
               _loc12_;
               _loc12_;
               _loc7_ = planets[_loc3_].RandomAngleOnCurve(_loc4_,_loc5_);
               _loc8_ = planets[_loc3_].shapes[_loc4_].curves[_loc5_].curvePos(_loc7_);
               _loc12_;
               _loc12_;
               _loc12_;
               _loc9_ = _loc8_.x - units[param2].x;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc10_ = _loc8_.y - units[param2].y;
               _loc11_;
               _loc11_;
               _loc6_ = Math.sqrt(_loc9_ * _loc9_) + _loc10_ * _loc10_;
            }
            _loc11_;
            _loc11_;
            _loc7_ = §_-cl§(§_-HM§(_loc7_));
            _loc12_;
            _loc12_;
            _loc11_;
            _loc11_;
            if(param1 == 0)
            {
               _loc11_;
               this.§_-xO§ = false;
               _loc12_;
               _loc12_;
               _loc5_ = units[param2].locationCurve;
            }
            else
            {
               this.§_-V7§ = false;
               _loc12_;
               _loc12_;
            }
            if(§_-0h§.numChildren > 0)
            {
               _loc12_;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc12_;
               _loc12_;
               _loc11_;
               if(!(_loc3_ == powerUps[0].locationPlanet) || !(_loc4_ == powerUps[0].locationShape))
               {
                  this.§_-g0§();
                  _loc11_;
                  addPowerUp(param1,1,_loc3_,_loc4_,_loc5_,_loc7_);
                  _loc12_;
                  this.§_-GH§();
                  _loc12_;
                  _loc12_;
               }
               else
               {
                  this.§_-GH§();
               }
            }
            else
            {
               addPowerUp(param1,1,_loc3_,_loc4_,_loc5_,_loc7_);
               this.§_-GH§();
            }
         }
      }
      
      private function §_-vq§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-0E§();
         _loc3_;
         this.§_-e1§ = new Array();
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            if(units[_loc1_].team == 1)
            {
               if(units[_loc1_].health > 0)
               {
                  _loc3_;
                  this.§_-e1§.push(new §_-Vc§());
                  _loc2_;
                  _loc3_;
                  _loc2_;
                  this.§_-e1§[this.§_-e1§.length - 1].x = units[_loc1_].iX;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc2_;
                  _loc2_;
                  this.§_-e1§[this.§_-e1§.length - 1].y = units[_loc1_].iY;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  this.§_-e1§[this.§_-e1§.length - 1].rotation = units[_loc1_].rotation;
                  this.§_-e1§[this.§_-e1§.length - 1].visible = true;
                  _loc2_;
                  screen.addChild(this.§_-e1§[this.§_-e1§.length - 1]);
                  _loc3_;
               }
            }
            _loc1_++;
         }
      }
      
      private function §_-0E§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc2_;
         _loc2_;
         _loc3_;
         if(this.§_-e1§ != null)
         {
            _loc3_;
            _loc3_;
            if(this.§_-e1§.length > 0)
            {
               _loc3_;
               _loc1_ = 0;
               while(_loc1_ < this.§_-e1§.length)
               {
                  _loc3_;
                  _loc2_;
                  if(this.§_-e1§[_loc1_] != null)
                  {
                     _loc3_;
                     screen.removeChild(this.§_-e1§[_loc1_]);
                     _loc2_;
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     this.§_-e1§[_loc1_] = null;
                     _loc2_;
                     _loc2_;
                  }
                  _loc1_++;
                  _loc2_;
               }
               _loc3_;
               _loc3_;
            }
            this.§_-e1§.length = 0;
         }
      }
      
      public function §_-GH§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-0E§();
         _loc3_;
         _loc3_;
         this.§_-e1§ = new Array();
         var _loc1_:* = 0;
         while(_loc1_ < powerUps.length)
         {
            _loc2_;
            this.§_-e1§.push(new §_-Vc§());
            _loc2_;
            _loc2_;
            _loc2_;
            this.§_-e1§[_loc1_].x = powerUps[_loc1_].iX;
            _loc2_;
            _loc3_;
            this.§_-e1§[_loc1_].y = powerUps[_loc1_].iY;
            _loc2_;
            _loc3_;
            this.§_-e1§[_loc1_].rotation = powerUps[_loc1_].rotation;
            this.§_-e1§[_loc1_].visible = true;
            _loc3_;
            screen.addChild(this.§_-e1§[_loc1_]);
            _loc3_;
            _loc1_++;
            _loc2_;
         }
      }
      
      private function §_-XF§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-0E§();
         _loc2_;
         this.wep_arrow = new §_-Vc§();
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.wep_arrow.x = 33;
         _loc1_;
         _loc2_;
         _loc2_;
         this.wep_arrow.y = 30;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.wep_arrow.rotation = 0;
         _loc1_;
         this.wep_arrow.visible = true;
         §_-5K§.addChild(this.wep_arrow);
      }
      
      private function §_-hV§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         §_-5K§.removeChild(this.wep_arrow);
         _loc2_;
         this.wep_arrow = null;
      }
      
      override public function gameOver() : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         SafeGlobal.game_over_data = new GameOverData();
         _loc5_;
         SafeGlobal.game_over_data.§_-ts§ = screen;
         _loc4_;
         SafeGlobal.game_over_data.game_radius = SafeGlobal.§_-5k§(Global.tutorial_map);
         _loc4_;
         _loc4_;
         if(this.wep_arrow != null)
         {
            _loc5_;
            _loc5_;
            this.wep_arrow.visible = false;
         }
         _loc4_;
         _loc4_;
         if(this.§_-Ov§ != null)
         {
            this.§_-Ov§.visible = false;
         }
         _loc4_;
         _loc4_;
         if(this.§_-aK§ != null)
         {
            this.§_-aK§.visible = false;
         }
         _loc5_;
         _loc5_;
         if(this.§_-mJ§ != null)
         {
            this.§_-mJ§.visible = false;
            _loc5_;
         }
         _loc4_;
         _loc4_;
         if(this.§_-Ci§ != null)
         {
            this.§_-Ci§.visible = false;
            _loc5_;
         }
         _loc4_;
         _loc4_;
         if(this.§_-MQ§ != null)
         {
            _loc5_;
            _loc5_;
            this.§_-MQ§.visible = false;
            _loc4_;
            this.§_-MQ§.stop();
            _loc5_;
            _loc5_;
         }
         _loc5_;
         if(this.§_-e1§ != null)
         {
            if(this.§_-e1§.length > 0)
            {
               _loc2_ = 0;
               while(true)
               {
                  _loc4_;
                  if(_loc2_ >= this.§_-e1§.length)
                  {
                     break;
                  }
                  this.§_-e1§[_loc2_].visible = false;
                  _loc4_;
                  _loc4_;
                  _loc2_++;
               }
            }
         }
         if(powerUps != null)
         {
            _loc5_;
            _loc5_;
            _loc3_ = 0;
            _loc4_;
            while(true)
            {
               _loc4_;
               _loc4_;
               if(_loc3_ >= powerUps.length)
               {
                  break;
               }
               powerUps[_loc3_].visible = false;
               _loc3_++;
               _loc4_;
               _loc4_;
            }
         }
         §_-qm§(false);
         §_-tz§();
         §_-sA§();
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            units[_loc1_].hideMe();
            _loc1_++;
            _loc5_;
            _loc5_;
         }
         §_-W1§.visible = false;
         Global.lobby_client.saveHelpItemViewed(0);
         Global.lobby_display.displayTutorialEndScreen();
         destroyGame();
      }
      
      override public function displayYourTurn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         showMessage("your turn",SafeGlobal.colour_hex[teams[param1].colourID]);
         _loc2_;
         selectWeapon(0);
         showWeaponPanelButton();
         §_-5K§.tweenOnWeaponName();
         _loc2_;
         §_-se§(units[currentUnit]);
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(this.§_-m5§.dismiss_type == this.§_-iC§ || this.§_-m5§.dismiss_type == this.§_-CU§)
         {
            _loc2_;
            this.§_-y2§(units[currentUnit]);
         }
         else
         {
            this.§_-Ea§(units[currentUnit]);
         }
      }
      
      public function §_-y2§(param1:Unit) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-mJ§.x = param1.iX;
         _loc2_;
         this.§_-mJ§.y = param1.iY;
         _loc2_;
         _loc3_;
         this.§_-mJ§.rotation = param1.rotation;
         this.§_-mJ§.visible = true;
         _loc2_;
         _loc2_;
         this.§_-Ci§.x = param1.iX;
         _loc3_;
         _loc3_;
         this.§_-Ci§.y = param1.iY;
         _loc3_;
         _loc3_;
         this.§_-Ci§.rotation = param1.rotation;
         _loc2_;
         this.§_-Ci§.visible = true;
         screen.setChildIndex(this.§_-Ci§,screen.numChildren - 1);
         screen.setChildIndex(this.§_-mJ§,screen.numChildren - 1);
      }
      
      public function §_-3t§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-mJ§.visible = false;
         _loc2_;
         this.§_-Ci§.visible = false;
      }
      
      public function §_-Ea§(param1:Unit) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-Ov§.x = param1.iX;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-Ov§.y = param1.iY;
         _loc3_;
         _loc3_;
         this.§_-Ov§.rotation = param1.rotation;
         this.§_-Ov§.visible = true;
         _loc3_;
         _loc3_;
         this.§_-aK§.x = param1.iX;
         _loc2_;
         _loc2_;
         this.§_-aK§.y = param1.iY;
         _loc3_;
         this.§_-aK§.rotation = param1.rotation;
         this.§_-aK§.visible = true;
         screen.setChildIndex(this.§_-aK§,screen.numChildren - 1);
         screen.setChildIndex(this.§_-Ov§,screen.numChildren - 1);
      }
      
      public function §_-cf§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-Ov§.visible = false;
         _loc2_;
         _loc2_;
         this.§_-aK§.visible = false;
      }
      
      public function §_-2A§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:§_-U4§ = null;
         _loc3_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,§_-G9§);
         _loc3_;
         _loc3_;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,§_-iA§);
         _loc3_;
         _loc3_;
         turnState = "retreat";
         _loc3_;
         _loc3_;
         §_-M2§();
         _loc3_;
         §_-X8§();
         _loc1_ = new §_-U4§(SafeGlobal.SIMEVENT_ENDTURN,currentTime,null);
         _loc3_;
         _loc3_;
         simManager.addObject(_loc1_);
         _loc3_;
         §_-MT§ = currentTime;
         _loc2_;
         §_-Jz§.startRetreat(currentTime,0);
         _loc2_;
         simManager.startRetreat(currentTime,0);
         _loc2_;
         _loc2_;
         §_-d3§ = currentTime;
      }
      
      public function §_-LS§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc1_;
         if(this.§_-m5§ != null)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.§_-m5§.dismiss_type == this.DISMISS_ONDESTROYENEMY1)
            {
               _loc1_;
               this.§_-0E§();
               _loc1_;
            }
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.§_-m5§.dismiss_type == this.DISMISS_ONDESTROYENEMY2)
            {
               this.§_-0E§();
               _loc1_;
               _loc1_;
            }
            _loc2_;
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.§_-m5§.dismiss_type == this.DISMISS_ONDESTROYENEMY3)
            {
               this.§_-0E§();
               _loc2_;
            }
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            if(this.§_-m5§.dismiss_type == this.§_-JM§)
            {
               _loc2_;
               _loc2_;
               this.§_-hV§();
               this.§_-Ea§(units[currentUnit]);
               _loc2_;
            }
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            if(this.§_-m5§.dismiss_type == this.§_-iC§)
            {
               _loc2_;
               this.§_-0E§();
               _loc1_;
               this.§_-3t§();
            }
            if(this.§_-m5§.dismiss_type == this.§_-CU§)
            {
               this.§_-0E§();
               this.§_-3t§();
            }
         }
         this.§_-c9§.tweenOff();
      }
      
      public function finishDismissTutorialItem() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.§_-m5§ != null)
         {
            if(this.§_-m5§.id == this.§_-Jd§)
            {
               this.§_-4N§();
               _loc2_;
            }
         }
         this.§_-m5§ = null;
         this.§_-c9§ = null;
         _loc2_;
         this.§_-hC§ = -1;
         _loc2_;
         _loc2_;
         SafeGlobal.TIMELINE.removeTutorialItemDisplay();
         _loc2_;
         _loc2_;
         this.displayTutorialItem(this.§_-Tt§.§_-EL§());
      }
      
      private function §_-vp§(param1:int, param2:Boolean = true) : void
      {
         var _loc16_:* = false;
         var _loc17_:* = true;
         var _loc3_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = undefined;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc12_:* = false;
         var _loc13_:§_-0-c§ = null;
         var _loc14_:ColorTransform = null;
         var _loc15_:* = 0;
         _loc17_;
         _loc17_;
         _loc16_;
         _loc3_ = 0;
         var _loc4_:* = 0;
         while(_loc4_ < units.length)
         {
            _loc16_;
            _loc17_;
            if((units[_loc4_] as Unit).team == 1)
            {
               _loc17_;
               _loc17_;
               _loc17_;
               _loc3_ = _loc3_ + (units[_loc4_] as Unit).health;
            }
            _loc4_++;
         }
         _loc16_;
         _loc16_;
         _loc17_;
         _loc17_;
         if(_loc3_ <= 0)
         {
            _loc16_;
            _loc16_;
            _loc16_;
            _loc5_ = 0;
            _loc16_;
            _loc6_ = 0;
            _loc16_;
            _loc17_;
            _loc17_;
            if(param1 == 1)
            {
               _loc5_ = 3;
               _loc16_;
               _loc6_ = 135;
            }
            else
            {
               _loc17_;
               _loc17_;
               if(param1 == 2)
               {
                  _loc5_ = 3;
                  _loc16_;
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
            _loc17_;
            _loc17_;
            _loc16_;
            _loc16_;
            _loc8_ = 0;
            _loc17_;
            _loc17_;
            _loc17_;
            _loc17_;
            _loc3_ = 5;
            _loc17_;
            _loc17_;
            _loc17_;
            _loc9_ = 1;
            _loc17_;
            _loc16_;
            _loc16_;
            _loc10_ = 7;
            _loc11_ = 0;
            _loc12_ = false;
            _loc17_;
            if(teams.length == 1)
            {
               teams.push(new Team(_loc7_));
               _loc17_;
               statuses.push(new UIPlayerStatus(_loc7_));
               statusBar.addChild(statuses[statuses.length - 1]);
               _loc16_;
            }
            teams[_loc7_].teamName = "Gravitee";
            teams[_loc7_].colourID = _loc10_;
            _loc17_;
            _loc17_;
            teams[_loc7_].helmetID = _loc11_;
            teams[_loc7_].idle1ID = 0;
            teams[_loc7_].idle2ID = 1;
            teams[_loc7_].idle3ID = 2;
            _loc17_;
            teams[_loc7_].idle4ID = 3;
            _loc16_;
            teams[_loc7_].victoryID = 0;
            _loc13_ = new §_-0-c§(_loc5_,_loc6_,0,0);
            _loc16_;
            _loc16_;
            units.push(new Unit(_loc13_.planetID,_loc13_.angle,_loc7_,_loc8_,_loc3_,_loc9_,_loc10_,_loc11_));
            _loc16_;
            _loc16_;
            §_-Nb§.push(new §_-PT§(1));
            _loc14_ = new ColorTransform();
            _loc14_.color = SafeGlobal.colour_hex[_loc10_];
            _loc16_;
            §_-Nb§[§_-Nb§.length - 1].colour.transform.colorTransform = _loc14_;
            §_-pn§.addChild(§_-Nb§[§_-Nb§.length - 1]);
            §_-Nb§[§_-Nb§.length - 1].visible = false;
            _loc8_++;
            _loc17_;
            _loc17_;
            units[units.length - 1].healthDisplay.num.textColor = SafeGlobal.colour_hex[_loc10_];
            units[units.length - 1].nameDisplay.word.textColor = SafeGlobal.colour_hex[_loc10_];
            units[units.length - 1].nameDisplay.word.text = "Enemy";
            _loc17_;
            _loc17_;
            units[units.length - 1].nameDisplay.wordshadow.text = "Enemy";
            _loc17_;
            units[units.length - 1].facing = 1;
            units[units.length - 1].scaleX = units[units.length - 1].facing * -1;
            units[units.length - 1].healthDisplay.scaleX = units[units.length - 1].scaleX;
            units[units.length - 1].nameDisplay.scaleX = units[units.length - 1].scaleX;
            _loc16_;
            §_-vb§.addChild(units[units.length - 1]);
            updateTeamHealths();
            _loc17_;
            _loc17_;
            _loc15_ = 0;
            while(_loc15_ < units.length)
            {
               if(units[_loc15_].team == _loc7_)
               {
                  units[_loc15_].costumeID = §_-h2§.length - 1;
                  _loc17_;
                  _loc17_;
                  units[_loc15_].costume = §_-h2§[units[_loc15_].costumeID];
                  _loc17_;
                  _loc17_;
                  units[_loc15_].newAnimState([SafeGlobal.ANIM_UNIT_TELEPORTIN,SafeGlobal.ANIM_UNIT_BOB]);
                  _loc17_;
                  _loc17_;
               }
               _loc15_++;
               _loc17_;
            }
         }
         if(param2)
         {
            _loc17_;
            this.§_-vq§();
         }
      }
      
      override public function onCollectAmmo() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.§_-c9§ != null)
         {
            _loc2_;
            if(this.§_-hC§ == this.§_-iC§)
            {
               _loc1_;
               this.§_-VF§ = true;
               _loc1_;
               this.§_-LS§();
            }
         }
      }
      
      override public function onCollectHealth() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.§_-c9§ != null)
         {
            _loc1_;
            if(this.§_-hC§ == this.§_-CU§)
            {
               _loc2_;
               _loc2_;
               this.§_-ht§ = true;
               _loc1_;
               this.§_-LS§();
            }
         }
      }
      
      override public function onDestroyAmmo() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(this.§_-c9§ != null)
         {
            _loc2_;
            _loc2_;
            if(this.§_-hC§ == this.§_-iC§)
            {
               _loc1_;
               this.§_-V7§ = true;
            }
         }
      }
      
      override public function onDestroyHealth() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(this.§_-c9§ != null)
         {
            _loc2_;
            _loc2_;
            if(this.§_-hC§ == this.§_-CU§)
            {
               _loc1_;
               this.§_-xO§ = true;
            }
         }
      }
      
      override public function onShootClusterBazooka() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.§_-c9§ != null)
         {
            _loc2_;
            this.§_-vm§ = true;
         }
      }
      
      override public function onSelectClusterBazooka() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.§_-c9§ != null)
         {
            _loc2_;
            _loc2_;
            if(this.§_-hC§ == this.§_-JM§)
            {
               _loc2_;
               _loc2_;
               this.§_-xa§ = true;
               _loc1_;
               _loc1_;
               this.§_-LS§();
            }
         }
      }
      
      override public function onCancelShot() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         if(this.§_-c9§ != null)
         {
            _loc2_;
            _loc2_;
            if(this.§_-hC§ == this.§_-7O§)
            {
               _loc2_;
               this.§_-LS§();
            }
         }
      }
      
      public function §_-HS§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(this.§_-c9§ != null)
         {
            _loc1_;
            _loc1_;
            if(this.§_-hC§ == this.DISMISS_ONDESTROYENEMY1)
            {
               this.§_-LS§();
               _loc1_;
            }
            _loc2_;
            _loc2_;
            if(this.§_-hC§ == this.DISMISS_ONDESTROYENEMY2)
            {
               _loc1_;
               this.§_-LS§();
               _loc2_;
            }
            if(this.§_-hC§ == this.DISMISS_ONDESTROYENEMY3)
            {
               _loc1_;
               _loc1_;
               this.§_-LS§();
            }
            _loc1_;
            if(this.§_-hC§ == this.§_-sO§)
            {
               _loc2_;
               _loc1_;
               if(this.§_-vm§ == true)
               {
                  this.§_-LS§();
               }
            }
            _loc1_;
            _loc1_;
            if(this.§_-hC§ == this.§_-JM§)
            {
               _loc1_;
               _loc1_;
               _loc2_;
               _loc2_;
               _loc2_;
               if(this.§_-xa§ == false)
               {
                  _loc2_;
                  _loc2_;
                  this.§_-SG§();
                  _loc1_;
               }
            }
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            if(this.§_-hC§ == this.§_-iC§)
            {
               _loc2_;
               _loc2_;
               _loc1_;
               if(this.§_-V7§ == true)
               {
                  this.§_-SG§();
               }
            }
            if(this.§_-hC§ == this.§_-CU§)
            {
               _loc1_;
               _loc1_;
               if(this.§_-xO§ == true)
               {
                  this.§_-SG§();
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
            if(_loc2_ >= units.length)
            {
               break;
            }
            if(units[_loc2_].team == 1)
            {
               _loc3_;
               _loc3_;
               _loc1_ = _loc1_ + units[_loc2_].health;
            }
            _loc2_++;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.§_-hC§ == this.§_-sO§)
         {
            _loc4_;
            _loc4_;
            _loc3_;
            if(this.§_-vm§)
            {
               this.§_-LS§();
               _loc4_;
            }
            else
            {
               _loc4_;
               if(_loc1_ <= 0)
               {
                  this.§_-vp§(2);
               }
               this.§_-SG§();
            }
         }
         if(this.§_-hC§ == this.§_-JM§)
         {
            _loc3_;
            if(!this.§_-xa§)
            {
               this.§_-SG§();
            }
         }
         _loc4_;
         _loc4_;
         if(this.§_-hC§ == this.DISMISS_ONDESTROYENEMY1)
         {
            _loc3_;
            _loc3_;
            if(_loc1_ <= 0)
            {
               _loc3_;
               this.§_-HS§();
               _loc3_;
               _loc3_;
            }
            else
            {
               this.§_-SG§();
               _loc4_;
            }
         }
         if(this.§_-hC§ == this.DISMISS_ONDESTROYENEMY2)
         {
            if(_loc1_ <= 0)
            {
               this.§_-HS§();
            }
            else
            {
               this.§_-SG§();
            }
         }
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.§_-hC§ == this.DISMISS_ONDESTROYENEMY3)
         {
            _loc4_;
            _loc4_;
            if(_loc1_ <= 0)
            {
               _loc3_;
               this.§_-HS§();
            }
            else
            {
               this.§_-SG§();
            }
         }
         _loc4_;
         _loc4_;
         if(this.§_-hC§ == this.§_-iC§)
         {
            this.§_-SG§();
            _loc4_;
         }
         if(this.§_-hC§ == this.§_-CU§)
         {
            this.§_-SG§();
         }
         if(this.§_-hC§ == this.§_-7O§)
         {
            this.§_-SG§();
         }
      }
      
      override public function turnOverNoShot() : *
      {
      }
      
      override public function sendFireProjectile(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc5_;
         _loc5_;
         removeStock(param2);
         _loc5_;
         §_-yp§ = true;
         if(param2 == SafeGlobal.WEAPONINFO_CLUSTER[0])
         {
            this.onShootClusterBazooka();
            _loc6_;
         }
         this.§_-cf§();
         _loc5_;
         _loc5_;
         this.§_-3t§();
         _loc6_;
         this.§_-0E§();
      }
      
      override public function sendStartWalk(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         this.§_-cf§();
         _loc3_;
         this.§_-3t§();
      }
      
      override public function sendStopWalk(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(this.§_-m5§ != null)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.§_-m5§.dismiss_type == this.§_-iC§)
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               if(this.§_-VF§ == false)
               {
                  this.§_-y2§(units[currentUnit]);
               }
            }
            else if(this.§_-m5§.dismiss_type == this.§_-CU§)
            {
               _loc3_;
               if(this.§_-ht§ == false)
               {
                  this.§_-y2§(units[currentUnit]);
               }
            }
            else
            {
               this.§_-Ea§(units[currentUnit]);
            }
            
         }
         else
         {
            this.§_-Ea§(units[currentUnit]);
         }
      }
      
      public function §_-z2§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!§_-g1§)
         {
            §_-g1§ = true;
            addEventListener(Event.ENTER_FRAME,§_-Tx§);
            stage.addEventListener(MouseEvent.MOUSE_DOWN,§_-iA§);
            stage.addEventListener(KeyboardEvent.KEY_DOWN,§_-54§);
            stage.addEventListener(KeyboardEvent.KEY_UP,§_-W9§);
         }
         camera.emptyList();
         _loc1_;
         currentUnit = 0;
         camera.addTarget(units[0],-1,"unit startTurn");
         §_-7X§.x = units[0].iX;
         §_-7X§.y = units[0].iY;
         §_-7X§.active = true;
      }
      
      public function §_-g0§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         §_-0h§.removeChild(powerUps[0]);
         _loc1_;
         powerUps[0].destroyMe();
         _loc1_;
         powerUps.length = 0;
      }
      
      public function §_-SG§() : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc6_:* = undefined;
         var _loc1_:int = §_-bS§();
         var _loc5_:* = "";
         _loc7_;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         _loc7_;
         _loc7_;
         _loc8_;
         if(_loc1_ == 0 || _loc1_ == 1 || _loc1_ == 2 || _loc1_ == 3)
         {
            _loc7_;
            _loc6_ = §_-eF§();
            §_-uU§ = _loc1_;
            _loc8_;
            _loc7_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            if(!(this.§_-m5§ == null) && this.§_-m5§.dismiss_type == this.DISMISS_ONDESTROYENEMY1)
            {
               this.§_-vq§();
               _loc8_;
               _loc8_;
            }
            else
            {
               _loc8_;
               _loc8_;
               _loc7_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               if(!(this.§_-m5§ == null) && this.§_-m5§.dismiss_type == this.DISMISS_ONDESTROYENEMY2)
               {
                  this.§_-vq§();
               }
               else
               {
                  _loc8_;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  if(!(this.§_-m5§ == null) && this.§_-m5§.dismiss_type == this.DISMISS_ONDESTROYENEMY3)
                  {
                     _loc8_;
                     _loc8_;
                     this.§_-vq§();
                     _loc7_;
                     _loc7_;
                  }
                  else
                  {
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     if(!(this.§_-m5§ == null) && this.§_-m5§.dismiss_type == this.§_-sO§)
                     {
                        this.§_-vq§();
                        _loc7_;
                     }
                     else
                     {
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        _loc7_;
                        if(!(this.§_-m5§ == null) && this.§_-m5§.dismiss_type == this.§_-iC§)
                        {
                           this.§_-Zn§(1,§_-uU§);
                        }
                        else
                        {
                           _loc8_;
                           _loc8_;
                           if(!(this.§_-m5§ == null) && this.§_-m5§.dismiss_type == this.§_-CU§)
                           {
                              this.§_-Zn§(0,§_-uU§);
                           }
                        }
                     }
                  }
               }
            }
            startTurn(0,_loc1_,"",_loc6_);
            _loc7_;
         }
         else
         {
            §_-ss§();
         }
         this.§_-kT§ = true;
      }
      
      private function §_-7U§() : Boolean
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(true)
         {
            _loc4_;
            if(_loc2_ >= units.length)
            {
               break;
            }
            if(units[_loc2_].team == 1)
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc3_;
               _loc1_ = _loc1_ + units[_loc2_].health;
               _loc3_;
            }
            _loc2_++;
            _loc3_;
            _loc3_;
         }
         _loc3_;
         _loc3_;
         if(_loc1_ <= 0)
         {
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            return false;
         }
         return true;
      }
   }
}
