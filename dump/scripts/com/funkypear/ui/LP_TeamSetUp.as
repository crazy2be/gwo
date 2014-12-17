package com.funkypear.ui
{
   import §_-ZN§.ButtonSelectIdleAnim;
   import flash.text.TextField;
   import §_-ZN§.ButtonSelectHelmet;
   import §_-ZN§.ButtonSelectFaveColour;
   import §_-ZN§.ButtonSelectBooster;
   import §_-ZN§.ButtonSelectVictoryAnim;
   import §_-WX§.§_-A§;
   import flash.events.Event;
   import §_-WX§.§_-Xd§;
   import flash.display.Sprite;
   
   public class LP_TeamSetUp extends §_-A3§
   {
      
      public function LP_TeamSetUp(param1:Sprite)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.level = new §_-A§(-1);
         _loc2_;
         _loc2_;
         this.§_-fk§ = new §_-A§(-1);
         _loc2_;
         _loc2_;
         super(param1);
         _loc2_;
         _loc2_;
         addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
      }
      
      public var button_idle_0:ButtonSelectIdleAnim;
      
      public var unit5:UnitBox;
      
      public var button_idle_3:ButtonSelectIdleAnim;
      
      public var unit6:UnitBox;
      
      public var button_idle_2:ButtonSelectIdleAnim;
      
      public var points:TextField;
      
      public var §_-Ku§:ButtonSelectHelmet;
      
      public var §_-yr§:ButtonSelectFaveColour;
      
      public var §_-XX§:ButtonSelectBooster;
      
      public var unit1:UnitBox;
      
      public var unit2:UnitBox;
      
      public var §_-qQ§:ButtonSelectVictoryAnim;
      
      public var unit3:UnitBox;
      
      public var button_idle_1:ButtonSelectIdleAnim;
      
      public var unit4:UnitBox;
      
      public var level:§_-A§;
      
      public var §_-fk§:§_-A§;
      
      public var selectColour:FaveColourSelectPanel;
      
      public var §_-7F§:HelmetSelectPanel;
      
      public var §_-wd§:VictorySelectPanel;
      
      public var §_-Jx§:IdleSelectPanel;
      
      public var §_-7J§:BoosterSelectPanel;
      
      private var §_-Qv§:int = -1;
      
      public function addedToStage(param1:Event) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         this.selectColour = new FaveColourSelectPanel();
         _loc2_;
         _loc2_;
         _loc3_;
         this.selectColour.x = this.§_-yr§.x;
         _loc2_;
         this.selectColour.y = this.§_-yr§.y;
         addChild(this.selectColour);
         _loc2_;
         _loc2_;
         this.§_-7F§ = new HelmetSelectPanel();
         _loc3_;
         _loc3_;
         this.§_-7F§.x = this.§_-Ku§.x;
         this.§_-7F§.y = this.§_-Ku§.y;
         addChild(this.§_-7F§);
         this.§_-wd§ = new VictorySelectPanel();
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-wd§.x = this.§_-qQ§.x;
         _loc3_;
         _loc3_;
         this.§_-wd§.y = this.§_-qQ§.y;
         addChild(this.§_-wd§);
         this.§_-Jx§ = new IdleSelectPanel();
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-Jx§.x = this.button_idle_0.x;
         _loc2_;
         _loc2_;
         this.§_-Jx§.y = this.button_idle_0.y;
         _loc2_;
         addChild(this.§_-Jx§);
         _loc3_;
         this.§_-7J§ = new BoosterSelectPanel();
         _loc2_;
         _loc2_;
         _loc3_;
         this.§_-7J§.x = this.§_-XX§.x;
         this.§_-7J§.y = this.§_-XX§.y;
         _loc2_;
         addChild(this.§_-7J§);
         _loc2_;
         _loc2_;
         this.§_-fx§();
         _loc2_;
         this.§_-Br§();
         _loc3_;
         this.§_-Xz§();
         this.§_-sY§();
         _loc2_;
         _loc2_;
         this.§_-jL§();
      }
      
      public function updateHealth(param1:§_-Xd§, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         param1.updateHealth(param2);
         _loc4_;
         _loc4_;
         this.updatePoints();
      }
      
      public function §_-NT§(param1:§_-Xd§, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         param1.§_-NT§(param2);
         _loc4_;
         this.updatePoints();
      }
      
      public function buyUnit(param1:§_-Xd§, param2:UnitBox, param3:int) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.§_-fk§.getInt() >= 10)
         {
            _loc5_;
            _loc5_;
            param1.buyUnit();
            this.updatePoints();
            param2.§_-No§(param1);
            _loc4_;
            this.§_-gu§();
            this.updatePoints();
         }
      }
      
      public function sellUnit(param1:§_-Xd§, param2:UnitBox, param3:int) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         param1.sellUnit();
         _loc4_;
         _loc4_;
         this.updatePoints();
         _loc5_;
         _loc5_;
         param2.§_-No§(param1);
         _loc4_;
         _loc4_;
         this.§_-gu§();
         _loc5_;
         this.updatePoints();
      }
      
      public function update() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.unit1.§_-No§(Global.unitDetails[0]);
         this.unit2.§_-No§(Global.unitDetails[1]);
         this.unit3.§_-No§(Global.unitDetails[2]);
         this.unit4.§_-No§(Global.unitDetails[3]);
         this.unit5.§_-No§(Global.unitDetails[4]);
         this.unit6.§_-No§(Global.unitDetails[5]);
         this.updatePoints();
         this.§_-yr§.§_-ma§(Global.favourite_colour.getInt());
         _loc2_;
         this.§_-Ku§.§_-3P§(Global.favourite_helmet.getInt());
         this.§_-qQ§.§_-eL§(Global.anim_victory.getInt());
         _loc1_;
         this.button_idle_0.§_-eL§(Global.anim_idle[0].getInt());
         _loc2_;
         this.button_idle_1.§_-eL§(Global.anim_idle[1].getInt());
         this.button_idle_2.§_-eL§(Global.anim_idle[2].getInt());
         _loc1_;
         this.button_idle_3.§_-eL§(Global.anim_idle[3].getInt());
         _loc1_;
         this.§_-XX§.§_-qn§(SafeGlobal.§_-Ds§.getInt());
      }
      
      public function §_-QV§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.selectColour.§_-lw§();
         _loc2_;
         _loc1_;
         _loc2_;
         _loc2_;
         this.selectColour.visible = true;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         this.selectColour.mouseChildren = true;
         this.selectColour.mouseEnabled = true;
         this.§_-Br§();
         _loc1_;
         _loc1_;
         this.§_-sY§();
         this.§_-Xz§();
         this.§_-jL§();
      }
      
      public function §_-fx§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         this.selectColour.visible = false;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         this.selectColour.mouseChildren = false;
         _loc1_;
         this.selectColour.mouseEnabled = false;
      }
      
      public function §_-d9§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc2_;
         this.§_-7F§.§_-aP§();
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.§_-7F§.visible = true;
         _loc1_;
         _loc2_;
         _loc2_;
         this.§_-7F§.mouseChildren = true;
         this.§_-7F§.mouseEnabled = true;
         this.§_-fx§();
         _loc1_;
         this.§_-sY§();
         _loc1_;
         this.§_-Xz§();
         _loc1_;
         _loc1_;
         this.§_-jL§();
      }
      
      public function §_-Br§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-7F§.visible = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-7F§.mouseChildren = false;
         _loc1_;
         _loc1_;
         this.§_-7F§.mouseEnabled = false;
      }
      
      public function §_-PM§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-wd§.§_-C1§();
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-wd§.visible = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.§_-wd§.mouseChildren = true;
         this.§_-wd§.mouseEnabled = true;
         _loc2_;
         this.§_-Br§();
         this.§_-sY§();
         this.§_-fx§();
         _loc2_;
         _loc2_;
         this.§_-jL§();
      }
      
      public function §_-Xz§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc1_;
         _loc2_;
         this.§_-wd§.visible = false;
         _loc1_;
         _loc1_;
         _loc2_;
         this.§_-wd§.mouseChildren = false;
         _loc1_;
         _loc1_;
         this.§_-wd§.mouseEnabled = false;
      }
      
      public function §_-Be§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-7J§.§_-8-§();
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.§_-7J§.visible = true;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-7J§.mouseChildren = true;
         this.§_-7J§.mouseEnabled = true;
         this.§_-Br§();
         _loc1_;
         _loc1_;
         this.§_-sY§();
         this.§_-Xz§();
         _loc2_;
         this.§_-fx§();
      }
      
      public function §_-jL§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         this.§_-7J§.visible = false;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.§_-7J§.mouseChildren = false;
         _loc2_;
         _loc2_;
         this.§_-7J§.mouseEnabled = false;
      }
      
      public function §_-g7§(param1:int, param2:Number, param3:Number) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.§_-Jx§.x = param2;
         _loc4_;
         _loc4_;
         _loc5_;
         this.§_-Jx§.y = param3;
         _loc5_;
         this.§_-Jx§.§_-C1§(param1);
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         this.§_-Jx§.visible = true;
         _loc5_;
         _loc5_;
         this.§_-Jx§.mouseChildren = true;
         this.§_-Jx§.mouseEnabled = true;
         this.§_-Br§();
         _loc4_;
         _loc4_;
         this.§_-fx§();
         this.§_-Xz§();
         this.§_-jL§();
      }
      
      public function §_-sY§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-Jx§.visible = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-Jx§.mouseChildren = false;
         _loc2_;
         this.§_-Jx§.mouseEnabled = false;
      }
      
      public function updatePoints() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.level.setInt(Global.getLevel(Global.teamXP.getInt()));
         _loc3_;
         this.§_-fk§.setInt(this.level.getInt() * 2);
         var _loc1_:* = 0;
         while(true)
         {
            _loc1_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc1_ > 3;
            _loc1_ > 3;
            if(Global.unitDetails[_loc1_].active)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc2_;
               _loc2_;
               _loc3_;
               this.§_-fk§.setInt(this.§_-fk§.getInt() - (Global.unitDetails[_loc1_].health - 1));
               _loc3_;
               this.§_-fk§.setInt(this.§_-fk§.getInt() - (Global.unitDetails[_loc1_].accuracy - 1));
               _loc3_;
               _loc3_;
            }
            _loc1_++;
            _loc2_;
            _loc2_;
         }
      }
      
      public function §_-gu§() : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:§_-Xd§ = null;
         var _loc1_:* = true;
         while(true)
         {
            _loc1_;
            _loc5_;
            _loc1_ = false;
            _loc5_;
            _loc6_;
            _loc2_ = 0;
            while(_loc2_ < 6)
            {
               _loc6_;
               _loc6_;
               _loc6_;
               if(!Global.unitDetails[_loc2_].active)
               {
                  _loc6_;
                  _loc6_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc3_ = _loc2_ + 1;
                  _loc6_;
                  _loc6_;
                  while(true)
                  {
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     if(_loc3_ >= 6)
                     {
                        _loc6_;
                        break;
                     }
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     if(Global.unitDetails[_loc3_].active)
                     {
                        _loc6_;
                        _loc6_;
                        _loc4_ = Global.unitDetails[_loc3_];
                        _loc5_;
                        _loc5_;
                        _loc6_;
                        Global.unitDetails[_loc3_] = Global.unitDetails[_loc2_];
                        _loc5_;
                        Global.unitDetails[_loc2_] = _loc4_;
                        _loc5_;
                        _loc1_ = true;
                        break;
                     }
                     _loc3_++;
                  }
               }
               _loc2_++;
            }
         }
      }
      
      public function §_-sc§(param1:* = false) : String
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:String = null;
         var _loc2_:Array = new Array();
         var _loc4_:* = 0;
         while(true)
         {
            _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            if(Global.unitDetails[_loc4_].active)
            {
               _loc5_;
               if(param1)
               {
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  Global.unitDetails[_loc4_].name = this.§_-Uw§(this["unit" + (_loc4_ + 1)].unit_name.text);
                  _loc6_;
                  _loc6_;
                  this["unit" + (_loc4_ + 1)].unit_name.text = Global.unitDetails[_loc4_].name;
               }
               _loc6_;
               _loc6_;
               _loc6_;
               _loc5_;
               _loc5_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               _loc3_ = Global.unitDetails[_loc4_].name + "," + Global.unitDetails[_loc4_].health + "," + Global.unitDetails[_loc4_].accuracy;
               _loc5_;
               _loc5_;
            }
            else
            {
               _loc5_;
               _loc5_;
               _loc3_ = Global.unitDetails[_loc4_].name + "," + 0 + "," + 0;
            }
            _loc2_.push(_loc3_);
            _loc4_++;
         }
      }
      
      public function §_-Uw§(param1:String) : String
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         var param1:String = this.§_-x2§(param1,",");
         _loc3_;
         _loc3_;
         param1 = this.§_-x2§(param1,"|");
         _loc3_;
         _loc3_;
         param1 = this.§_-x2§(param1,":");
         _loc2_;
         _loc2_;
         param1 = this.§_-x2§(param1,"$");
         _loc3_;
         _loc3_;
         param1 = this.§_-x2§(param1,"£");
         param1 = this.§_-x2§(param1,"%");
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         param1 = this.§_-x2§(param1,";");
         _loc3_;
         _loc3_;
         param1 = this.§_-x2§(param1,"&");
         _loc2_;
         _loc2_;
         param1 = this.§_-x2§(param1,"#");
         return param1;
      }
      
      public function §_-x2§(param1:String, param2:String) : String
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
            _loc4_ = "";
            _loc6_;
            _loc6_;
            _loc5_ = 0;
            while(_loc5_ < _loc3_.length)
            {
               _loc6_;
               _loc7_;
               _loc4_ = _loc4_ + _loc3_[_loc5_];
               _loc7_;
               _loc5_++;
               _loc7_;
            }
            _loc7_;
            _loc6_;
            _loc6_;
            return _loc4_;
         }
         return param1;
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         tweenOut();
         _loc2_;
         Global.lobby_display.lobby_menu.§_-3-§();
         _loc2_;
         this.§_-E8§();
      }
      
      public function §_-E8§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         var _loc1_:String = this.§_-sc§(true);
         _loc2_;
         _loc2_;
         Global.lobby_client.commitUnitChanges(_loc1_);
      }
      
      public function §_-Gb§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(this.selectColour.visible)
         {
            _loc2_;
            this.§_-fx§();
            _loc1_;
         }
         else
         {
            this.§_-QV§();
         }
      }
      
      public function §_-s6§(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-fx§();
         this.§_-yr§.§_-ma§(param1);
         this.§_-Ku§.§_-ma§(param1);
         _loc3_;
         Global.favourite_colour.setInt(param1);
         this.unit1.§_-dv§();
         _loc3_;
         this.unit2.§_-dv§();
         _loc2_;
         this.unit3.§_-dv§();
         this.unit4.§_-dv§();
         _loc2_;
         _loc2_;
         this.unit5.§_-dv§();
         _loc2_;
         _loc2_;
         this.unit6.§_-dv§();
         _loc2_;
         this.§_-qQ§.§_-eL§();
         _loc2_;
         _loc2_;
         this.button_idle_0.§_-eL§();
         _loc2_;
         _loc2_;
         this.button_idle_1.§_-eL§();
         this.button_idle_2.§_-eL§();
         this.button_idle_3.§_-eL§();
      }
      
      public function §_-Iz§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(this.§_-7F§.visible)
         {
            _loc1_;
            _loc1_;
            this.§_-Br§();
            _loc1_;
            _loc1_;
         }
         else
         {
            this.§_-d9§();
         }
      }
      
      public function § do§(param1:int) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         this.§_-Br§();
         _loc4_;
         this.§_-Ku§.§_-3P§(param1);
         _loc3_;
         var _loc2_:int = Global.favourite_helmet.getInt();
         Global.favourite_helmet.setInt(param1);
         _loc4_;
         this.unit1.§_-dv§(_loc2_);
         _loc4_;
         this.unit2.§_-dv§(_loc2_);
         this.unit3.§_-dv§(_loc2_);
         _loc4_;
         this.unit4.§_-dv§(_loc2_);
         _loc4_;
         this.unit5.§_-dv§(_loc2_);
         this.unit6.§_-dv§(_loc2_);
         this.§_-qQ§.§_-eL§();
         _loc4_;
         this.button_idle_0.§_-eL§();
         _loc3_;
         _loc3_;
         this.button_idle_1.§_-eL§();
         _loc3_;
         _loc3_;
         this.button_idle_2.§_-eL§();
         this.button_idle_3.§_-eL§();
      }
      
      public function §_-m2§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.§_-wd§.visible)
         {
            _loc2_;
            this.§_-Xz§();
            _loc1_;
         }
         else
         {
            this.§_-PM§();
         }
      }
      
      public function §_-JH§(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-Xz§();
         _loc3_;
         this.§_-qQ§.§_-eL§(param1);
         _loc3_;
         Global.anim_victory.setInt(param1);
      }
      
      public function §_-G§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(this.§_-7J§.visible)
         {
            _loc1_;
            this.§_-jL§();
            _loc2_;
            _loc2_;
         }
         else
         {
            this.§_-Be§();
         }
      }
      
      public function §_-zW§(param1:int) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-jL§();
         _loc2_;
         _loc2_;
         this.§_-XX§.§_-qn§(param1);
         _loc2_;
         _loc2_;
         SafeGlobal.§_-Ds§.setInt(param1);
      }
      
      public function §_-90§(param1:int, param2:Number, param3:Number) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         if((this.§_-Jx§.visible) && this.§_-Qv§ == param1)
         {
            _loc5_;
            _loc5_;
            this.§_-sY§();
            _loc4_;
         }
         else
         {
            this.§_-g7§(param1,param2,param3);
            _loc5_;
            _loc5_;
            this.§_-Qv§ = param1;
         }
      }
      
      public function §_-fC§(param1:int, param2:int) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.§_-sY§();
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(param2 == 0)
         {
            _loc3_;
            _loc3_;
            this.button_idle_0.§_-eL§(param1);
            _loc3_;
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc4_;
            if(param2 == 1)
            {
               this.button_idle_1.§_-eL§(param1);
            }
            else
            {
               _loc3_;
               _loc3_;
               _loc4_;
               if(param2 == 2)
               {
                  _loc4_;
                  this.button_idle_2.§_-eL§(param1);
               }
               else if(param2 == 3)
               {
                  _loc4_;
                  _loc4_;
                  this.button_idle_3.§_-eL§(param1);
               }
               
            }
         }
         Global.anim_idle[param2].setInt(param1);
      }
   }
}
