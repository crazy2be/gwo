package com.funkypear.ui.customweapon
{
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class WeaponEditPanel extends EditPanel
   {
      
      public function WeaponEditPanel(param1:Number, param2:Number)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         super(param1,param2);
         _loc4_;
         panels = new Array();
         _loc3_;
         addNewPanel(this.tempString1,true);
         _loc3_;
         _loc3_;
         addNewPanel(this.tempString2,true);
      }
      
      public var §_-ka§:TextField;
      
      public var tempString1:String = "com.funkypear.ui.customweapon.CWP_WeaponGfx";
      
      public var tempString2:String = "com.funkypear.ui.customweapon.CWP_Accuracy";
      
      public function §_-m4§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         (parent as CustomWeaponEditor).§_-kk§(0,param1);
      }
      
      public function setDefault(param1:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         _loc4_;
         _loc2_ = panels.length - 1;
         while(true)
         {
            _loc5_;
            _loc5_;
            _loc4_;
            if(_loc2_ < 0)
            {
               break;
            }
            if(!(panels[_loc2_] as CustomWeaponPanel).§_-Jn§())
            {
               _loc5_;
               _loc5_;
               this.removePanel(panels[_loc2_] as CustomWeaponPanel);
            }
            _loc5_;
            _loc5_;
            _loc2_--;
         }
         _loc5_;
         _loc2_ = panels.length - 1;
         while(_loc2_ >= 0)
         {
            panels[_loc2_].setDefault();
            _loc4_;
            _loc2_--;
         }
         _loc5_;
         addNewPanel("com.funkypear.ui.customweapon.CWP_WeaponSingle",false,true);
         var _loc3_:TextFormat = new TextFormat();
         _loc4_;
         _loc3_.letterSpacing = -2;
         _loc5_;
         this.§_-ka§.text = String("CUSTOM " + (param1 + 1));
         _loc5_;
         _loc5_;
         this.§_-ka§.setTextFormat(_loc3_);
      }
      
      override public function removePanel(param1:CustomWeaponPanel) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         removeChild(param1);
         var _loc2_:* = 0;
         while(_loc2_ < panels.length)
         {
            if(panels[_loc2_] == param1)
            {
               _loc3_;
               panels.splice(_loc2_,1);
               _loc4_;
               break;
            }
            _loc2_++;
            _loc3_;
         }
      }
      
      public function §_-La§(param1:String) : void
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc2_:* = 0;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:TextFormat = null;
         _loc9_;
         _loc2_ = panels.length - 1;
         while(_loc2_ >= 0)
         {
            if(!(panels[_loc2_] as CustomWeaponPanel).§_-Jn§())
            {
               _loc10_;
               this.removePanel(panels[_loc2_] as CustomWeaponPanel);
               _loc10_;
            }
            _loc10_;
            _loc10_;
            _loc9_;
            _loc2_--;
            _loc9_;
         }
         var _loc3_:Array = param1.split(";");
         var _loc4_:* = false;
         _loc10_;
         _loc10_;
         _loc9_;
         _loc9_;
         _loc2_ = 0;
         _loc10_;
         while(_loc2_ < _loc3_.length)
         {
            _loc6_ = _loc3_[_loc2_].split(",");
            if(_loc6_[0] == "g")
            {
               _loc10_;
               (panels[0] as CWP_WeaponGfx).selectMenuItem(parseInt(_loc6_[1]));
               (panels[0] as CWP_WeaponGfx).§_-Lq§(parseInt(_loc6_[2]));
            }
            else if(_loc6_[0] == "p")
            {
               _loc9_;
               _loc9_;
               (panels[1] as CWP_Accuracy).setInitialValue(parseInt(_loc6_[1]));
            }
            else if(_loc6_[0] == "r")
            {
               _loc10_;
               _loc9_;
               _loc5_ = "com.funkypear.ui.customweapon.CWP_WeaponRepeater";
               _loc9_;
               _loc9_;
               addNewPanel(_loc5_,false,true);
               _loc10_;
               _loc10_;
               (panels[panels.length - 1] as CWP_WeaponRepeater).setInitialValues(parseInt(_loc6_[1]),parseInt(_loc6_[2]));
               _loc9_;
               _loc4_ = true;
            }
            else if(_loc6_[0] == "m")
            {
               _loc5_ = "com.funkypear.ui.customweapon.CWP_WeaponMulti";
               addNewPanel(_loc5_,false,true);
               _loc10_;
               _loc10_;
               (panels[panels.length - 1] as CWP_WeaponMulti).setInitialValues(parseInt(_loc6_[1]),parseInt(_loc6_[2]));
               _loc10_;
               _loc4_ = true;
            }
            else if(_loc6_[0] == "n")
            {
               _loc9_;
               _loc7_ = _loc6_[1];
               _loc8_ = new TextFormat();
               _loc8_.letterSpacing = -2;
               _loc10_;
               _loc10_;
               this.§_-ka§.text = this.§_-Su§(_loc7_);
               _loc9_;
               _loc9_;
               this.§_-ka§.setTextFormat(_loc8_);
            }
            
            
            
            
            _loc2_++;
         }
         _loc9_;
         _loc9_;
         if(!_loc4_)
         {
            _loc10_;
            _loc5_ = "com.funkypear.ui.customweapon.CWP_WeaponSingle";
            _loc10_;
            _loc10_;
            addNewPanel(_loc5_,false,true);
         }
      }
      
      public function §_-4K§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-41§();
         var _loc1_:* = "com.funkypear.ui.customweapon.CWP_WeaponSingle";
         _loc2_;
         _loc2_;
         addNewPanel(_loc1_,false,true);
         _loc3_;
         Global.custom_weapon_panel.updatePoints();
      }
      
      public function §_-xw§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-41§();
         var _loc1_:* = "com.funkypear.ui.customweapon.CWP_WeaponMulti";
         _loc3_;
         addNewPanel(_loc1_,false,true);
         _loc3_;
         _loc3_;
         Global.custom_weapon_panel.updatePoints();
         _loc2_;
         _loc2_;
         (panels[panels.length - 1] as CWP_WeaponMulti).setInitialValues(2,5);
         _loc2_;
         _loc2_;
         (panels[panels.length - 1] as CWP_WeaponMulti).toggleItemMenu();
      }
      
      public function §_-aX§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-41§();
         var _loc1_:* = "com.funkypear.ui.customweapon.CWP_WeaponRepeater";
         _loc2_;
         addNewPanel(_loc1_,false,true);
         _loc3_;
         Global.custom_weapon_panel.updatePoints();
         _loc3_;
         _loc3_;
         (panels[panels.length - 1] as CWP_WeaponRepeater).setInitialValues(2,1);
         _loc2_;
         (panels[panels.length - 1] as CWP_WeaponRepeater).toggleItemMenu();
      }
      
      private function §_-41§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         removeChild(panels[2]);
         _loc2_;
         _loc2_;
         panels.splice(2,1);
      }
      
      override public function getDataString() : String
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:String = null;
         var _loc1_:* = "";
         var _loc2_:* = 0;
         while(_loc2_ < panels.length)
         {
            _loc3_ = (panels[_loc2_] as CustomWeaponPanel).getDataString();
            _loc5_;
            _loc5_;
            _loc4_;
            if(!(_loc2_ == 0) && !(_loc3_ == ""))
            {
               _loc5_;
               _loc4_;
               _loc4_;
               _loc1_ = _loc1_ + ";";
               _loc5_;
               _loc5_;
            }
            _loc4_;
            _loc5_;
            _loc1_ = _loc1_ + _loc3_;
            _loc2_++;
            _loc4_;
            _loc4_;
         }
         _loc5_;
         _loc4_;
         _loc5_;
         if(_loc1_ != "")
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc1_ = _loc1_ + ";";
            _loc4_;
         }
         _loc4_;
         _loc1_ = _loc1_ + "n,";
         _loc4_;
         _loc1_ = _loc1_ + this.§_-J§();
         return _loc1_;
      }
      
      public function §_-Su§(param1:String) : String
      {
         var _loc2_:Array = param1.split("*");
         var _loc3_:String = _loc2_.join(" ");
         return _loc3_;
      }
      
      public function §_-J§() : String
      {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:Array = null;
         var _loc9_:String = null;
         var _loc10_:Array = null;
         var _loc11_:Array = null;
         var _loc1_:String = this.§_-ka§.text;
         _loc13_;
         _loc12_;
         _loc12_;
         if(_loc1_.indexOf(",") != -1)
         {
            _loc13_;
            _loc13_;
            _loc2_ = _loc1_;
            _loc13_;
            _loc13_;
            _loc3_ = _loc2_.split(",");
            _loc13_;
            _loc13_;
            _loc1_ = _loc3_.join("");
         }
         _loc12_;
         if(_loc1_.indexOf(".") != -1)
         {
            _loc12_;
            _loc12_;
            _loc4_ = _loc1_;
            _loc13_;
            _loc3_ = _loc1_.split(".");
            _loc13_;
            _loc1_ = _loc3_.join("");
         }
         _loc13_;
         if(_loc1_.indexOf(";") != -1)
         {
            _loc13_;
            _loc13_;
            _loc13_;
            _loc5_ = _loc1_;
            _loc12_;
            _loc13_;
            _loc6_ = _loc5_.split(";");
            _loc1_ = _loc6_.join("");
         }
         if(_loc1_.indexOf("#") != -1)
         {
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc12_;
            _loc12_;
            _loc7_ = _loc1_;
            _loc13_;
            _loc8_ = _loc1_.split("#");
            _loc1_ = _loc8_.join("");
         }
         _loc13_;
         _loc12_;
         _loc12_;
         if(_loc1_.indexOf("*") != -1)
         {
            _loc13_;
            _loc13_;
            _loc12_;
            _loc12_;
            _loc7_ = _loc1_;
            _loc12_;
            _loc12_;
            _loc8_ = _loc1_.split("*");
            _loc1_ = _loc8_.join("");
         }
         _loc13_;
         if(_loc1_.indexOf("|") != -1)
         {
            _loc12_;
            _loc12_;
            _loc13_;
            _loc7_ = _loc1_;
            _loc12_;
            _loc8_ = _loc7_.split("|");
            _loc1_ = _loc8_.join("");
         }
         _loc12_;
         _loc13_;
         _loc13_;
         if(_loc1_.indexOf("%") != -1)
         {
            _loc12_;
            _loc13_;
            _loc13_;
            _loc7_ = _loc1_;
            _loc12_;
            _loc12_;
            _loc8_ = _loc1_.split("%");
            _loc1_ = _loc8_.join("");
         }
         if(_loc1_.indexOf("$") != -1)
         {
            _loc7_ = _loc1_;
            _loc12_;
            _loc12_;
            _loc8_ = _loc7_.split("$");
            _loc1_ = _loc8_.join("");
         }
         if(_loc1_.indexOf("£") != -1)
         {
            _loc12_;
            _loc12_;
            _loc12_;
            _loc7_ = _loc1_;
            _loc8_ = _loc1_.split("£");
            _loc1_ = _loc8_.join("");
         }
         if(_loc1_.indexOf("+") != -1)
         {
            _loc13_;
            _loc12_;
            _loc12_;
            _loc7_ = _loc1_;
            _loc8_ = _loc1_.split("+");
            _loc1_ = _loc8_.join("");
         }
         _loc13_;
         if(_loc1_.indexOf(":") != -1)
         {
            _loc12_;
            _loc13_;
            _loc13_;
            _loc7_ = _loc1_;
            _loc8_ = _loc7_.split(":");
            _loc1_ = _loc8_.join("");
         }
         if(_loc1_.indexOf("\"") != -1)
         {
            _loc7_ = _loc1_;
            _loc13_;
            _loc8_ = _loc7_.split("\"");
            _loc1_ = _loc8_.join("");
         }
         _loc12_;
         if(_loc1_.indexOf("\'") != -1)
         {
            _loc7_ = _loc1_;
            _loc13_;
            _loc13_;
            _loc8_ = _loc7_.split("\'");
            _loc1_ = _loc8_.join("");
         }
         _loc12_;
         _loc12_;
         if(_loc1_.indexOf("&") != -1)
         {
            _loc7_ = _loc1_;
            _loc13_;
            _loc13_;
            _loc8_ = _loc7_.split("&");
            _loc1_ = _loc8_.join("");
         }
         _loc13_;
         _loc13_;
         _loc13_;
         if(_loc1_.indexOf("/") != -1)
         {
            _loc12_;
            _loc9_ = _loc1_;
            _loc13_;
            _loc12_;
            _loc12_;
            _loc10_ = _loc9_.split("/");
            _loc1_ = _loc10_.join("");
         }
         _loc12_;
         _loc12_;
         if(_loc1_.length == 0)
         {
            _loc13_;
            _loc1_ = "CUSTOM";
         }
         if(_loc1_.indexOf(" ") != -1)
         {
            _loc11_ = _loc1_.split(" ");
            _loc1_ = _loc11_.join("*");
         }
         return _loc1_;
      }
      
      public function getPointsUsed() : int
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(true)
         {
            _loc4_;
            _loc4_;
            if(_loc2_ >= panels.length)
            {
               break;
            }
            _loc3_;
            _loc4_;
            _loc4_;
            _loc1_ = _loc1_ + (panels[_loc2_] as CustomWeaponPanel).getPointsUsed();
            _loc3_;
            _loc2_++;
            _loc4_;
         }
         return _loc1_;
      }
      
      override public function hideAllMenus() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc2_;
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
               _loc2_;
            }
         }
      }
   }
}
