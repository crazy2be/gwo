package com.funkypear.ui
{
   import flash.text.TextField;
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import flash.display.MovieClip;
   import flash.text.TextFormat;
   import flash.utils.getDefinitionByName;
   import fl.transitions.TweenEvent;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   
   public class LP_Unlock extends §_-A3§
   {
      
      public function LP_Unlock(param1:Sprite)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.§_-ni§ = ["","","","","ORANGE COLOR","PURPLE COLOR","PINK COLOR","GREY COLOR","BLACK COLOR","WHITE COLOR"];
         _loc3_;
         this.§_-eC§ = ["","SOLDIER HELMET","MOTOCROSS HELMET","ALIEN HELMET","BUBBLE HELMET","MOHAWK HELMET","ULTRA HELMET","VIKING HELMET","BETA HELMET"];
         this.§_-8p§ = ["PLANETS ARE NOT DESTROYED BY EXPLOSIONS","UNITS ARE NOT ABLE TO WALK WHEN USING THIS GAME MOD","ALL EXPLOSIONS ARE MADE 25% BIGGER WITH THIS MOD","POWERUPS SPAWN MORE FREQUENTLY WHEN USING THIS MOD","MINES WILL EXPLODE INSTANTLY WHEN USING THIS MOD","UNITS ARE HEAVIER AND DON\'T FLY OFF INTO SPACE SO MUCH","ALL PLANETS WILL START OFF WITH SHIELDS WITH THIS MOD"];
         this.§_-yg§ = ["","SPLITS INTO SIX SMALLER PROJECTILES ON IMPACT","RANDOMLY GIVES EITHER 100 DAMAGE OR 100 HEALTH","AN EXPLOSIVE GOLF BALL WITH EXTRA BOUNCE","DRILLS THROUGH PLANETS AND EXPLODES ON THE OTHER SIDE","A MELEE WEAPON WHICH SENDS ENEMIES FLYING INTO SPACE","ZAP ENEMIES WITH THIS ELECTRIFIED MELEE WEAPON","PUNCH ENEMIES AND SET THEM ON FIRE AT THE SAME TIME","BAZOOKA WITH ADDED EMP TO SET OFF NEARBY MINES","FIRES THREE SEPARATE PROJECTILE ALL AT ONCE","DRILLS COMPLETELY THROUGH A PLANET AND KEEPS GOING","BAZOOKA WITH ADDED FIRE DAMAGE","FIRES THREE SHOTS ONE AFTER THE OTHER","WILL TRIGGER IF ANY UNITS GET TOO CLOSE","DRILLS THROUGH PLANET WHEN TRIGGERED","THROWS OUT PAYLOAD OF MINI EXPLOSIONS WHEN TRIGGERED","DEFEND AGAINST ENEMIES LOCATED AT CLOSE PROXIMITY","GIVES GREATER ACCURACY WHEN AIMING AT A DISTANCE","","MAKE YOUR ENEMIES SICK WITH POISON","A MACHINE GUN WITH A HIGH RATE OF FIRE","TRAVEL AROUND THE GALAXY IN STYLE","WARP TO ANOTHER PLANET IN AN INSTANT","HEAL ONE OF YOUR TEAM OR EVEN ONE OF YOUR ENEMIES","PROJECTILES BOUNCE OFF AND ENEMIES ARE FRIED","DISSOLVES ANY PROJECTILE THAT HITS IT","PROTECTS A WHOLE PLANET FROM PROJECTILES","REMOVES RADIATION FROM RADIOACTIVE PLANETS","DRIVES AROUND UNTIL IT HITS SOMETHING AND THEN BOOM!","CAUSES MASS DESTRUCTION AND RADIATION POISONING","INCOMING WEAPON FIRED FROM AROUND THE EDGE OF THE MAP","A WEAPON THAT YOU CAN CUSTOMISE YOURSELF","FIRES EIGHT SHOTS ONE AFTER THE OTHER","HEAL ONE OF YOUR TEAM OR EVEN ONE OF YOUR ENEMIES","","FIRES SMALL METEORS FROM AROUND THE EDGE OF THE MAP","A STORM OF METEORS FROM AROUND THE EDGE OF THE MAP","SUPER CHARGED ROVER WITH GREATER EXPLOSIVE POWER","LIKE A NUKE BUT A BIT SMALLER...","A WEAPON THAT YOU CAN CUSTOMISE YOURSELF","A WEAPON THAT YOU CAN CUSTOMISE YOURSELF"];
         _loc2_;
         _loc2_;
         super(param1);
         x = 1500;
         y = 138;
         this.§_-Jm§ = new Sprite();
         this.§_-Jm§.x = 42;
         this.§_-Jm§.y = 170;
         _loc2_;
         addChild(this.§_-Jm§);
      }
      
      public var g_text:TextField;
      
      public var §_-h7§:TextField;
      
      public var gravitons_text:TextField;
      
      public var §_-m5§:TextField;
      
      public var §_-qE§:TextField;
      
      public var §_-k8§:TextField;
      
      public var §_-Ak§:TextField;
      
      private var §_-ni§:Array;
      
      private var §_-eC§:Array;
      
      private var §_-8p§:Array;
      
      private var §_-yg§:Array;
      
      private var §_-Jm§:Sprite;
      
      private var end_screen:LS_GameEnd;
      
      public var §_-YZ§:String = "";
      
      public function getOnScreen() : Boolean
      {
         return §_-HF§;
      }
      
      public function §_-oE§(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-YZ§ = param1;
         _loc3_;
         _loc3_;
         this.tweenOut(false);
      }
      
      public function update(param1:String, param2:LS_GameEnd = null) : void
      {
         var _loc18_:* = false;
         var _loc19_:* = true;
         var _loc7_:* = 0;
         var _loc14_:Class = null;
         var _loc15_:Sprite = null;
         var _loc16_:ColorTransform = null;
         var _loc17_:MovieClip = null;
         _loc19_;
         _loc19_;
         if(param2 != null)
         {
            _loc18_;
            _loc18_;
            this.end_screen = param2;
         }
         var _loc3_:Array = param1.split(",");
         var _loc4_:int = parseInt(_loc3_[0]);
         var _loc5_:int = parseInt(_loc3_[1]);
         var _loc6_:int = parseInt(_loc3_[2]);
         _loc18_;
         _loc7_ = parseInt(_loc3_[3]);
         var _loc8_:TextFormat = new TextFormat();
         _loc8_.letterSpacing = -1;
         _loc8_.leading = -6;
         _loc18_;
         _loc18_;
         this.§_-h7§.defaultTextFormat = _loc8_;
         _loc19_;
         _loc19_;
         if(_loc4_ == 0)
         {
            _loc18_;
            this.§_-h7§.text = String("YOU UNLOCKED AN ITEM FOR\nCOMPLETING A CAMPAIGN MISSION");
            _loc19_;
         }
         else
         {
            _loc18_;
            _loc18_;
            _loc18_;
            if(_loc4_ == 1)
            {
               this.§_-h7§.text = String("YOU UNLOCKED AN ITEM FOR\nCOMPLETING TWO CAMPAIGN MISSIONS");
               _loc19_;
            }
            else if(_loc4_ == 2)
            {
               this.§_-h7§.text = String("YOU UNLOCKED AN ITEM FOR\nCOMPLETING THREE CAMPAIGN MISSIONS");
               _loc18_;
               _loc18_;
            }
            else if(_loc4_ == 3)
            {
               _loc19_;
               this.§_-h7§.text = String("YOU UNLOCKED AN ITEM FOR\nCOMPLETING FOUR CAMPAIGN MISSIONS");
               _loc18_;
            }
            else if(_loc4_ == 4)
            {
               this.§_-h7§.text = String("YOU UNLOCKED AN ITEM FOR\nCOMPLETING ALL CAMPAIGN MISSIONS");
            }
            else
            {
               _loc18_;
               _loc18_;
               if(_loc4_ == 5)
               {
                  this.§_-h7§.text = String("YOU UNLOCKED AN ITEM FOR\nGETTING ALL BRONZE STARS IN THE CAMPAIGN");
                  _loc18_;
               }
               else
               {
                  _loc18_;
                  if(_loc4_ == 6)
                  {
                     this.§_-h7§.text = String("YOU UNLOCKED AN ITEM FOR\nGETTING ALL SILVER STARS IN THE CAMPAIGN");
                     _loc18_;
                     _loc18_;
                  }
                  else
                  {
                     _loc18_;
                     if(_loc4_ == 7)
                     {
                        this.§_-h7§.text = String("YOU UNLOCKED AN ITEM FOR\nGETTING ALL GOLD STARS IN THE CAMPAIGN");
                        _loc19_;
                     }
                     else if(_loc4_ == 8)
                     {
                        this.§_-h7§.text = String("YOU UNLOCKED AN ITEM FOR\nCOMPLETING A GAME");
                     }
                     else
                     {
                        _loc19_;
                        _loc19_;
                        _loc19_;
                        if(_loc4_ == 9)
                        {
                           this.§_-h7§.text = String("YOU UNLOCKED AN ITEM FOR\nCOMPLETING THE DAILY CHALLENGE");
                           _loc18_;
                           _loc18_;
                           SafeGlobal.§_-zK§.§_-yi§();
                        }
                        else if(_loc4_ == 10)
                        {
                           this.§_-h7§.text = String("YOU UNLOCKED AN ITEM FOR\nCOMPLETING THE WEEKLY CHALLENGE");
                           _loc19_;
                           SafeGlobal.§_-zK§.§_-qa§();
                        }
                        
                     }
                     
                  }
               }
            }
            
            
            
         }
         var _loc9_:TextFormat = new TextFormat();
         _loc9_.letterSpacing = -1;
         _loc18_;
         _loc18_;
         this.gravitons_text.defaultTextFormat = _loc9_;
         _loc18_;
         _loc18_;
         if(_loc7_ > 0)
         {
            _loc19_;
            _loc19_;
            this.gravitons_text.text = String(_loc7_);
            _loc19_;
            _loc19_;
         }
         else
         {
            this.gravitons_text.text = "0";
         }
         var _loc10_:TextFormat = new TextFormat();
         _loc10_.letterSpacing = -2;
         _loc18_;
         this.§_-Ak§.defaultTextFormat = _loc10_;
         var _loc11_:TextFormat = new TextFormat();
         _loc11_.letterSpacing = -1;
         _loc18_;
         _loc18_;
         this.§_-k8§.defaultTextFormat = _loc11_;
         var _loc12_:TextFormat = new TextFormat();
         _loc12_.letterSpacing = -1;
         _loc19_;
         _loc12_.leading = -4;
         _loc19_;
         _loc19_;
         this.§_-m5§.defaultTextFormat = _loc12_;
         var _loc13_:TextFormat = new TextFormat();
         _loc13_.letterSpacing = -1;
         _loc18_;
         _loc13_.leading = -4;
         _loc18_;
         _loc18_;
         this.§_-qE§.defaultTextFormat = _loc13_;
         _loc18_;
         if(this.§_-Jm§.numChildren > 0)
         {
            while(this.§_-Jm§.numChildren > 0)
            {
               this.§_-Jm§.removeChildAt(0);
               _loc18_;
               _loc18_;
            }
            _loc18_;
         }
         _loc18_;
         if(_loc5_ == SafeGlobal.UNLOCKTYPE_COLOUR)
         {
            _loc19_;
            this.§_-Ak§.text = "COLOR UNLOCKED";
            this.§_-k8§.text = this.§_-ni§[_loc6_];
            this.§_-m5§.text = "A NEW COLOR FOR YOUR TEAM";
            _loc18_;
            _loc18_;
            this.§_-qE§.text = "CHANGE YOUR COLOR ON THE TEAM SETUP PANEL";
            _loc14_ = getDefinitionByName("ColourUnlockIcon" + _loc6_) as Class;
            _loc15_ = new _loc14_() as Sprite;
            _loc16_ = new ColorTransform();
            _loc16_.color = SafeGlobal.colour_hex[_loc6_];
            _loc17_ = _loc15_.getChildByName("colourbox") as MovieClip;
            if(_loc17_ != null)
            {
               _loc18_;
               _loc18_;
               _loc17_.transform.colorTransform = _loc16_;
               _loc18_;
            }
            this.§_-Jm§.addChild(_loc15_);
            _loc19_;
            _loc19_;
         }
         else
         {
            _loc19_;
            _loc18_;
            if(_loc5_ == SafeGlobal.UNLOCKTYPE_HELMET)
            {
               this.§_-Ak§.text = "HELMET UNLOCKED";
               _loc18_;
               this.§_-k8§.text = this.§_-eC§[_loc6_];
               this.§_-m5§.text = "A NEW HELMET FOR YOUR TEAM";
               this.§_-qE§.text = "CHANGE YOUR HELMET ON THE TEAM SETUP PANEL";
               _loc14_ = getDefinitionByName("HeadClip" + _loc6_) as Class;
               _loc15_ = new _loc14_() as Sprite;
               _loc15_.scaleX = 1.5;
               _loc18_;
               _loc15_.scaleY = 1.5;
               _loc19_;
               _loc19_;
               _loc15_.x = -3;
               _loc19_;
               _loc19_;
               _loc15_.y = 4;
               _loc18_;
               _loc18_;
               this.§_-Jm§.addChild(_loc15_);
            }
            else
            {
               _loc19_;
               if(_loc5_ == SafeGlobal.UNLOCKTYPE_WEAPON)
               {
                  this.§_-Ak§.text = "WEAPON UNLOCKED";
                  this.§_-k8§.text = String(SafeGlobal.weaponNames[_loc6_]).toUpperCase();
                  _loc18_;
                  this.§_-m5§.text = this.§_-yg§[_loc6_];
                  _loc19_;
                  this.§_-qE§.text = "EQUIP THIS WEAPON ON THE WEAPON SETUP PANEL";
                  this.§_-Jm§.addChild(SafeGlobal.§_-ct§(_loc6_));
                  _loc19_;
                  _loc19_;
               }
               else
               {
                  _loc19_;
                  _loc19_;
                  _loc18_;
                  _loc18_;
                  if(_loc5_ == SafeGlobal.UNLOCKTYPE_EDITORPACK)
                  {
                     _loc19_;
                     _loc19_;
                     this.§_-Ak§.text = "EDITOR PACK UNLOCKED";
                     _loc18_;
                     this.§_-k8§.text = "EDITOR PACK " + (_loc6_ + 1);
                     _loc18_;
                     if(_loc6_ == Global.EDITOR_PACK1)
                     {
                        _loc18_;
                        _loc18_;
                        this.§_-m5§.text = "A MAP EDITOR TO BUILD YOUR OWN CUSTOM MAPS";
                     }
                     else
                     {
                        _loc18_;
                        _loc18_;
                        if(_loc6_ == Global.EDITOR_PACK2)
                        {
                           _loc18_;
                           this.§_-m5§.text = "SUN, CLUSTER MINE AND WORMHOLE ELEMENTS";
                           _loc19_;
                           _loc19_;
                        }
                        else if(_loc6_ == Global.EDITOR_PACK3)
                        {
                           _loc18_;
                           this.§_-m5§.text = "DISSOLVE SHIELD, PLANET SHIELD AND RADIOACTIVE PLANETS";
                           _loc18_;
                           _loc18_;
                        }
                        else
                        {
                           _loc18_;
                           _loc18_;
                           if(_loc6_ == Global.EDITOR_PACK4)
                           {
                              this.§_-m5§.text = "DRILL MINE, BLACK HOLE AND SKY MINE ELEMENTS";
                           }
                           else
                           {
                              _loc18_;
                              _loc18_;
                              if(_loc6_ == Global.EDITOR_PACK5)
                              {
                                 _loc18_;
                                 _loc18_;
                                 this.§_-m5§.text = "";
                                 _loc18_;
                                 _loc18_;
                              }
                              else
                              {
                                 this.§_-m5§.text = "";
                                 _loc18_;
                                 _loc18_;
                              }
                           }
                        }
                        
                     }
                     this.§_-qE§.text = "ACCESS THE MAP EDITOR FROM THE HUB SCREEN";
                     _loc14_ = getDefinitionByName("EditorPackIcon" + _loc6_) as Class;
                     _loc15_ = new _loc14_() as Sprite;
                     _loc19_;
                     this.§_-Jm§.addChild(_loc15_);
                  }
                  else
                  {
                     _loc18_;
                     _loc18_;
                     _loc19_;
                     _loc19_;
                     if(_loc5_ == SafeGlobal.UNLOCKTYPE_ANIMPACK)
                     {
                        this.§_-Ak§.text = "ANIMATIONS UNLOCKED";
                        this.§_-k8§.text = "ANIMATION PACK " + (_loc6_ + 1);
                        _loc18_;
                        _loc18_;
                        this.§_-m5§.text = "NEW IDLE AND VICTORY ANIMATIONS FOR YOUR TEAM";
                        this.§_-qE§.text = "CHANGE ANIMATIONS ON THE TEAM SETUP PANEL";
                        _loc18_;
                        _loc18_;
                        if(_loc6_ == 0)
                        {
                           this.§_-87§(0,0);
                           _loc18_;
                           _loc18_;
                        }
                        else if(_loc6_ == 1)
                        {
                           _loc18_;
                           this.§_-87§(1,2);
                        }
                        else if(_loc6_ == 2)
                        {
                           this.§_-87§(2,3);
                        }
                        else
                        {
                           _loc18_;
                           if(_loc6_ == 3)
                           {
                              _loc19_;
                              _loc19_;
                              this.§_-87§(4,7);
                              _loc19_;
                              _loc19_;
                           }
                        }
                        
                        
                     }
                     else if(_loc5_ == SafeGlobal.UNLOCKTYPE_CWPACK)
                     {
                        this.§_-Ak§.text = "CUSTOM WEAPON PACK";
                        this.§_-k8§.text = "CUSTOM WEAPON PACK " + (_loc6_ + 1);
                        _loc18_;
                        _loc18_;
                        this.§_-m5§.text = "NEW ELEMENTS TO USE IN YOUR CUSTOM WEAPON";
                        _loc18_;
                        this.§_-qE§.text = "EDIT YOUR WEAPON ON THE WEAPON SETUP PANEL";
                        _loc14_ = getDefinitionByName("CWPackIcon" + _loc6_) as Class;
                        _loc15_ = new _loc14_() as Sprite;
                        _loc19_;
                        _loc19_;
                        this.§_-Jm§.addChild(_loc15_);
                     }
                     else
                     {
                        _loc18_;
                        if(_loc5_ == SafeGlobal.UNLOCKTYPE_MOD)
                        {
                           this.§_-Ak§.text = "CUSTOM GAME MOD";
                           this.§_-k8§.text = Global.modNames[_loc6_].toUpperCase();
                           this.§_-m5§.text = this.§_-8p§[_loc6_];
                           this.§_-qE§.text = "USE MODS WHEN SETTING UP A CUSTOM GAME";
                           _loc15_ = new §_-r7§(_loc6_) as Sprite;
                           _loc15_.scaleX = 0.7;
                           _loc18_;
                           _loc15_.scaleY = 0.7;
                           _loc19_;
                           this.§_-Jm§.addChild(_loc15_);
                        }
                        else
                        {
                           _loc18_;
                           _loc18_;
                           _loc18_;
                           if(_loc5_ == SafeGlobal.§_-2v§)
                           {
                              this.§_-Ak§.text = "REPLAY EDITOR";
                              _loc19_;
                              _loc19_;
                              this.§_-k8§.text = "REPLAY EDITOR";
                              _loc18_;
                              this.§_-m5§.text = "WATCH REPLAYS AND SHARE EPIC SHOTS WITH THE WORLD";
                              this.§_-qE§.text = "ACCESS THE REPLAY EDITOR FROM THE HUB SCREEN";
                              _loc18_;
                              _loc15_ = new §_-BC§() as Sprite;
                              _loc15_.x = -17;
                              _loc19_;
                              _loc15_.y = -20;
                              _loc18_;
                              this.§_-Jm§.addChild(_loc15_);
                           }
                           else
                           {
                              _loc18_;
                              if(_loc5_ == SafeGlobal.§_-vU§)
                              {
                                 _loc18_;
                                 _loc18_;
                                 this.§_-Ak§.text = "TEAM BOOSTER";
                                 this.§_-k8§.text = String("DOUBLE XP x" + _loc6_);
                                 this.§_-m5§.text = "GIVES YOUR TEAM DOUBLE XP";
                                 _loc18_;
                                 this.§_-qE§.text = "ACTIVATE TEAM BOOSTERS ON THE TEAM SET UP PANEL";
                                 _loc15_ = new BoosterIcon1() as Sprite;
                                 _loc19_;
                                 _loc19_;
                                 this.§_-Jm§.addChild(_loc15_);
                              }
                              else if(_loc5_ == SafeGlobal.§_-zl§)
                              {
                                 this.§_-Ak§.text = "TEAM BOOSTER";
                                 _loc18_;
                                 _loc18_;
                                 this.§_-k8§.text = String("TRIPLE XP x" + _loc6_);
                                 this.§_-m5§.text = "GIVES YOUR TEAM TRIPLE XP";
                                 _loc18_;
                                 _loc18_;
                                 this.§_-qE§.text = "ACTIVATE TEAM BOOSTERS ON THE TEAM SET UP PANEL";
                                 _loc15_ = new BoosterIcon2() as Sprite;
                                 _loc19_;
                                 _loc19_;
                                 this.§_-Jm§.addChild(_loc15_);
                              }
                              
                           }
                        }
                     }
                     
                  }
               }
            }
         }
         visible = true;
         _loc19_;
         Global.coins.setInt(Global.coins.getInt() + _loc7_);
         _loc19_;
         _loc19_;
         Global.lobby_display.lobby_stats.§_-zB§();
      }
      
      public function §_-U0§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-YZ§ = "";
         _loc1_;
         this.tweenOut(true);
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.end_screen.§_-Oi§();
      }
      
      public function §_-DN§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(this.§_-YZ§ != "")
         {
            _loc3_;
            _loc3_;
            this.update(this.§_-YZ§);
            _loc2_;
            _loc2_;
            this.tweenIn(false);
         }
      }
      
      override public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!§_-HF§)
         {
            tweenInExtras();
            §_-hW§ = new Tween(this,"x",Strong.easeOut,x,130,1,true);
            §_-hW§.start();
            _loc2_;
            if(param1)
            {
               shadow_mc.alpha = 0;
               _loc3_;
               shadow_mc.visible = true;
               fade_in = new Tween(shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               _loc3_;
               fade_in.start();
            }
            §_-HF§ = true;
         }
      }
      
      override public function tweenOut(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(§_-HF§)
         {
            §_-Bm§ = new Tween(this,"x",Strong.easeOut,x,1500,1,true);
            §_-Bm§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-DN§,false,0,true);
            §_-Bm§.start();
            if(param1)
            {
               §_-2V§ = new Tween(shadow_mc,"alpha",Strong.easeOut,0.5,0,1,true);
               _loc3_;
               §_-2V§.addEventListener(TweenEvent.MOTION_FINISH,§_-qT§,false,0,true);
               _loc2_;
               _loc2_;
               §_-2V§.start();
               _loc3_;
               _loc3_;
            }
            §_-HF§ = false;
         }
      }
      
      private function §_-87§(param1:int, param2:int) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:MovieClip = this.§_-i8§(param1);
         _loc5_;
         _loc5_;
         _loc3_.x = -15;
         _loc6_;
         _loc6_;
         _loc3_.y = 17;
         var _loc4_:MovieClip = this.§_-vj§(param2);
         _loc4_.x = 15;
         _loc6_;
         _loc6_;
         _loc4_.y = 17;
         _loc5_;
         this.§_-Jm§.addChild(_loc3_);
         _loc6_;
         this.§_-Jm§.addChild(_loc4_);
      }
      
      private function §_-i8§(param1:int) : MovieClip
      {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         var _loc13_:MovieClip = null;
         var _loc14_:ColorTransform = null;
         var _loc2_:MovieClip = SafeGlobal.§_-DM§(param1);
         _loc15_;
         if(_loc2_ != null)
         {
            _loc16_;
            _loc16_;
            _loc16_;
            _loc3_ = Global.favourite_helmet.getInt();
            _loc15_;
            _loc15_;
            _loc16_;
            _loc4_ = 1;
            _loc15_;
            _loc16_;
            _loc5_ = 1;
            _loc16_;
            _loc16_;
            _loc6_ = 1;
            _loc7_ = getDefinitionByName("HeadClip" + _loc3_) as Class;
            _loc8_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc2_.head.addChild(_loc8_);
            _loc16_;
            if(_loc2_.body is §_-8J§)
            {
               _loc7_ = getDefinitionByName("BodyClip" + _loc4_) as Class;
            }
            else
            {
               _loc7_ = getDefinitionByName("BodyClipNew" + _loc4_) as Class;
            }
            _loc9_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc2_.body.addChild(_loc9_);
            _loc7_ = getDefinitionByName("HandClip" + _loc5_) as Class;
            _loc10_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc2_.righthand.addChild(_loc10_);
            _loc11_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc16_;
            _loc2_.lefthand.addChild(_loc11_);
            _loc7_ = getDefinitionByName("FootClip" + _loc6_) as Class;
            _loc12_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc2_.rightfoot.addChild(_loc12_);
            _loc13_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc2_.leftfoot.addChild(_loc13_);
            _loc14_ = new ColorTransform();
            _loc14_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
            _loc8_.inside.transform.colorTransform = _loc14_;
            _loc9_.inside.transform.colorTransform = _loc14_;
            _loc11_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc16_;
            _loc13_.inside.transform.colorTransform = _loc14_;
            _loc10_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc12_.inside.transform.colorTransform = _loc14_;
            _loc2_.scaleX = 0.8;
            _loc2_.scaleY = 0.8;
            _loc15_;
            return _loc2_;
         }
         return new MovieClip();
      }
      
      private function §_-vj§(param1:int) : MovieClip
      {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:Class = null;
         var _loc8_:MovieClip = null;
         var _loc9_:MovieClip = null;
         var _loc10_:MovieClip = null;
         var _loc11_:MovieClip = null;
         var _loc12_:MovieClip = null;
         var _loc13_:MovieClip = null;
         var _loc14_:ColorTransform = null;
         var _loc2_:MovieClip = SafeGlobal.§_-do§(param1);
         _loc15_;
         if(_loc2_ != null)
         {
            _loc16_;
            _loc16_;
            _loc15_;
            _loc15_;
            _loc16_;
            _loc3_ = Global.favourite_helmet.getInt();
            _loc16_;
            _loc16_;
            _loc16_;
            _loc4_ = 1;
            _loc15_;
            _loc16_;
            _loc16_;
            _loc5_ = 1;
            _loc16_;
            _loc16_;
            _loc6_ = 1;
            _loc7_ = getDefinitionByName("HeadClip" + _loc3_) as Class;
            _loc8_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc2_.head.addChild(_loc8_);
            _loc16_;
            _loc16_;
            if(_loc2_.body is §_-8J§)
            {
               _loc7_ = getDefinitionByName("BodyClip" + _loc4_) as Class;
            }
            else
            {
               _loc7_ = getDefinitionByName("BodyClipNew" + _loc4_) as Class;
            }
            _loc9_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc2_.body.addChild(_loc9_);
            _loc7_ = getDefinitionByName("HandClip" + _loc5_) as Class;
            _loc10_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc2_.righthand.addChild(_loc10_);
            _loc11_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc16_;
            _loc2_.lefthand.addChild(_loc11_);
            _loc7_ = getDefinitionByName("FootClip" + _loc6_) as Class;
            _loc12_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc2_.rightfoot.addChild(_loc12_);
            _loc13_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc2_.leftfoot.addChild(_loc13_);
            _loc14_ = new ColorTransform();
            _loc14_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
            _loc8_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc9_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc16_;
            _loc11_.inside.transform.colorTransform = _loc14_;
            _loc15_;
            _loc15_;
            _loc13_.inside.transform.colorTransform = _loc14_;
            _loc10_.inside.transform.colorTransform = _loc14_;
            _loc12_.inside.transform.colorTransform = _loc14_;
            _loc2_.scaleX = 0.8;
            _loc2_.scaleY = 0.8;
            return _loc2_;
         }
         return new MovieClip();
      }
   }
}
