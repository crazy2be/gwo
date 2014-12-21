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
   
   public class LP_Unlock extends §_-uw§
   {
      
      public function LP_Unlock(param1:Sprite)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.§_-ir§ = ["","","","","ORANGE COLOR","PURPLE COLOR","PINK COLOR","GREY COLOR","BLACK COLOR","WHITE COLOR"];
         this.§_-Yo§ = ["","SOLDIER HELMET","MOTOCROSS HELMET","ALIEN HELMET","BUBBLE HELMET","MOHAWK HELMET","ULTRA HELMET","VIKING HELMET","BETA HELMET"];
         this.§_-GZ§ = ["PLANETS ARE NOT DESTROYED BY EXPLOSIONS","UNITS ARE NOT ABLE TO WALK WHEN USING THIS GAME MOD","ALL EXPLOSIONS ARE MADE 25% BIGGER WITH THIS MOD","POWERUPS SPAWN MORE FREQUENTLY WHEN USING THIS MOD","MINES WILL EXPLODE INSTANTLY WHEN USING THIS MOD","UNITS ARE HEAVIER AND DON\'T FLY OFF INTO SPACE SO MUCH","ALL PLANETS WILL START OFF WITH SHIELDS WITH THIS MOD"];
         this.§_-Os§ = ["","SPLITS INTO SIX SMALLER PROJECTILES ON IMPACT","RANDOMLY GIVES EITHER 100 DAMAGE OR 100 HEALTH","AN EXPLOSIVE GOLF BALL WITH EXTRA BOUNCE","DRILLS THROUGH PLANETS AND EXPLODES ON THE OTHER SIDE","A MELEE WEAPON WHICH SENDS ENEMIES FLYING INTO SPACE","ZAP ENEMIES WITH THIS ELECTRIFIED MELEE WEAPON","PUNCH ENEMIES AND SET THEM ON FIRE AT THE SAME TIME","BAZOOKA WITH ADDED EMP TO SET OFF NEARBY MINES","FIRES THREE SEPARATE PROJECTILE ALL AT ONCE","DRILLS COMPLETELY THROUGH A PLANET AND KEEPS GOING","BAZOOKA WITH ADDED FIRE DAMAGE","FIRES THREE SHOTS ONE AFTER THE OTHER","WILL TRIGGER IF ANY UNITS GET TOO CLOSE","DRILLS THROUGH PLANET WHEN TRIGGERED","THROWS OUT PAYLOAD OF MINI EXPLOSIONS WHEN TRIGGERED","DEFEND AGAINST ENEMIES LOCATED AT CLOSE PROXIMITY","GIVES GREATER ACCURACY WHEN AIMING AT A DISTANCE","","MAKE YOUR ENEMIES SICK WITH POISON","A MACHINE GUN WITH A HIGH RATE OF FIRE","TRAVEL AROUND THE GALAXY IN STYLE","WARP TO ANOTHER PLANET IN AN INSTANT","HEAL ONE OF YOUR TEAM OR EVEN ONE OF YOUR ENEMIES","PROJECTILES BOUNCE OFF AND ENEMIES ARE FRIED","DISSOLVES ANY PROJECTILE THAT HITS IT","PROTECTS A WHOLE PLANET FROM PROJECTILES","REMOVES RADIATION FROM RADIOACTIVE PLANETS","DRIVES AROUND UNTIL IT HITS SOMETHING AND THEN BOOM!","CAUSES MASS DESTRUCTION AND RADIATION POISONING","INCOMING WEAPON FIRED FROM AROUND THE EDGE OF THE MAP","A WEAPON THAT YOU CAN CUSTOMISE YOURSELF","FIRES EIGHT SHOTS ONE AFTER THE OTHER","HEAL ONE OF YOUR TEAM OR EVEN ONE OF YOUR ENEMIES","","FIRES SMALL METEORS FROM AROUND THE EDGE OF THE MAP","A STORM OF METEORS FROM AROUND THE EDGE OF THE MAP","SUPER CHARGED ROVER WITH GREATER EXPLOSIVE POWER","LIKE A NUKE BUT A BIT SMALLER...","A WEAPON THAT YOU CAN CUSTOMISE YOURSELF","A WEAPON THAT YOU CAN CUSTOMISE YOURSELF"];
         super(param1);
         x = 1500;
         _loc2_;
         _loc2_;
         y = 138;
         _loc3_;
         _loc3_;
         this.§_-hE§ = new Sprite();
         _loc3_;
         this.§_-hE§.x = 42;
         _loc2_;
         _loc2_;
         this.§_-hE§.y = 170;
         addChild(this.§_-hE§);
      }
      
      public var g_text:TextField;
      
      public var §_-Bh§:TextField;
      
      public var gravitons_text:TextField;
      
      public var §_-vU§:TextField;
      
      public var §_-RA§:TextField;
      
      public var §_-Do§:TextField;
      
      public var §_-cU§:TextField;
      
      private var §_-ir§:Array;
      
      private var §_-Yo§:Array;
      
      private var §_-GZ§:Array;
      
      private var §_-Os§:Array;
      
      private var §_-hE§:Sprite;
      
      private var end_screen:LS_GameEnd;
      
      public var §_-or§:String = "";
      
      public function getOnScreen() : Boolean
      {
         return §_-0B§;
      }
      
      public function §_-04§(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-or§ = param1;
         _loc2_;
         _loc2_;
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
            _loc19_;
            _loc19_;
            this.end_screen = param2;
         }
         var _loc3_:Array = param1.split(",");
         var _loc4_:int = parseInt(_loc3_[0]);
         var _loc5_:int = parseInt(_loc3_[1]);
         var _loc6_:int = parseInt(_loc3_[2]);
         _loc19_;
         _loc19_;
         _loc7_ = parseInt(_loc3_[3]);
         var _loc8_:TextFormat = new TextFormat();
         _loc8_.letterSpacing = -1;
         _loc18_;
         _loc8_.leading = -6;
         this.§_-Bh§.defaultTextFormat = _loc8_;
         _loc18_;
         if(_loc4_ == 0)
         {
            _loc19_;
            _loc19_;
            this.§_-Bh§.text = String("YOU UNLOCKED AN ITEM FOR\nCOMPLETING A CAMPAIGN MISSION");
            _loc19_;
         }
         else
         {
            _loc18_;
            _loc18_;
            if(_loc4_ == 1)
            {
               _loc18_;
               this.§_-Bh§.text = String("YOU UNLOCKED AN ITEM FOR\nCOMPLETING TWO CAMPAIGN MISSIONS");
               _loc18_;
               _loc18_;
            }
            else
            {
               _loc19_;
               _loc19_;
               if(_loc4_ == 2)
               {
                  _loc19_;
                  _loc19_;
                  this.§_-Bh§.text = String("YOU UNLOCKED AN ITEM FOR\nCOMPLETING THREE CAMPAIGN MISSIONS");
               }
               else if(_loc4_ == 3)
               {
                  _loc18_;
                  _loc18_;
                  this.§_-Bh§.text = String("YOU UNLOCKED AN ITEM FOR\nCOMPLETING FOUR CAMPAIGN MISSIONS");
               }
               else
               {
                  _loc18_;
                  _loc18_;
                  if(_loc4_ == 4)
                  {
                     _loc19_;
                     this.§_-Bh§.text = String("YOU UNLOCKED AN ITEM FOR\nCOMPLETING ALL CAMPAIGN MISSIONS");
                     _loc19_;
                     _loc19_;
                  }
                  else
                  {
                     _loc19_;
                     _loc19_;
                     if(_loc4_ == 5)
                     {
                        this.§_-Bh§.text = String("YOU UNLOCKED AN ITEM FOR\nGETTING ALL BRONZE STARS IN THE CAMPAIGN");
                        _loc19_;
                     }
                     else if(_loc4_ == 6)
                     {
                        _loc19_;
                        _loc19_;
                        this.§_-Bh§.text = String("YOU UNLOCKED AN ITEM FOR\nGETTING ALL SILVER STARS IN THE CAMPAIGN");
                     }
                     else if(_loc4_ == 7)
                     {
                        _loc18_;
                        this.§_-Bh§.text = String("YOU UNLOCKED AN ITEM FOR\nGETTING ALL GOLD STARS IN THE CAMPAIGN");
                        _loc18_;
                     }
                     else if(_loc4_ == 8)
                     {
                        this.§_-Bh§.text = String("YOU UNLOCKED AN ITEM FOR\nCOMPLETING A GAME");
                     }
                     else
                     {
                        _loc18_;
                        _loc18_;
                        if(_loc4_ == 9)
                        {
                           _loc19_;
                           this.§_-Bh§.text = String("YOU UNLOCKED AN ITEM FOR\nCOMPLETING THE DAILY CHALLENGE");
                           _loc19_;
                           _loc19_;
                           SafeGlobal.§_-8m§.§_-9K§();
                        }
                        else if(_loc4_ == 10)
                        {
                           _loc18_;
                           this.§_-Bh§.text = String("YOU UNLOCKED AN ITEM FOR\nCOMPLETING THE WEEKLY CHALLENGE");
                           SafeGlobal.§_-8m§.§_-Cr§();
                        }
                        
                     }
                     
                     
                     
                  }
               }
               
            }
         }
         var _loc9_:TextFormat = new TextFormat();
         _loc9_.letterSpacing = -1;
         _loc18_;
         this.gravitons_text.defaultTextFormat = _loc9_;
         _loc19_;
         if(_loc7_ > 0)
         {
            _loc18_;
            this.gravitons_text.text = String(_loc7_);
            _loc18_;
         }
         else
         {
            this.gravitons_text.text = "0";
         }
         var _loc10_:TextFormat = new TextFormat();
         _loc10_.letterSpacing = -2;
         _loc19_;
         _loc19_;
         this.§_-cU§.defaultTextFormat = _loc10_;
         var _loc11_:TextFormat = new TextFormat();
         _loc11_.letterSpacing = -1;
         _loc19_;
         _loc19_;
         this.§_-Do§.defaultTextFormat = _loc11_;
         var _loc12_:TextFormat = new TextFormat();
         _loc12_.letterSpacing = -1;
         _loc18_;
         _loc18_;
         _loc12_.leading = -4;
         _loc19_;
         _loc19_;
         this.§_-vU§.defaultTextFormat = _loc12_;
         var _loc13_:TextFormat = new TextFormat();
         _loc13_.letterSpacing = -1;
         _loc18_;
         _loc18_;
         _loc13_.leading = -4;
         _loc18_;
         this.§_-RA§.defaultTextFormat = _loc13_;
         _loc18_;
         if(this.§_-hE§.numChildren > 0)
         {
            while(this.§_-hE§.numChildren > 0)
            {
               this.§_-hE§.removeChildAt(0);
               _loc18_;
               _loc18_;
            }
         }
         if(_loc5_ == SafeGlobal.UNLOCKTYPE_COLOUR)
         {
            this.§_-cU§.text = "COLOR UNLOCKED";
            this.§_-Do§.text = this.§_-ir§[_loc6_];
            _loc18_;
            this.§_-vU§.text = "A NEW COLOR FOR YOUR TEAM";
            _loc18_;
            this.§_-RA§.text = "CHANGE YOUR COLOR ON THE TEAM SETUP PANEL";
            _loc14_ = getDefinitionByName("ColourUnlockIcon" + _loc6_) as Class;
            _loc15_ = new _loc14_() as Sprite;
            _loc16_ = new ColorTransform();
            _loc16_.color = SafeGlobal.colour_hex[_loc6_];
            _loc17_ = _loc15_.getChildByName("colourbox") as MovieClip;
            if(_loc17_ != null)
            {
               _loc19_;
               _loc17_.transform.colorTransform = _loc16_;
               _loc18_;
               _loc18_;
            }
            this.§_-hE§.addChild(_loc15_);
            _loc18_;
            _loc18_;
         }
         else
         {
            _loc18_;
            if(_loc5_ == SafeGlobal.UNLOCKTYPE_HELMET)
            {
               this.§_-cU§.text = "HELMET UNLOCKED";
               _loc19_;
               _loc19_;
               this.§_-Do§.text = this.§_-Yo§[_loc6_];
               _loc18_;
               this.§_-vU§.text = "A NEW HELMET FOR YOUR TEAM";
               this.§_-RA§.text = "CHANGE YOUR HELMET ON THE TEAM SETUP PANEL";
               _loc19_;
               _loc14_ = getDefinitionByName("HeadClip" + _loc6_) as Class;
               _loc15_ = new _loc14_() as Sprite;
               _loc15_.scaleX = 1.5;
               _loc19_;
               _loc15_.scaleY = 1.5;
               _loc18_;
               _loc15_.x = -3;
               _loc18_;
               _loc15_.y = 4;
               _loc19_;
               this.§_-hE§.addChild(_loc15_);
            }
            else
            {
               _loc18_;
               _loc18_;
               _loc18_;
               _loc18_;
               if(_loc5_ == SafeGlobal.UNLOCKTYPE_WEAPON)
               {
                  this.§_-cU§.text = "WEAPON UNLOCKED";
                  this.§_-Do§.text = String(SafeGlobal.weaponNames[_loc6_]).toUpperCase();
                  _loc18_;
                  this.§_-vU§.text = this.§_-Os§[_loc6_];
                  _loc18_;
                  _loc18_;
                  this.§_-RA§.text = "EQUIP THIS WEAPON ON THE WEAPON SETUP PANEL";
                  this.§_-hE§.addChild(SafeGlobal.§_-e§(_loc6_));
               }
               else if(_loc5_ == SafeGlobal.UNLOCKTYPE_EDITORPACK)
               {
                  _loc19_;
                  _loc19_;
                  this.§_-cU§.text = "EDITOR PACK UNLOCKED";
                  _loc18_;
                  _loc18_;
                  this.§_-Do§.text = "EDITOR PACK " + (_loc6_ + 1);
                  _loc18_;
                  _loc18_;
                  if(_loc6_ == Global.EDITOR_PACK1)
                  {
                     this.§_-vU§.text = "A MAP EDITOR TO BUILD YOUR OWN CUSTOM MAPS";
                  }
                  else
                  {
                     _loc19_;
                     _loc19_;
                     if(_loc6_ == Global.EDITOR_PACK2)
                     {
                        this.§_-vU§.text = "SUN, CLUSTER MINE AND WORMHOLE ELEMENTS";
                        _loc18_;
                        _loc18_;
                     }
                     else
                     {
                        _loc19_;
                        if(_loc6_ == Global.EDITOR_PACK3)
                        {
                           _loc18_;
                           _loc18_;
                           this.§_-vU§.text = "DISSOLVE SHIELD, PLANET SHIELD AND RADIOACTIVE PLANETS";
                           _loc19_;
                           _loc19_;
                        }
                        else
                        {
                           _loc19_;
                           _loc19_;
                           if(_loc6_ == Global.EDITOR_PACK4)
                           {
                              this.§_-vU§.text = "DRILL MINE, BLACK HOLE AND SKY MINE ELEMENTS";
                           }
                           else
                           {
                              _loc18_;
                              _loc18_;
                              if(_loc6_ == Global.EDITOR_PACK5)
                              {
                                 this.§_-vU§.text = "";
                              }
                              else
                              {
                                 this.§_-vU§.text = "";
                              }
                           }
                        }
                     }
                  }
                  this.§_-RA§.text = "ACCESS THE MAP EDITOR FROM THE HUB SCREEN";
                  _loc19_;
                  _loc14_ = getDefinitionByName("EditorPackIcon" + _loc6_) as Class;
                  _loc15_ = new _loc14_() as Sprite;
                  _loc18_;
                  _loc18_;
                  this.§_-hE§.addChild(_loc15_);
               }
               else
               {
                  _loc19_;
                  if(_loc5_ == SafeGlobal.UNLOCKTYPE_ANIMPACK)
                  {
                     _loc18_;
                     this.§_-cU§.text = "ANIMATIONS UNLOCKED";
                     _loc19_;
                     this.§_-Do§.text = "ANIMATION PACK " + (_loc6_ + 1);
                     this.§_-vU§.text = "NEW IDLE AND VICTORY ANIMATIONS FOR YOUR TEAM";
                     _loc18_;
                     this.§_-RA§.text = "CHANGE ANIMATIONS ON THE TEAM SETUP PANEL";
                     _loc18_;
                     _loc19_;
                     if(_loc6_ == 0)
                     {
                        this.§_-8S§(0,0);
                     }
                     else if(_loc6_ == 1)
                     {
                        _loc19_;
                        this.§_-8S§(1,2);
                     }
                     else
                     {
                        _loc18_;
                        if(_loc6_ == 2)
                        {
                           _loc18_;
                           _loc18_;
                           this.§_-8S§(2,3);
                           _loc19_;
                           _loc19_;
                        }
                        else if(_loc6_ == 3)
                        {
                           this.§_-8S§(4,7);
                           _loc18_;
                           _loc18_;
                        }
                        
                     }
                     
                  }
                  else if(_loc5_ == SafeGlobal.UNLOCKTYPE_CWPACK)
                  {
                     this.§_-cU§.text = "CUSTOM WEAPON PACK";
                     _loc19_;
                     _loc19_;
                     this.§_-Do§.text = "CUSTOM WEAPON PACK " + (_loc6_ + 1);
                     this.§_-vU§.text = "NEW ELEMENTS TO USE IN YOUR CUSTOM WEAPON";
                     _loc19_;
                     _loc19_;
                     this.§_-RA§.text = "EDIT YOUR WEAPON ON THE WEAPON SETUP PANEL";
                     _loc14_ = getDefinitionByName("CWPackIcon" + _loc6_) as Class;
                     _loc15_ = new _loc14_() as Sprite;
                     _loc19_;
                     this.§_-hE§.addChild(_loc15_);
                  }
                  else
                  {
                     _loc18_;
                     if(_loc5_ == SafeGlobal.UNLOCKTYPE_MOD)
                     {
                        this.§_-cU§.text = "CUSTOM GAME MOD";
                        this.§_-Do§.text = Global.modNames[_loc6_].toUpperCase();
                        this.§_-vU§.text = this.§_-GZ§[_loc6_];
                        _loc19_;
                        _loc19_;
                        this.§_-RA§.text = "USE MODS WHEN SETTING UP A CUSTOM GAME";
                        _loc15_ = new §_-Rx§(_loc6_) as Sprite;
                        _loc15_.scaleX = 0.7;
                        _loc18_;
                        _loc15_.scaleY = 0.7;
                        _loc18_;
                        _loc18_;
                        this.§_-hE§.addChild(_loc15_);
                     }
                     else
                     {
                        _loc18_;
                        _loc18_;
                        if(_loc5_ == SafeGlobal.§_-ya§)
                        {
                           _loc18_;
                           _loc18_;
                           this.§_-cU§.text = "REPLAY EDITOR";
                           this.§_-Do§.text = "REPLAY EDITOR";
                           _loc18_;
                           this.§_-vU§.text = "WATCH REPLAYS AND SHARE EPIC SHOTS WITH THE WORLD";
                           this.§_-RA§.text = "ACCESS THE REPLAY EDITOR FROM THE HUB SCREEN";
                           _loc19_;
                           _loc19_;
                           _loc15_ = new §_-UJ§() as Sprite;
                           _loc15_.x = -17;
                           _loc19_;
                           _loc15_.y = -20;
                           _loc18_;
                           _loc18_;
                           this.§_-hE§.addChild(_loc15_);
                        }
                        else
                        {
                           _loc18_;
                           _loc18_;
                           _loc18_;
                           if(_loc5_ == SafeGlobal.§_-pQ§)
                           {
                              _loc19_;
                              _loc19_;
                              this.§_-cU§.text = "TEAM BOOSTER";
                              this.§_-Do§.text = String("DOUBLE XP x" + _loc6_);
                              _loc18_;
                              this.§_-vU§.text = "GIVES YOUR TEAM DOUBLE XP";
                              _loc19_;
                              this.§_-RA§.text = "ACTIVATE TEAM BOOSTERS ON THE TEAM SET UP PANEL";
                              _loc15_ = new BoosterIcon1() as Sprite;
                              _loc18_;
                              this.§_-hE§.addChild(_loc15_);
                           }
                           else if(_loc5_ == SafeGlobal.§_-Kg§)
                           {
                              _loc19_;
                              _loc19_;
                              this.§_-cU§.text = "TEAM BOOSTER";
                              this.§_-Do§.text = String("TRIPLE XP x" + _loc6_);
                              _loc19_;
                              this.§_-vU§.text = "GIVES YOUR TEAM TRIPLE XP";
                              this.§_-RA§.text = "ACTIVATE TEAM BOOSTERS ON THE TEAM SET UP PANEL";
                              _loc15_ = new BoosterIcon2() as Sprite;
                              _loc19_;
                              this.§_-hE§.addChild(_loc15_);
                           }
                           
                        }
                     }
                  }
                  
               }
               
            }
         }
         visible = true;
         _loc19_;
         _loc19_;
         Global.coins.setInt(Global.coins.getInt() + _loc7_);
         _loc19_;
         Global.lobby_display.lobby_stats.§_-Cm§();
      }
      
      public function §_-6f§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-or§ = "";
         _loc1_;
         this.tweenOut(true);
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.end_screen.§_-vC§();
      }
      
      public function §_-He§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(this.§_-or§ != "")
         {
            _loc3_;
            _loc3_;
            this.update(this.§_-or§);
            _loc3_;
            _loc3_;
            this.tweenIn(false);
         }
      }
      
      override public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!§_-0B§)
         {
            _loc2_;
            tweenInExtras();
            §_-hH§ = new Tween(this,"x",Strong.easeOut,x,130,1,true);
            _loc2_;
            _loc2_;
            §_-hH§.start();
            if(param1)
            {
               shadow_mc.alpha = 0;
               shadow_mc.visible = true;
               fade_in = new Tween(shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               _loc3_;
               fade_in.start();
               _loc2_;
               _loc2_;
            }
            §_-0B§ = true;
         }
      }
      
      override public function tweenOut(param1:Boolean = true) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(§_-0B§)
         {
            §_-Cs§ = new Tween(this,"x",Strong.easeOut,x,1500,1,true);
            _loc3_;
            _loc3_;
            §_-Cs§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-He§,false,0,true);
            §_-Cs§.start();
            _loc2_;
            _loc2_;
            if(param1)
            {
               §_-cG§ = new Tween(shadow_mc,"alpha",Strong.easeOut,0.5,0,1,true);
               §_-cG§.addEventListener(TweenEvent.MOTION_FINISH,§_-nL§,false,0,true);
               _loc3_;
               _loc3_;
               §_-cG§.start();
            }
            §_-0B§ = false;
         }
      }
      
      private function §_-8S§(param1:int, param2:int) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:MovieClip = this.§_-iB§(param1);
         _loc5_;
         _loc3_.x = -15;
         _loc5_;
         _loc3_.y = 17;
         var _loc4_:MovieClip = this.§_-tI§(param2);
         _loc4_.x = 15;
         _loc5_;
         _loc4_.y = 17;
         _loc5_;
         _loc5_;
         this.§_-hE§.addChild(_loc3_);
         _loc6_;
         this.§_-hE§.addChild(_loc4_);
      }
      
      private function §_-iB§(param1:int) : MovieClip
      {
         var _loc15_:* = false;
         var _loc16_:* = true;
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
         var _loc2_:MovieClip = SafeGlobal.§with§(param1);
         _loc15_;
         if(_loc2_ != null)
         {
            _loc16_;
            _loc15_;
            _loc16_;
            _loc16_;
            _loc3_ = Global.favourite_helmet.getInt();
            _loc15_;
            _loc16_;
            _loc4_ = 1;
            _loc16_;
            _loc16_;
            _loc15_;
            _loc15_;
            _loc5_ = 1;
            _loc15_;
            _loc6_ = 1;
            _loc7_ = getDefinitionByName("HeadClip" + _loc3_) as Class;
            _loc8_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc16_;
            _loc2_.head.addChild(_loc8_);
            _loc15_;
            _loc15_;
            if(_loc2_.body is §_-7w§)
            {
               _loc7_ = getDefinitionByName("BodyClip" + _loc4_) as Class;
            }
            else
            {
               _loc7_ = getDefinitionByName("BodyClipNew" + _loc4_) as Class;
            }
            _loc9_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc2_.body.addChild(_loc9_);
            _loc7_ = getDefinitionByName("HandClip" + _loc5_) as Class;
            _loc10_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc15_;
            _loc2_.righthand.addChild(_loc10_);
            _loc11_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc15_;
            _loc2_.lefthand.addChild(_loc11_);
            _loc7_ = getDefinitionByName("FootClip" + _loc6_) as Class;
            _loc12_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc16_;
            _loc2_.rightfoot.addChild(_loc12_);
            _loc13_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc15_;
            _loc2_.leftfoot.addChild(_loc13_);
            _loc14_ = new ColorTransform();
            _loc14_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
            _loc16_;
            _loc16_;
            _loc8_.inside.transform.colorTransform = _loc14_;
            _loc15_;
            _loc9_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc16_;
            _loc11_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc13_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc16_;
            _loc10_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc16_;
            _loc12_.inside.transform.colorTransform = _loc14_;
            _loc15_;
            _loc15_;
            _loc2_.scaleX = 0.8;
            _loc15_;
            _loc15_;
            _loc2_.scaleY = 0.8;
            _loc16_;
            return _loc2_;
         }
         return new MovieClip();
      }
      
      private function §_-tI§(param1:int) : MovieClip
      {
         var _loc15_:* = false;
         var _loc16_:* = true;
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
         var _loc2_:MovieClip = SafeGlobal.§_-c-§(param1);
         _loc15_;
         if(_loc2_ != null)
         {
            _loc16_;
            _loc16_;
            _loc16_;
            _loc16_;
            _loc16_;
            _loc16_;
            _loc3_ = Global.favourite_helmet.getInt();
            _loc15_;
            _loc15_;
            _loc16_;
            _loc16_;
            _loc4_ = 1;
            _loc16_;
            _loc16_;
            _loc16_;
            _loc5_ = 1;
            _loc15_;
            _loc15_;
            _loc6_ = 1;
            _loc7_ = getDefinitionByName("HeadClip" + _loc3_) as Class;
            _loc8_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc2_.head.addChild(_loc8_);
            _loc15_;
            if(_loc2_.body is §_-7w§)
            {
               _loc7_ = getDefinitionByName("BodyClip" + _loc4_) as Class;
            }
            else
            {
               _loc7_ = getDefinitionByName("BodyClipNew" + _loc4_) as Class;
            }
            _loc9_ = new _loc7_() as MovieClip;
            _loc15_;
            _loc15_;
            _loc2_.body.addChild(_loc9_);
            _loc7_ = getDefinitionByName("HandClip" + _loc5_) as Class;
            _loc10_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc16_;
            _loc2_.righthand.addChild(_loc10_);
            _loc11_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc16_;
            _loc2_.lefthand.addChild(_loc11_);
            _loc7_ = getDefinitionByName("FootClip" + _loc6_) as Class;
            _loc12_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc2_.rightfoot.addChild(_loc12_);
            _loc13_ = new _loc7_() as MovieClip;
            _loc16_;
            _loc2_.leftfoot.addChild(_loc13_);
            _loc14_ = new ColorTransform();
            _loc14_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
            _loc8_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc9_.inside.transform.colorTransform = _loc14_;
            _loc11_.inside.transform.colorTransform = _loc14_;
            _loc13_.inside.transform.colorTransform = _loc14_;
            _loc10_.inside.transform.colorTransform = _loc14_;
            _loc12_.inside.transform.colorTransform = _loc14_;
            _loc16_;
            _loc16_;
            _loc2_.scaleX = 0.8;
            _loc2_.scaleY = 0.8;
            _loc16_;
            _loc16_;
            return _loc2_;
         }
         return new MovieClip();
      }
   }
}
