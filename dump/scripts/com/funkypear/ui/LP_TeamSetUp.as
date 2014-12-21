package com.funkypear.ui
{
   import §_-bY§.ButtonSelectIdleAnim;
   import flash.text.TextField;
   import §_-bY§.ButtonSelectHelmet;
   import §_-bY§.ButtonSelectFaveColour;
   import §_-bY§.ButtonSelectBooster;
   import §_-bY§.ButtonSelectVictoryAnim;
   import §_-bk§.§_-aq§;
   import flash.events.Event;
   import §_-bk§.§_-5S§;
   import flash.display.Sprite;
   
   public class LP_TeamSetUp extends §_-uw§
   {
      
      public function LP_TeamSetUp(param1:Sprite)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.level = new §_-aq§(-1);
         _loc2_;
         _loc2_;
         this.§_-VP§ = new §_-aq§(-1);
         _loc2_;
         _loc2_;
         super(param1);
         _loc3_;
         addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
      }
      
      public var button_idle_0:ButtonSelectIdleAnim;
      
      public var unit5:UnitBox;
      
      public var button_idle_3:ButtonSelectIdleAnim;
      
      public var unit6:UnitBox;
      
      public var button_idle_2:ButtonSelectIdleAnim;
      
      public var points:TextField;
      
      public var §_-gR§:ButtonSelectHelmet;
      
      public var §_-Nc§:ButtonSelectFaveColour;
      
      public var §_-Nn§:ButtonSelectBooster;
      
      public var unit1:UnitBox;
      
      public var unit2:UnitBox;
      
      public var §_-gx§:ButtonSelectVictoryAnim;
      
      public var unit3:UnitBox;
      
      public var button_idle_1:ButtonSelectIdleAnim;
      
      public var unit4:UnitBox;
      
      public var level:§_-aq§;
      
      public var §_-VP§:§_-aq§;
      
      public var selectColour:FaveColourSelectPanel;
      
      public var §_-x8§:HelmetSelectPanel;
      
      public var §_-WR§:VictorySelectPanel;
      
      public var §_-XL§:IdleSelectPanel;
      
      public var §_-0-C§:BoosterSelectPanel;
      
      private var §_-za§:int = -1;
      
      public function addedToStage(param1:Event) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         this.selectColour = new FaveColourSelectPanel();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         this.selectColour.x = this.§_-Nc§.x;
         this.selectColour.y = this.§_-Nc§.y;
         _loc3_;
         _loc3_;
         addChild(this.selectColour);
         _loc2_;
         this.§_-x8§ = new HelmetSelectPanel();
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-x8§.x = this.§_-gR§.x;
         _loc2_;
         this.§_-x8§.y = this.§_-gR§.y;
         addChild(this.§_-x8§);
         this.§_-WR§ = new VictorySelectPanel();
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-WR§.x = this.§_-gx§.x;
         this.§_-WR§.y = this.§_-gx§.y;
         _loc2_;
         _loc2_;
         addChild(this.§_-WR§);
         this.§_-XL§ = new IdleSelectPanel();
         _loc2_;
         _loc3_;
         _loc2_;
         this.§_-XL§.x = this.button_idle_0.x;
         this.§_-XL§.y = this.button_idle_0.y;
         addChild(this.§_-XL§);
         this.§_-0-C§ = new BoosterSelectPanel();
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-0-C§.x = this.§_-Nn§.x;
         _loc3_;
         _loc3_;
         this.§_-0-C§.y = this.§_-Nn§.y;
         addChild(this.§_-0-C§);
         this.§_-CG§();
         _loc3_;
         this.§_-Fs§();
         _loc2_;
         this.§_-6g§();
         _loc2_;
         this.§_-Vx§();
         this.§_-Nj§();
      }
      
      public function updateHealth(param1:§_-5S§, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         param1.updateHealth(param2);
         _loc3_;
         _loc3_;
         this.updatePoints();
      }
      
      public function §_-1S§(param1:§_-5S§, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         param1.§_-1S§(param2);
         _loc4_;
         this.updatePoints();
      }
      
      public function buyUnit(param1:§_-5S§, param2:UnitBox, param3:int) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.§_-VP§.getInt() >= 10)
         {
            _loc4_;
            param1.buyUnit();
            this.updatePoints();
            _loc4_;
            _loc4_;
            param2.§_-9k§(param1);
            _loc4_;
            this.§_-iL§();
            this.updatePoints();
         }
      }
      
      public function sellUnit(param1:§_-5S§, param2:UnitBox, param3:int) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         param1.sellUnit();
         _loc4_;
         this.updatePoints();
         _loc5_;
         _loc5_;
         param2.§_-9k§(param1);
         _loc4_;
         this.§_-iL§();
         _loc4_;
         this.updatePoints();
      }
      
      public function update() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.unit1.§_-9k§(Global.unitDetails[0]);
         this.unit2.§_-9k§(Global.unitDetails[1]);
         this.unit3.§_-9k§(Global.unitDetails[2]);
         this.unit4.§_-9k§(Global.unitDetails[3]);
         this.unit5.§_-9k§(Global.unitDetails[4]);
         this.unit6.§_-9k§(Global.unitDetails[5]);
         this.updatePoints();
         this.§_-Nc§.§_-r7§(Global.favourite_colour.getInt());
         this.§_-gR§.§_-Qc§(Global.favourite_helmet.getInt());
         _loc2_;
         this.§_-gx§.§_-bg§(Global.anim_victory.getInt());
         this.button_idle_0.§_-bg§(Global.anim_idle[0].getInt());
         this.button_idle_1.§_-bg§(Global.anim_idle[1].getInt());
         this.button_idle_2.§_-bg§(Global.anim_idle[2].getInt());
         this.button_idle_3.§_-bg§(Global.anim_idle[3].getInt());
         _loc2_;
         _loc2_;
         this.§_-Nn§.§_-Nh§(SafeGlobal.§_-eN§.getInt());
      }
      
      public function §_-LH§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.selectColour.§_-Vw§();
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         this.selectColour.visible = true;
         _loc2_;
         _loc1_;
         _loc1_;
         this.selectColour.mouseChildren = true;
         _loc2_;
         this.selectColour.mouseEnabled = true;
         this.§_-Fs§();
         this.§_-Vx§();
         _loc2_;
         _loc2_;
         this.§_-6g§();
         _loc2_;
         this.§_-Nj§();
      }
      
      public function §_-CG§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc1_;
         _loc2_;
         this.selectColour.visible = false;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.selectColour.mouseChildren = false;
         _loc1_;
         _loc1_;
         this.selectColour.mouseEnabled = false;
      }
      
      public function §_-CR§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-x8§.§_-ui§();
         _loc1_;
         _loc1_;
         this.§_-x8§.visible = true;
         _loc2_;
         _loc1_;
         _loc2_;
         this.§_-x8§.mouseChildren = true;
         _loc1_;
         this.§_-x8§.mouseEnabled = true;
         this.§_-CG§();
         _loc2_;
         _loc2_;
         this.§_-Vx§();
         this.§_-6g§();
         _loc1_;
         this.§_-Nj§();
      }
      
      public function §_-Fs§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-x8§.visible = false;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-x8§.mouseChildren = false;
         _loc1_;
         this.§_-x8§.mouseEnabled = false;
      }
      
      public function §_-wi§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-WR§.§_-Ft§();
         _loc1_;
         _loc1_;
         _loc2_;
         this.§_-WR§.visible = true;
         _loc1_;
         _loc1_;
         _loc2_;
         this.§_-WR§.mouseChildren = true;
         this.§_-WR§.mouseEnabled = true;
         this.§_-Fs§();
         this.§_-Vx§();
         _loc2_;
         this.§_-CG§();
         this.§_-Nj§();
      }
      
      public function §_-6g§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-WR§.visible = false;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         this.§_-WR§.mouseChildren = false;
         _loc1_;
         _loc1_;
         this.§_-WR§.mouseEnabled = false;
      }
      
      public function §_-Ui§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-0-C§.§_-y3§();
         _loc2_;
         _loc2_;
         this.§_-0-C§.visible = true;
         _loc1_;
         _loc2_;
         this.§_-0-C§.mouseChildren = true;
         this.§_-0-C§.mouseEnabled = true;
         this.§_-Fs§();
         this.§_-Vx§();
         this.§_-6g§();
         this.§_-CG§();
      }
      
      public function §_-Nj§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-0-C§.visible = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-0-C§.mouseChildren = false;
         _loc1_;
         _loc1_;
         this.§_-0-C§.mouseEnabled = false;
      }
      
      public function §_-2c§(param1:int, param2:Number, param3:Number) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         this.§_-XL§.x = param2;
         _loc5_;
         this.§_-XL§.y = param3;
         _loc5_;
         _loc5_;
         _loc5_;
         this.§_-XL§.§_-Ft§(param1);
         _loc4_;
         _loc5_;
         _loc5_;
         this.§_-XL§.visible = true;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         this.§_-XL§.mouseChildren = true;
         _loc4_;
         _loc4_;
         this.§_-XL§.mouseEnabled = true;
         this.§_-Fs§();
         this.§_-CG§();
         _loc5_;
         this.§_-6g§();
         this.§_-Nj§();
      }
      
      public function §_-Vx§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.§_-XL§.visible = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc2_;
         _loc2_;
         this.§_-XL§.mouseChildren = false;
         _loc2_;
         this.§_-XL§.mouseEnabled = false;
      }
      
      public function updatePoints() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.level.setInt(Global.getLevel(Global.teamXP.getInt()));
         _loc2_;
         _loc2_;
         this.§_-VP§.setInt(this.level.getInt() * 2);
         var _loc1_:* = 0;
         while(true)
         {
            _loc1_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc1_ > 3;
            _loc1_ > 3;
            if(Global.unitDetails[_loc1_].active)
            {
               _loc3_;
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               _loc2_;
               _loc2_;
               this.§_-VP§.setInt(this.§_-VP§.getInt() - (Global.unitDetails[_loc1_].health - 1));
               _loc2_;
               _loc2_;
               this.§_-VP§.setInt(this.§_-VP§.getInt() - (Global.unitDetails[_loc1_].accuracy - 1));
               _loc2_;
               _loc2_;
            }
            _loc1_++;
         }
      }
      
      public function §_-iL§() : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:§_-5S§ = null;
         var _loc1_:* = true;
         while(true)
         {
            _loc1_;
            _loc5_;
            _loc5_;
            _loc1_ = false;
            _loc6_;
            _loc2_ = 0;
            while(_loc2_ < 6)
            {
               _loc5_;
               _loc6_;
               if(!Global.unitDetails[_loc2_].active)
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc6_;
                  _loc3_ = _loc2_ + 1;
                  while(true)
                  {
                     _loc6_;
                     _loc5_;
                     _loc5_;
                     if(_loc3_ >= 6)
                     {
                        _loc6_;
                        break;
                     }
                     _loc6_;
                     _loc5_;
                     if(Global.unitDetails[_loc3_].active)
                     {
                        _loc4_ = Global.unitDetails[_loc3_];
                        _loc6_;
                        _loc6_;
                        _loc5_;
                        _loc5_;
                        _loc5_;
                        Global.unitDetails[_loc3_] = Global.unitDetails[_loc2_];
                        _loc5_;
                        _loc5_;
                        Global.unitDetails[_loc2_] = _loc4_;
                        _loc5_;
                        _loc1_ = true;
                        break;
                     }
                     _loc3_++;
                     _loc5_;
                     _loc5_;
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public function §_-5F§(param1:* = false) : String
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:String = null;
         var _loc2_:Array = new Array();
         var _loc4_:* = 0;
         while(true)
         {
            _loc4_;
            _loc6_;
            _loc6_;
            _loc6_;
            if(Global.unitDetails[_loc4_].active)
            {
               _loc5_;
               _loc5_;
               if(param1)
               {
                  _loc6_;
                  _loc6_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  Global.unitDetails[_loc4_].name = this.§_-Pp§(this["unit" + (_loc4_ + 1)].unit_name.text);
                  _loc6_;
                  this["unit" + (_loc4_ + 1)].unit_name.text = Global.unitDetails[_loc4_].name;
                  _loc6_;
                  _loc6_;
               }
               _loc6_;
               _loc6_;
               _loc5_;
               _loc6_;
               _loc5_;
               _loc6_;
               _loc5_;
               _loc5_;
               _loc3_ = Global.unitDetails[_loc4_].name + "," + Global.unitDetails[_loc4_].health + "," + Global.unitDetails[_loc4_].accuracy;
               _loc5_;
               _loc5_;
            }
            else
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc3_ = Global.unitDetails[_loc4_].name + "," + 0 + "," + 0;
            }
            _loc2_.push(_loc3_);
            _loc4_++;
         }
      }
      
      public function §_-Pp§(param1:String) : String
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var param1:String = this.§_-So§(param1,",");
         _loc3_;
         _loc3_;
         _loc3_;
         param1 = this.§_-So§(param1,"|");
         _loc3_;
         _loc3_;
         param1 = this.§_-So§(param1,":");
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         param1 = this.§_-So§(param1,"$");
         _loc2_;
         _loc2_;
         _loc2_;
         param1 = this.§_-So§(param1,"£");
         _loc3_;
         _loc3_;
         param1 = this.§_-So§(param1,"%");
         _loc2_;
         _loc2_;
         _loc3_;
         param1 = this.§_-So§(param1,";");
         _loc2_;
         _loc2_;
         param1 = this.§_-So§(param1,"&");
         _loc2_;
         _loc2_;
         param1 = this.§_-So§(param1,"#");
         return param1;
      }
      
      public function §_-So§(param1:String, param2:String) : String
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:* = 0;
         _loc3_ = param1.split(param2);
         _loc7_;
         if(_loc3_.length > 1)
         {
            _loc6_;
            _loc6_;
            _loc4_ = "";
            _loc6_;
            _loc6_;
            _loc5_ = 0;
            while(_loc5_ < _loc3_.length)
            {
               _loc6_;
               _loc6_;
               _loc7_;
               _loc4_ = _loc4_ + _loc3_[_loc5_];
               _loc7_;
               _loc5_++;
               _loc7_;
            }
            _loc6_;
            _loc6_;
            _loc7_;
            return _loc4_;
         }
         return param1;
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         tweenOut();
         _loc2_;
         Global.lobby_display.lobby_menu.§_-pk§();
         _loc2_;
         _loc2_;
         this.§_-uc§();
      }
      
      public function §_-uc§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         var _loc1_:String = this.§_-5F§(true);
         _loc2_;
         _loc2_;
         Global.lobby_client.commitUnitChanges(_loc1_);
      }
      
      public function §_-Z9§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(this.selectColour.visible)
         {
            _loc2_;
            _loc2_;
            this.§_-CG§();
            _loc1_;
            _loc1_;
         }
         else
         {
            this.§_-LH§();
         }
      }
      
      public function §_-Fr§(param1:int) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-CG§();
         this.§_-Nc§.§_-r7§(param1);
         this.§_-gR§.§_-r7§(param1);
         Global.favourite_colour.setInt(param1);
         this.unit1.§_-XR§();
         _loc2_;
         _loc2_;
         this.unit2.§_-XR§();
         this.unit3.§_-XR§();
         this.unit4.§_-XR§();
         this.unit5.§_-XR§();
         _loc3_;
         _loc3_;
         this.unit6.§_-XR§();
         _loc2_;
         this.§_-gx§.§_-bg§();
         this.button_idle_0.§_-bg§();
         this.button_idle_1.§_-bg§();
         _loc2_;
         this.button_idle_2.§_-bg§();
         this.button_idle_3.§_-bg§();
      }
      
      public function §_-aG§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(this.§_-x8§.visible)
         {
            _loc2_;
            _loc2_;
            this.§_-Fs§();
            _loc2_;
            _loc2_;
         }
         else
         {
            this.§_-CR§();
         }
      }
      
      public function §_-hz§(param1:int) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         this.§_-Fs§();
         _loc4_;
         this.§_-gR§.§_-Qc§(param1);
         _loc4_;
         _loc4_;
         var _loc2_:int = Global.favourite_helmet.getInt();
         Global.favourite_helmet.setInt(param1);
         _loc3_;
         this.unit1.§_-XR§(_loc2_);
         _loc4_;
         _loc4_;
         this.unit2.§_-XR§(_loc2_);
         this.unit3.§_-XR§(_loc2_);
         this.unit4.§_-XR§(_loc2_);
         _loc4_;
         _loc4_;
         this.unit5.§_-XR§(_loc2_);
         this.unit6.§_-XR§(_loc2_);
         this.§_-gx§.§_-bg§();
         this.button_idle_0.§_-bg§();
         this.button_idle_1.§_-bg§();
         _loc4_;
         this.button_idle_2.§_-bg§();
         this.button_idle_3.§_-bg§();
      }
      
      public function §_-tP§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(this.§_-WR§.visible)
         {
            _loc2_;
            _loc2_;
            this.§_-6g§();
            _loc1_;
         }
         else
         {
            this.§_-wi§();
         }
      }
      
      public function §_-XH§(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-6g§();
         _loc3_;
         this.§_-gx§.§_-bg§(param1);
         _loc2_;
         Global.anim_victory.setInt(param1);
      }
      
      public function §_-Cd§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.§_-0-C§.visible)
         {
            _loc1_;
            _loc1_;
            this.§_-Nj§();
            _loc2_;
            _loc2_;
         }
         else
         {
            this.§_-Ui§();
         }
      }
      
      public function §_-g6§(param1:int) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-Nj§();
         _loc3_;
         this.§_-Nn§.§_-Nh§(param1);
         _loc3_;
         SafeGlobal.§_-eN§.setInt(param1);
      }
      
      public function §_-Lb§(param1:int, param2:Number, param3:Number) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         if((this.§_-XL§.visible) && this.§_-za§ == param1)
         {
            _loc5_;
            this.§_-Vx§();
            _loc5_;
         }
         else
         {
            this.§_-2c§(param1,param2,param3);
            _loc4_;
            this.§_-za§ = param1;
         }
      }
      
      public function §_-9r§(param1:int, param2:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         this.§_-Vx§();
         _loc4_;
         _loc3_;
         if(param2 == 0)
         {
            _loc4_;
            this.button_idle_0.§_-bg§(param1);
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc3_;
            if(param2 == 1)
            {
               this.button_idle_1.§_-bg§(param1);
               _loc3_;
            }
            else
            {
               _loc3_;
               _loc3_;
               _loc3_;
               if(param2 == 2)
               {
                  this.button_idle_2.§_-bg§(param1);
                  _loc3_;
                  _loc3_;
               }
               else if(param2 == 3)
               {
                  _loc4_;
                  _loc4_;
                  this.button_idle_3.§_-bg§(param1);
               }
               
            }
         }
         Global.anim_idle[param2].setInt(param1);
      }
   }
}
