package com.funkypear.ui.customweapon
{
   import flash.text.TextField;
   import flash.display.MovieClip;
   import §_-ZN§.§_-aV§;
   import flash.utils.getDefinitionByName;
   import flash.text.TextFormat;
   
   public class ProjectileEditPanel extends EditPanel
   {
      
      public function ProjectileEditPanel(param1:Number, param2:Number)
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         _loc7_;
         super(param1,param2);
         _loc7_;
         panels = new Array();
         _loc7_;
         this.§_-sQ§ = new Array();
         var _loc3_:* = "com.funkypear.ui.customweapon.CWP_ProjectileGfx";
         var _loc4_:* = "com.funkypear.ui.customweapon.CWP_Trail";
         _loc7_;
         addNewPanel(_loc3_,true);
         _loc7_;
         _loc7_;
         addNewPanel(_loc4_,true);
         _loc6_;
         this.§_-Um§();
         _loc6_;
         _loc6_;
         this.§_-MQ§(0);
         var _loc5_:TextFormat = new TextFormat();
         _loc5_.letterSpacing = -1;
         _loc7_;
         this.§_-ly§.defaultTextFormat = _loc5_;
      }
      
      public var §_-ly§:TextField;
      
      public var §const§:MovieClip;
      
      public var §_-Lg§:MovieClip;
      
      public var §_-vf§:MovieClip;
      
      public var §_-2U§:MovieClip;
      
      private var §_-au§:§_-aV§;
      
      private var §_-bu§:CustomWeaponEffectMenu;
      
      private var §_-uH§ = false;
      
      private var §_-sQ§:Array;
      
      private var item_id:int = 0;
      
      private var §_-WU§:Boolean = false;
      
      private var §_-45§:CustomWeaponPanel;
      
      public function setDefault() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc2_;
         _loc2_;
         _loc1_ = panels.length - 1;
         while(true)
         {
            _loc3_;
            _loc3_;
            if(_loc1_ < 0)
            {
               break;
            }
            if(!(panels[_loc1_] as CustomWeaponPanel).§_-Qx§())
            {
               this.removePanel(panels[_loc1_] as CustomWeaponPanel);
            }
            _loc1_--;
            _loc3_;
            _loc3_;
         }
         _loc2_;
         _loc1_ = panels.length - 1;
         while(true)
         {
            _loc2_;
            _loc2_;
            if(_loc1_ < 0)
            {
               break;
            }
            panels[_loc1_].setDefault();
            _loc2_;
            _loc1_--;
            _loc2_;
         }
         this.§_-LR§();
         _loc3_;
         if(this.item_id != 2)
         {
            this.§_-MQ§(0);
         }
         if(this.item_id == 0)
         {
            this.§_-ly§.text = "PROJECTILE X1";
         }
         else
         {
            this.§_-ly§.text = "PAYLOAD X2";
         }
      }
      
      public function §_-Yy§(param1:String) : void
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
               (panels[0] as CWP_ProjectileGfx).§_-Bz§(parseInt(_loc4_[2]));
               _loc6_;
               _loc6_;
            }
            else if(_loc4_[0] == "e")
            {
               _loc6_;
               (panels[1] as CWP_Trail).setInitialValue(parseInt(_loc4_[1]));
               if(_loc4_.length == 2)
               {
                  (panels[1] as CWP_Trail).§_-Bz§("");
               }
               else if(_loc4_.length == 3)
               {
                  (panels[1] as CWP_Trail).§_-Bz§(_loc4_[2]);
               }
               else if(_loc4_.length == 4)
               {
                  _loc5_;
                  _loc5_;
                  (panels[1] as CWP_Trail).§_-Bz§(_loc4_[2] + "," + _loc4_[3]);
               }
               else if(_loc4_.length == 5)
               {
                  _loc6_;
                  _loc6_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  (panels[1] as CWP_Trail).§_-Bz§(_loc4_[2] + "," + _loc4_[3] + "," + _loc4_[4]);
               }
               
               
               
            }
            else if(_loc4_[0] == "d")
            {
               this.selectMenuItem(1,true);
               (panels[panels.length - 1] as CWP_Damage).setInitialValues(parseInt(_loc4_[1]),parseInt(_loc4_[2]));
            }
            else if(_loc4_[0] == "h")
            {
               _loc6_;
               this.selectMenuItem(2,true);
               (panels[panels.length - 1] as CWP_Heal).setInitialValues(parseInt(_loc4_[1]),parseInt(_loc4_[2]));
            }
            else if(_loc4_[0] == "m")
            {
               _loc6_;
               _loc6_;
               this.selectMenuItem(3,true);
               (panels[panels.length - 1] as CWP_EMP).setInitialValues(parseInt(_loc4_[1]),parseInt(_loc4_[2]));
            }
            else if(_loc4_[0] == "f")
            {
               _loc6_;
               _loc6_;
               this.selectMenuItem(4,true);
               (panels[panels.length - 1] as CWP_Fire).setInitialValue(parseInt(_loc4_[1]));
            }
            else if(_loc4_[0] == "r")
            {
               this.selectMenuItem(5,true);
               (panels[panels.length - 1] as CWP_Radioactive).setInitialValue(parseInt(_loc4_[1]));
            }
            else if(_loc4_[0] == "a")
            {
               this.selectMenuItem(6,true);
               _loc5_;
            }
            else if(_loc4_[0] == "b")
            {
               this.selectMenuItem(7,true);
               _loc6_;
               (panels[panels.length - 1] as CWP_Bounce).setInitialValue(parseInt(_loc4_[1]));
               _loc6_;
            }
            else if(_loc4_[0] == "i")
            {
               this.selectMenuItem(8,true);
               _loc6_;
               _loc6_;
               (panels[panels.length - 1] as CWP_Drill).setInitialValue(parseInt(_loc4_[1]));
               _loc6_;
            }
            else if(_loc4_[0] == "o")
            {
               _loc5_;
               this.selectMenuItem(9,true);
               (panels[panels.length - 1] as CWP_Poison).setInitialValues(parseInt(_loc4_[1]),parseInt(_loc4_[2]));
               _loc5_;
               _loc5_;
            }
            else if(_loc4_[0] == "y")
            {
               this.selectPayloadMenuItem(1,true);
               this.§_-45§.setInitialValue(parseInt(_loc4_[1]));
            }
            
            
            
            
            
            
            
            
            
            
            
            _loc3_++;
         }
      }
      
      public function §_-Ss§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.item_id = param1;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(this.item_id == 2)
         {
            if(this.§_-45§ != null)
            {
               this.§_-LR§();
               _loc2_;
            }
            this.§_-Lg§.visible = false;
            this.§_-2U§.visible = false;
         }
         else
         {
            this.§const§.visible = false;
            this.§_-vf§.visible = false;
         }
         if(this.item_id == 0)
         {
            this.§_-ly§.text = "PROJECTILE X1";
            _loc2_;
         }
         else
         {
            this.§_-ly§.text = "PAYLOAD X2";
         }
      }
      
      public function updateTitleText(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(this.item_id == 0)
         {
            _loc2_;
            this.§_-ly§.text = String("PROJECTILE X" + param1);
            _loc3_;
            _loc3_;
         }
         else
         {
            this.§_-ly§.text = String("PAYLOAD X" + param1);
         }
      }
      
      public function §_-FV§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         (parent as CustomWeaponEditor).§_-eG§(this.item_id + 1,param1);
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
               _loc5_;
               _loc5_;
               _loc5_;
               _loc1_ = _loc1_ + ";";
            }
            _loc4_;
            _loc4_;
            _loc1_ = _loc1_ + (panels[_loc2_] as CustomWeaponPanel).getDataString();
            _loc5_;
            _loc5_;
            _loc2_++;
         }
         _loc4_;
         if(this.§_-45§ != null)
         {
            _loc4_;
            _loc4_;
            _loc3_ = this.§_-45§.getDataString();
            _loc4_;
            if(_loc3_ != "")
            {
               _loc1_ = _loc1_ + ";";
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               _loc5_;
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
            _loc3_;
            if(_loc2_ >= panels.length)
            {
               break;
            }
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc1_ = _loc1_ + (panels[_loc2_] as CustomWeaponPanel).getPointsUsed();
            _loc3_;
            _loc2_++;
            _loc3_;
            _loc3_;
         }
         _loc4_;
         if(this.§_-45§ != null)
         {
            _loc4_;
            _loc3_;
            _loc3_;
            _loc1_ = _loc1_ + this.§_-45§.getPointsUsed();
         }
         return _loc1_;
      }
      
      override public function hideAllMenus() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc2_;
         if(panels.length > 0)
         {
            _loc2_;
            _loc1_ = 0;
            while(_loc1_ < panels.length)
            {
               (panels[_loc1_] as CustomWeaponPanel).hideAllMenus();
               _loc3_;
               _loc3_;
               _loc1_++;
               _loc3_;
               _loc3_;
            }
            _loc2_;
         }
         _loc2_;
         _loc2_;
         if(this.§_-45§ != null)
         {
            _loc3_;
            _loc3_;
            this.§_-45§.hideAllMenus();
            _loc3_;
            _loc3_;
         }
         this.§_-SQ§();
      }
      
      public function hideItemMenu() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-SQ§();
      }
      
      public function §_-63§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.§_-uH§)
         {
            _loc1_;
            Global.custom_weapon_editor.hideAllMenus();
            _loc2_;
            _loc2_;
            _loc1_;
            if(this.§_-bu§ == null)
            {
               _loc1_;
               this.§_-bu§ = new CustomWeaponEffectMenu(parent.x + x + this.§_-au§.x,parent.y + y + this.§_-au§.y,this);
               _loc1_;
               _loc1_;
               this.§_-bu§.init(this.§_-sQ§);
               _loc2_;
               parent.parent.addChild(this.§_-bu§);
            }
            this.§_-uH§ = true;
         }
         else
         {
            if(this.§_-bu§ != null)
            {
               _loc2_;
               _loc2_;
               parent.parent.removeChild(this.§_-bu§);
               _loc2_;
               this.§_-bu§ = null;
            }
            this.§_-uH§ = false;
         }
      }
      
      public function §_-SQ§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(this.§_-bu§ != null)
         {
            _loc2_;
            _loc2_;
            parent.parent.removeChild(this.§_-bu§);
            _loc2_;
            this.§_-bu§ = null;
            _loc1_;
         }
         this.§_-uH§ = false;
      }
      
      override public function selectMenuItem(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:String = null;
         _loc5_;
         _loc5_;
         if(param1 == 1)
         {
            _loc4_;
            _loc5_;
            if(Global.custom_weapon_panel.§_-fk§.getInt() >= Global.§_-hi§ || (param2))
            {
               _loc3_ = "com.funkypear.ui.customweapon.CWP_Damage";
               _loc5_;
               _loc5_;
               addNewPanel(_loc3_,false);
               _loc5_;
               _loc5_;
               _loc4_;
               this.§_-sQ§.push(1);
               this.§_-sQ§.push(2);
            }
         }
         _loc5_;
         _loc5_;
         if(param1 == 2)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc5_;
            if(Global.custom_weapon_panel.§_-fk§.getInt() >= Global.§_-M§ || (param2))
            {
               _loc5_;
               _loc4_;
               _loc4_;
               _loc3_ = "com.funkypear.ui.customweapon.CWP_Heal";
               addNewPanel(_loc3_,false);
               _loc5_;
               _loc5_;
               this.§_-sQ§.push(1);
               this.§_-sQ§.push(2);
            }
         }
         if(param1 == 3)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_;
            if(Global.custom_weapon_panel.§_-fk§.getInt() >= Global.§_-U4§ || (param2))
            {
               _loc5_;
               _loc3_ = "com.funkypear.ui.customweapon.CWP_EMP";
               addNewPanel(_loc3_,false);
               _loc4_;
               this.§_-sQ§.push(3);
            }
         }
         _loc5_;
         _loc5_;
         _loc5_;
         if(param1 == 4)
         {
            _loc5_;
            _loc4_;
            _loc5_;
            if(Global.custom_weapon_panel.§_-fk§.getInt() >= Global.§_-ih§ || (param2))
            {
               _loc3_ = "com.funkypear.ui.customweapon.CWP_Fire";
               _loc5_;
               addNewPanel(_loc3_,false);
               this.§_-sQ§.push(4);
               _loc5_;
            }
         }
         _loc5_;
         _loc4_;
         _loc4_;
         if(param1 == 5)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            if(Global.custom_weapon_panel.§_-fk§.getInt() >= Global.§_-if§ || (param2))
            {
               _loc5_;
               _loc5_;
               _loc3_ = "com.funkypear.ui.customweapon.CWP_Radioactive";
               addNewPanel(_loc3_,false);
               _loc4_;
               _loc4_;
               _loc5_;
               this.§_-sQ§.push(5);
               this.§_-sQ§.push(6);
            }
         }
         if(param1 == 6)
         {
            _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            if(Global.custom_weapon_panel.§_-fk§.getInt() >= Global.§_-G8§ || (param2))
            {
               _loc5_;
               _loc5_;
               _loc3_ = "com.funkypear.ui.customweapon.CWP_Detox";
               _loc5_;
               addNewPanel(_loc3_,false);
               _loc4_;
               _loc4_;
               this.§_-sQ§.push(5);
               this.§_-sQ§.push(6);
            }
         }
         _loc5_;
         _loc5_;
         if(param1 == 7)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            if(Global.custom_weapon_panel.§_-fk§.getInt() >= Global.§_-LY§ || (param2))
            {
               _loc3_ = "com.funkypear.ui.customweapon.CWP_Bounce";
               addNewPanel(_loc3_,false);
               _loc5_;
               _loc5_;
               _loc5_;
               this.§_-sQ§.push(7);
               _loc5_;
               this.§_-sQ§.push(8);
            }
         }
         if(param1 == 8)
         {
            _loc4_;
            _loc5_;
            if(Global.custom_weapon_panel.§_-fk§.getInt() >= Global.§_-mp§ || (param2))
            {
               _loc4_;
               _loc3_ = "com.funkypear.ui.customweapon.CWP_Drill";
               addNewPanel(_loc3_,false);
               _loc4_;
               _loc4_;
               this.§_-sQ§.push(7);
               this.§_-sQ§.push(8);
            }
         }
         if(param1 == 9)
         {
            _loc5_;
            if(Global.custom_weapon_panel.§_-fk§.getInt() >= Global.§_-j3§ || (param2))
            {
               _loc3_ = "com.funkypear.ui.customweapon.CWP_Poison";
               addNewPanel(_loc3_,false);
               _loc4_;
               _loc4_;
               this.§_-sQ§.push(9);
            }
         }
         this.§_-SQ§();
         _loc4_;
         Global.custom_weapon_panel.updatePoints();
      }
      
      public function selectPayloadMenuItem(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(param1 == 0)
         {
            _loc3_;
            _loc3_;
            this.§_-A4§(param2);
            _loc3_;
         }
         else if(param1 == 1)
         {
            _loc3_;
            _loc3_;
            this.§_-PK§(param2);
         }
         
      }
      
      public function §_-A4§(param1:Boolean = false) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-LR§();
         _loc3_;
         this.§_-MQ§(0);
         _loc3_;
         Global.custom_weapon_panel.updatePoints();
         _loc2_;
         (parent as CustomWeaponEditor).removeProjectile(this.item_id);
      }
      
      public function §_-PK§(param1:Boolean = false) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-LR§();
         (parent as CustomWeaponEditor).§_-n8§();
         this.§_-MQ§(1);
         Global.custom_weapon_panel.updatePoints();
         _loc2_;
         _loc2_;
         if(!param1)
         {
            _loc3_;
            _loc3_;
            this.§_-45§.toggleItemMenu();
         }
      }
      
      override public function removePanel(param1:CustomWeaponPanel) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:* = 0;
         _loc5_;
         _loc5_;
         var _loc2_:int = param1.panel_id;
         _loc5_;
         removeChild(param1);
         var _loc3_:* = 0;
         while(true)
         {
            if(_loc3_ >= panels.length)
            {
               _loc6_;
               _loc6_;
               break;
            }
            if(panels[_loc3_] == param1)
            {
               panels.splice(_loc3_,1);
               break;
            }
            _loc3_++;
            _loc5_;
         }
         _loc6_;
         _loc6_;
         if(_loc2_ != -1)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            if(_loc2_ == 1 || _loc2_ == 2)
            {
               _loc6_;
               _loc6_;
               this.§_-sQ§.splice(this.§_-sQ§.indexOf(1),1);
               this.§_-sQ§.splice(this.§_-sQ§.indexOf(2),1);
            }
            else
            {
               _loc6_;
               if(_loc2_ == 3)
               {
                  _loc6_;
                  _loc6_;
                  this.§_-sQ§.splice(this.§_-sQ§.indexOf(3),1);
               }
               else
               {
                  _loc6_;
                  if(_loc2_ == 4)
                  {
                     this.§_-sQ§.splice(this.§_-sQ§.indexOf(4),1);
                  }
                  else
                  {
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     _loc6_;
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     if(_loc2_ == 5 || _loc2_ == 6)
                     {
                        _loc6_;
                        this.§_-sQ§.splice(this.§_-sQ§.indexOf(5),1);
                        this.§_-sQ§.splice(this.§_-sQ§.indexOf(6),1);
                        _loc5_;
                     }
                     else
                     {
                        _loc6_;
                        _loc6_;
                        if(_loc2_ == 7 || _loc2_ == 8)
                        {
                           _loc5_;
                           _loc5_;
                           this.§_-sQ§.splice(this.§_-sQ§.indexOf(7),1);
                           _loc5_;
                           _loc5_;
                           this.§_-sQ§.splice(this.§_-sQ§.indexOf(8),1);
                           _loc6_;
                        }
                        else if(_loc2_ == 9)
                        {
                           this.§_-sQ§.splice(this.§_-sQ§.indexOf(9),1);
                        }
                        
                     }
                  }
               }
            }
         }
         this.§_-kh§();
         Global.custom_weapon_panel.updatePoints();
      }
      
      private function §_-MQ§(param1:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         if(this.§_-45§ != null)
         {
            _loc4_;
            this.§_-LR§();
         }
         var _loc2_:* = "";
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1 == 0)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            _loc2_ = "com.funkypear.ui.customweapon.CWP_PayloadNone";
            _loc4_;
         }
         else if(param1 == 1)
         {
            _loc4_;
            _loc4_;
            _loc2_ = "com.funkypear.ui.customweapon.CWP_PayloadCluster";
         }
         
         var _loc3_:Class = getDefinitionByName(_loc2_) as Class;
         _loc5_;
         this.§_-45§ = new _loc3_(582,29) as CustomWeaponPanel;
         _loc4_;
         addChild(this.§_-45§);
      }
      
      private function §_-LR§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc1_;
         if(this.§_-45§ != null)
         {
            _loc2_;
            this.§_-45§.hideItemMenu();
            _loc1_;
            removeChild(this.§_-45§);
            _loc2_;
            this.§_-45§ = null;
         }
      }
      
      private function §_-Um§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         this.§_-au§ = new §_-aV§();
         var _loc1_:Number = panels[1].x + panels[1].panel_width + 77 * 4 + 5;
         var _loc2_:Number = 29;
         _loc4_;
         this.§_-au§.§_-Mv§(_loc1_,_loc2_);
         _loc3_;
         _loc3_;
         addChild(this.§_-au§);
      }
      
      private function §_-kh§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         §_-yU§ = 5;
         var _loc1_:* = 0;
         while(_loc1_ < panels.length)
         {
            _loc3_;
            _loc1_;
            _loc2_;
            _loc2_;
            §_-yU§ = 5;
            _loc2_;
            _loc2_;
            panels[_loc1_].x = §_-yU§;
            _loc2_;
            _loc1_++;
            _loc3_;
         }
      }
   }
}
