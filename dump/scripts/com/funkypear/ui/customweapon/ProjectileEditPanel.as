package com.funkypear.ui.customweapon
{
   import flash.text.TextField;
   import flash.display.MovieClip;
   import §_-bY§.§_-y5§;
   import flash.utils.getDefinitionByName;
   import flash.text.TextFormat;
   
   public class ProjectileEditPanel extends EditPanel
   {
      
      public function ProjectileEditPanel(param1:Number, param2:Number)
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         _loc6_;
         super(param1,param2);
         _loc7_;
         panels = new Array();
         _loc6_;
         this.§_-a7§ = new Array();
         var _loc3_:* = "com.funkypear.ui.customweapon.CWP_ProjectileGfx";
         var _loc4_:* = "com.funkypear.ui.customweapon.CWP_Trail";
         _loc6_;
         _loc6_;
         addNewPanel(_loc3_,true);
         _loc6_;
         _loc6_;
         addNewPanel(_loc4_,true);
         _loc6_;
         _loc6_;
         this.§_-TF§();
         _loc6_;
         this.§_-VO§(0);
         var _loc5_:TextFormat = new TextFormat();
         _loc5_.letterSpacing = -1;
         _loc6_;
         this.§_-Xd§.defaultTextFormat = _loc5_;
      }
      
      public var §_-Xd§:TextField;
      
      public var §_-xV§:MovieClip;
      
      public var §_-ub§:MovieClip;
      
      public var §_-NY§:MovieClip;
      
      public var §_-yx§:MovieClip;
      
      private var §_-YI§:§_-y5§;
      
      private var §_-Vi§:CustomWeaponEffectMenu;
      
      private var §_-nO§ = false;
      
      private var §_-a7§:Array;
      
      private var item_id:int = 0;
      
      private var §_-zm§:Boolean = false;
      
      private var §_-wx§:CustomWeaponPanel;
      
      public function setDefault() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc3_;
         _loc3_;
         _loc1_ = panels.length - 1;
         while(true)
         {
            _loc3_;
            _loc3_;
            if(_loc1_ < 0)
            {
               break;
            }
            if(!(panels[_loc1_] as CustomWeaponPanel).§_-Jn§())
            {
               _loc2_;
               this.removePanel(panels[_loc1_] as CustomWeaponPanel);
            }
            _loc1_--;
            _loc3_;
            _loc3_;
         }
         _loc1_ = panels.length - 1;
         _loc3_;
         _loc3_;
         while(true)
         {
            _loc2_;
            if(_loc1_ < 0)
            {
               break;
            }
            panels[_loc1_].setDefault();
            _loc2_;
            _loc3_;
            _loc3_;
            _loc1_--;
            _loc2_;
            _loc2_;
         }
         _loc2_;
         _loc2_;
         this.§_-DT§();
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(this.item_id != 2)
         {
            this.§_-VO§(0);
         }
         if(this.item_id == 0)
         {
            this.§_-Xd§.text = "PROJECTILE X1";
            _loc3_;
            _loc3_;
         }
         else
         {
            this.§_-Xd§.text = "PAYLOAD X2";
         }
      }
      
      public function §_-La§(param1:String) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Array = null;
         var _loc2_:Array = param1.split(";");
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc4_ = _loc2_[_loc3_].split(",");
            if(_loc4_[0] == "g")
            {
               (panels[0] as CWP_ProjectileGfx).setInitialValue(parseInt(_loc4_[1]));
               (panels[0] as CWP_ProjectileGfx).§_-Lq§(parseInt(_loc4_[2]));
            }
            else if(_loc4_[0] == "e")
            {
               _loc6_;
               (panels[1] as CWP_Trail).setInitialValue(parseInt(_loc4_[1]));
               _loc6_;
               _loc6_;
               if(_loc4_.length == 2)
               {
                  _loc5_;
                  (panels[1] as CWP_Trail).§_-Lq§("");
                  _loc5_;
                  _loc5_;
               }
               else if(_loc4_.length == 3)
               {
                  (panels[1] as CWP_Trail).§_-Lq§(_loc4_[2]);
               }
               else if(_loc4_.length == 4)
               {
                  _loc6_;
                  _loc6_;
                  (panels[1] as CWP_Trail).§_-Lq§(_loc4_[2] + "," + _loc4_[3]);
               }
               else if(_loc4_.length == 5)
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc6_;
                  _loc6_;
                  (panels[1] as CWP_Trail).§_-Lq§(_loc4_[2] + "," + _loc4_[3] + "," + _loc4_[4]);
               }
               
               
               
            }
            else if(_loc4_[0] == "d")
            {
               this.selectMenuItem(1,true);
               _loc6_;
               (panels[panels.length - 1] as CWP_Damage).setInitialValues(parseInt(_loc4_[1]),parseInt(_loc4_[2]));
               _loc5_;
               _loc5_;
            }
            else if(_loc4_[0] == "h")
            {
               this.selectMenuItem(2,true);
               _loc6_;
               (panels[panels.length - 1] as CWP_Heal).setInitialValues(parseInt(_loc4_[1]),parseInt(_loc4_[2]));
            }
            else if(_loc4_[0] == "m")
            {
               this.selectMenuItem(3,true);
               (panels[panels.length - 1] as CWP_EMP).setInitialValues(parseInt(_loc4_[1]),parseInt(_loc4_[2]));
            }
            else if(_loc4_[0] == "f")
            {
               this.selectMenuItem(4,true);
               (panels[panels.length - 1] as CWP_Fire).setInitialValue(parseInt(_loc4_[1]));
               _loc5_;
               _loc5_;
            }
            else if(_loc4_[0] == "r")
            {
               this.selectMenuItem(5,true);
               (panels[panels.length - 1] as CWP_Radioactive).setInitialValue(parseInt(_loc4_[1]));
            }
            else if(_loc4_[0] == "a")
            {
               this.selectMenuItem(6,true);
            }
            else if(_loc4_[0] == "b")
            {
               _loc5_;
               _loc5_;
               this.selectMenuItem(7,true);
               (panels[panels.length - 1] as CWP_Bounce).setInitialValue(parseInt(_loc4_[1]));
            }
            else if(_loc4_[0] == "i")
            {
               this.selectMenuItem(8,true);
               _loc6_;
               _loc6_;
               (panels[panels.length - 1] as CWP_Drill).setInitialValue(parseInt(_loc4_[1]));
            }
            else if(_loc4_[0] == "o")
            {
               this.selectMenuItem(9,true);
               _loc6_;
               (panels[panels.length - 1] as CWP_Poison).setInitialValues(parseInt(_loc4_[1]),parseInt(_loc4_[2]));
               _loc6_;
               _loc6_;
            }
            else if(_loc4_[0] == "y")
            {
               _loc6_;
               _loc6_;
               this.selectPayloadMenuItem(1,true);
               _loc5_;
               this.§_-wx§.setInitialValue(parseInt(_loc4_[1]));
               _loc6_;
               _loc6_;
            }
            
            
            
            
            
            
            
            
            
            
            
            _loc3_++;
         }
      }
      
      public function §_-Ri§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.item_id = param1;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(this.item_id == 2)
         {
            _loc3_;
            if(this.§_-wx§ != null)
            {
               _loc3_;
               this.§_-DT§();
               _loc3_;
            }
            this.§_-ub§.visible = false;
            this.§_-yx§.visible = false;
         }
         else
         {
            this.§_-xV§.visible = false;
            _loc3_;
            _loc3_;
            this.§_-NY§.visible = false;
            _loc2_;
            _loc2_;
         }
         if(this.item_id == 0)
         {
            this.§_-Xd§.text = "PROJECTILE X1";
         }
         else
         {
            this.§_-Xd§.text = "PAYLOAD X2";
         }
      }
      
      public function updateTitleText(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(this.item_id == 0)
         {
            _loc2_;
            this.§_-Xd§.text = String("PROJECTILE X" + param1);
            _loc2_;
         }
         else
         {
            this.§_-Xd§.text = String("PAYLOAD X" + param1);
         }
      }
      
      public function §_-m4§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         (parent as CustomWeaponEditor).§_-kk§(this.item_id + 1,param1);
      }
      
      override public function getDataString() : String
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:String = null;
         var _loc1_:* = "";
         var _loc2_:* = 0;
         while(_loc2_ < panels.length)
         {
            _loc5_;
            _loc5_;
            if(_loc2_ != 0)
            {
               _loc5_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc1_ = _loc1_ + ";";
            }
            _loc5_;
            _loc5_;
            _loc1_ = _loc1_ + (panels[_loc2_] as CustomWeaponPanel).getDataString();
            _loc4_;
            _loc2_++;
         }
         _loc4_;
         if(this.§_-wx§ != null)
         {
            _loc4_;
            _loc3_ = this.§_-wx§.getDataString();
            _loc5_;
            _loc5_;
            if(_loc3_ != "")
            {
               _loc4_;
               _loc4_;
               _loc1_ = _loc1_ + ";";
               _loc5_;
               _loc1_ = _loc1_ + _loc3_;
            }
         }
         return _loc1_;
      }
      
      public function getPointsUsed() : int
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(true)
         {
            _loc4_;
            if(_loc2_ >= panels.length)
            {
               break;
            }
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc1_ = _loc1_ + (panels[_loc2_] as CustomWeaponPanel).getPointsUsed();
            _loc4_;
            _loc2_++;
            _loc3_;
            _loc3_;
         }
         _loc3_;
         if(this.§_-wx§ != null)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc1_ = _loc1_ + this.§_-wx§.getPointsUsed();
         }
         return _loc1_;
      }
      
      override public function hideAllMenus() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc3_;
         if(panels.length > 0)
         {
            _loc3_;
            _loc3_;
            _loc1_ = 0;
            while(_loc1_ < panels.length)
            {
               (panels[_loc1_] as CustomWeaponPanel).hideAllMenus();
               _loc3_;
               _loc1_++;
               _loc3_;
               _loc3_;
            }
            _loc3_;
            _loc3_;
         }
         _loc2_;
         _loc2_;
         if(this.§_-wx§ != null)
         {
            _loc2_;
            this.§_-wx§.hideAllMenus();
            _loc2_;
            _loc2_;
         }
         this.§_-Jl§();
      }
      
      public function hideItemMenu() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-Jl§();
      }
      
      public function §_-3m§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.§_-nO§)
         {
            _loc1_;
            _loc1_;
            Global.custom_weapon_editor.hideAllMenus();
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.§_-Vi§ == null)
            {
               this.§_-Vi§ = new CustomWeaponEffectMenu(parent.x + x + this.§_-YI§.x,parent.y + y + this.§_-YI§.y,this);
               _loc2_;
               this.§_-Vi§.init(this.§_-a7§);
               parent.parent.addChild(this.§_-Vi§);
            }
            this.§_-nO§ = true;
            _loc2_;
         }
         else
         {
            if(this.§_-Vi§ != null)
            {
               _loc2_;
               _loc2_;
               parent.parent.removeChild(this.§_-Vi§);
               _loc2_;
               _loc2_;
               this.§_-Vi§ = null;
               _loc2_;
               _loc2_;
            }
            this.§_-nO§ = false;
         }
      }
      
      public function §_-Jl§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.§_-Vi§ != null)
         {
            _loc2_;
            parent.parent.removeChild(this.§_-Vi§);
            _loc2_;
            this.§_-Vi§ = null;
            _loc1_;
         }
         this.§_-nO§ = false;
      }
      
      override public function selectMenuItem(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:String = null;
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1 == 1)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            if(Global.custom_weapon_panel.§_-VP§.getInt() >= Global.§_-0-E§ || (param2))
            {
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               _loc3_ = "com.funkypear.ui.customweapon.CWP_Damage";
               addNewPanel(_loc3_,false);
               _loc4_;
               _loc5_;
               _loc5_;
               this.§_-a7§.push(1);
               this.§_-a7§.push(2);
            }
         }
         _loc4_;
         if(param1 == 2)
         {
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            if(Global.custom_weapon_panel.§_-VP§.getInt() >= Global.§_-nu§ || (param2))
            {
               _loc5_;
               _loc5_;
               _loc3_ = "com.funkypear.ui.customweapon.CWP_Heal";
               addNewPanel(_loc3_,false);
               _loc4_;
               _loc4_;
               this.§_-a7§.push(1);
               this.§_-a7§.push(2);
            }
         }
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1 == 3)
         {
            _loc4_;
            _loc4_;
            if(Global.custom_weapon_panel.§_-VP§.getInt() >= Global.§_-IT§ || (param2))
            {
               _loc4_;
               _loc4_;
               _loc3_ = "com.funkypear.ui.customweapon.CWP_EMP";
               _loc4_;
               _loc4_;
               addNewPanel(_loc3_,false);
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               this.§_-a7§.push(3);
            }
         }
         _loc5_;
         _loc5_;
         if(param1 == 4)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            _loc4_;
            _loc4_;
            if(Global.custom_weapon_panel.§_-VP§.getInt() >= Global.§_-rB§ || (param2))
            {
               _loc5_;
               _loc5_;
               _loc3_ = "com.funkypear.ui.customweapon.CWP_Fire";
               _loc5_;
               _loc5_;
               addNewPanel(_loc3_,false);
               _loc5_;
               _loc5_;
               this.§_-a7§.push(4);
               _loc4_;
               _loc4_;
            }
         }
         _loc5_;
         _loc5_;
         if(param1 == 5)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            if(Global.custom_weapon_panel.§_-VP§.getInt() >= Global.§_-EJ§ || (param2))
            {
               _loc3_ = "com.funkypear.ui.customweapon.CWP_Radioactive";
               _loc4_;
               addNewPanel(_loc3_,false);
               _loc4_;
               _loc4_;
               this.§_-a7§.push(5);
               this.§_-a7§.push(6);
            }
         }
         _loc4_;
         if(param1 == 6)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            if(Global.custom_weapon_panel.§_-VP§.getInt() >= Global.§_-Z8§ || (param2))
            {
               _loc5_;
               _loc3_ = "com.funkypear.ui.customweapon.CWP_Detox";
               _loc4_;
               addNewPanel(_loc3_,false);
               this.§_-a7§.push(5);
               _loc5_;
               _loc5_;
               this.§_-a7§.push(6);
               _loc4_;
               _loc4_;
            }
         }
         _loc5_;
         _loc5_;
         _loc5_;
         if(param1 == 7)
         {
            _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            if(Global.custom_weapon_panel.§_-VP§.getInt() >= Global.§_-2U§ || (param2))
            {
               _loc3_ = "com.funkypear.ui.customweapon.CWP_Bounce";
               _loc5_;
               _loc5_;
               addNewPanel(_loc3_,false);
               _loc5_;
               _loc5_;
               this.§_-a7§.push(7);
               _loc4_;
               this.§_-a7§.push(8);
               _loc4_;
               _loc4_;
            }
         }
         _loc5_;
         _loc5_;
         if(param1 == 8)
         {
            _loc5_;
            _loc4_;
            _loc5_;
            _loc5_;
            if(Global.custom_weapon_panel.§_-VP§.getInt() >= Global.§_-8D§ || (param2))
            {
               _loc3_ = "com.funkypear.ui.customweapon.CWP_Drill";
               addNewPanel(_loc3_,false);
               this.§_-a7§.push(7);
               this.§_-a7§.push(8);
            }
         }
         _loc4_;
         if(param1 == 9)
         {
            _loc5_;
            _loc5_;
            if(Global.custom_weapon_panel.§_-VP§.getInt() >= Global.§_-a-§ || (param2))
            {
               _loc4_;
               _loc4_;
               _loc3_ = "com.funkypear.ui.customweapon.CWP_Poison";
               _loc5_;
               addNewPanel(_loc3_,false);
               this.§_-a7§.push(9);
            }
         }
         this.§_-Jl§();
         _loc4_;
         _loc4_;
         Global.custom_weapon_panel.updatePoints();
      }
      
      public function selectPayloadMenuItem(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         if(param1 == 0)
         {
            _loc4_;
            _loc4_;
            this.§_-Gm§(param2);
            _loc4_;
         }
         else if(param1 == 1)
         {
            _loc4_;
            _loc4_;
            this.§_-LN§(param2);
         }
         
      }
      
      public function §_-Gm§(param1:Boolean = false) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-DT§();
         _loc3_;
         this.§_-VO§(0);
         _loc2_;
         Global.custom_weapon_panel.updatePoints();
         _loc2_;
         _loc2_;
         (parent as CustomWeaponEditor).removeProjectile(this.item_id);
      }
      
      public function §_-LN§(param1:Boolean = false) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-DT§();
         (parent as CustomWeaponEditor).§_-2V§();
         _loc2_;
         _loc2_;
         this.§_-VO§(1);
         Global.custom_weapon_panel.updatePoints();
         if(!param1)
         {
            this.§_-wx§.toggleItemMenu();
         }
      }
      
      override public function removePanel(param1:CustomWeaponPanel) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:* = 0;
         _loc6_;
         _loc6_;
         var _loc2_:int = param1.panel_id;
         _loc6_;
         _loc6_;
         removeChild(param1);
         var _loc3_:* = 0;
         while(true)
         {
            if(_loc3_ >= panels.length)
            {
               _loc5_;
               break;
            }
            if(panels[_loc3_] == param1)
            {
               panels.splice(_loc3_,1);
               break;
            }
            _loc3_++;
         }
         _loc5_;
         if(_loc2_ != -1)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            if(_loc2_ == 1 || _loc2_ == 2)
            {
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               this.§_-a7§.splice(this.§_-a7§.indexOf(1),1);
               this.§_-a7§.splice(this.§_-a7§.indexOf(2),1);
               _loc5_;
               _loc5_;
            }
            else
            {
               _loc5_;
               _loc5_;
               if(_loc2_ == 3)
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  this.§_-a7§.splice(this.§_-a7§.indexOf(3),1);
                  _loc5_;
                  _loc5_;
               }
               else
               {
                  _loc6_;
                  if(_loc2_ == 4)
                  {
                     _loc6_;
                     this.§_-a7§.splice(this.§_-a7§.indexOf(4),1);
                  }
                  else
                  {
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     if(_loc2_ == 5 || _loc2_ == 6)
                     {
                        this.§_-a7§.splice(this.§_-a7§.indexOf(5),1);
                        _loc6_;
                        _loc5_;
                        _loc5_;
                        this.§_-a7§.splice(this.§_-a7§.indexOf(6),1);
                        _loc6_;
                     }
                     else
                     {
                        _loc5_;
                        _loc5_;
                        _loc5_;
                        if(_loc2_ == 7 || _loc2_ == 8)
                        {
                           _loc6_;
                           this.§_-a7§.splice(this.§_-a7§.indexOf(7),1);
                           _loc6_;
                           _loc6_;
                           _loc6_;
                           _loc6_;
                           this.§_-a7§.splice(this.§_-a7§.indexOf(8),1);
                           _loc5_;
                           _loc5_;
                        }
                        else if(_loc2_ == 9)
                        {
                           this.§_-a7§.splice(this.§_-a7§.indexOf(9),1);
                        }
                        
                     }
                  }
               }
            }
         }
         this.§_-OA§();
         Global.custom_weapon_panel.updatePoints();
      }
      
      private function §_-VO§(param1:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         if(this.§_-wx§ != null)
         {
            _loc5_;
            _loc5_;
            this.§_-DT§();
         }
         var _loc2_:* = "";
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         if(param1 == 0)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc2_ = "com.funkypear.ui.customweapon.CWP_PayloadNone";
            _loc5_;
            _loc5_;
         }
         else if(param1 == 1)
         {
            _loc4_;
            _loc2_ = "com.funkypear.ui.customweapon.CWP_PayloadCluster";
         }
         
         var _loc3_:Class = getDefinitionByName(_loc2_) as Class;
         _loc4_;
         this.§_-wx§ = new _loc3_(582,29) as CustomWeaponPanel;
         _loc5_;
         _loc5_;
         addChild(this.§_-wx§);
      }
      
      private function §_-DT§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.§_-wx§ != null)
         {
            _loc1_;
            _loc1_;
            this.§_-wx§.hideItemMenu();
            _loc1_;
            _loc1_;
            removeChild(this.§_-wx§);
            _loc2_;
            _loc2_;
            this.§_-wx§ = null;
         }
      }
      
      private function §_-TF§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         this.§_-YI§ = new §_-y5§();
         var _loc1_:Number = panels[1].x + panels[1].panel_width + 77 * 4 + 5;
         var _loc2_:Number = 29;
         _loc3_;
         _loc3_;
         this.§_-YI§.§_-E9§(_loc1_,_loc2_);
         _loc3_;
         _loc3_;
         addChild(this.§_-YI§);
      }
      
      private function §_-OA§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         §_-Uf§ = 5;
         var _loc1_:* = 0;
         while(_loc1_ < panels.length)
         {
            _loc2_;
            _loc1_;
            _loc3_;
            _loc3_;
            §_-Uf§ = 5;
            _loc2_;
            panels[_loc1_].x = §_-Uf§;
            _loc3_;
            _loc1_++;
            _loc2_;
            _loc2_;
         }
      }
   }
}
