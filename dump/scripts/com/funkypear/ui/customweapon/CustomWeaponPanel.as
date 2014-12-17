package com.funkypear.ui.customweapon
{
   import flash.display.Sprite;
   
   public class CustomWeaponPanel extends Sprite
   {
      
      public function CustomWeaponPanel(param1:Number, param2:Number)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         this.points_1 = [0,0,1,2,3,4,5,6,7,8,9,0];
         _loc4_;
         _loc4_;
         this.points_2 = [0,0,1,2,3,4,5,6,7,8,9,0];
         _loc3_;
         _loc3_;
         super();
         _loc3_;
         _loc3_;
         x = param1;
         _loc4_;
         y = param2;
      }
      
      public var panel_id:int = -1;
      
      private var §_-qV§:Boolean = true;
      
      private var §_-rv§:§_-bD§;
      
      public var panel_value:int = 0;
      
      public var panel_width:Number = 5;
      
      protected var value_1:int = 1;
      
      protected var min_1:int = 1;
      
      protected var max_1:int = 10;
      
      protected var inc_1:int = 1;
      
      protected var points_1:Array;
      
      protected var value_2:int = 1;
      
      protected var min_2:int = 1;
      
      protected var max_2:int = 10;
      
      protected var inc_2:int = 1;
      
      protected var points_2:Array;
      
      public function setDefault() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.updateBars();
      }
      
      public function getPointsUsed() : int
      {
         return 0;
      }
      
      public function getNextItemCost(param1:int = 0) : int
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(param1 == 1)
         {
            _loc3_;
            if(this.value_1 < this.max_1)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc4_;
               _loc2_ = this.points_1[this.value_1 + 1];
               _loc3_;
               _loc3_;
            }
            else
            {
               _loc3_;
               _loc2_ = 0;
               _loc3_;
               _loc3_;
            }
         }
         _loc4_;
         if(param1 == 2)
         {
            _loc4_;
            if(this.value_2 < this.max_2)
            {
               _loc3_;
               _loc2_ = this.points_2[this.value_2 + 1];
            }
            else
            {
               _loc4_;
               _loc4_;
               _loc2_ = 0;
            }
         }
         return _loc2_;
      }
      
      public function getPrevItemCost(param1:int = 0) : int
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc4_;
         if(param1 == 1)
         {
            _loc4_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc2_ = this.points_1[this.value_1];
            _loc3_;
         }
         _loc4_;
         if(param1 == 2)
         {
            _loc3_;
            _loc3_;
            _loc2_ = this.points_2[this.value_2];
         }
         return _loc2_;
      }
      
      public function updateValue1(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.value_1 = param1;
         _loc2_;
         Global.custom_weapon_panel.updatePoints();
         _loc3_;
         this.updateBars();
      }
      
      public function updateValue2(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.value_2 = param1;
         _loc3_;
         Global.custom_weapon_panel.updatePoints();
         _loc3_;
         _loc3_;
         this.updateBars();
      }
      
      public function getItemAtMax(param1:int) : Boolean
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 == 1)
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc3_;
            if(this.value_1 == this.max_1)
            {
               _loc3_;
               return true;
            }
         }
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 == 2)
         {
            if(this.value_2 == this.max_2)
            {
               _loc3_;
               _loc3_;
               return true;
            }
         }
         return false;
      }
      
      public function getMaxValue1() : int
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         var _loc1_:int = this.value_1;
         var _loc2_:* = 0;
         _loc4_;
         var _loc3_:int = this.value_1 + 1;
         while(true)
         {
            _loc5_;
            _loc5_;
            if(_loc3_ > this.max_1)
            {
               break;
            }
            _loc4_;
            _loc4_;
            _loc2_ = _loc2_ + this.points_1[_loc3_];
            _loc4_;
            _loc4_;
            _loc4_;
            if(_loc2_ <= Global.custom_weapon_panel.§_-fk§.getInt())
            {
               _loc4_;
               _loc1_ = _loc3_;
               _loc5_;
               _loc3_++;
               _loc4_;
               continue;
            }
            break;
         }
         return _loc1_ - this.value_1;
      }
      
      public function getMaxValue2() : int
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         var _loc1_:int = this.value_2;
         var _loc2_:* = 0;
         _loc4_;
         var _loc3_:int = this.value_2 + 1;
         while(true)
         {
            _loc4_;
            _loc4_;
            if(_loc3_ > this.max_2)
            {
               break;
            }
            _loc2_ = _loc2_ + this.points_2[_loc3_];
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc5_;
            if(_loc2_ <= Global.custom_weapon_panel.§_-fk§.getInt())
            {
               _loc5_;
               _loc4_;
               _loc4_;
               _loc1_ = _loc3_;
               _loc5_;
               _loc5_;
               _loc3_++;
               _loc5_;
               _loc5_;
               continue;
            }
            break;
         }
         return _loc1_ - this.value_2;
      }
      
      public function setInitialValue(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.value_1 = param1;
         _loc3_;
         _loc3_;
         Global.custom_weapon_panel.updatePoints();
         _loc3_;
         this.updateBars();
      }
      
      public function setInitialValues(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         this.value_2 = param1;
         _loc4_;
         this.value_1 = param2;
         _loc4_;
         Global.custom_weapon_panel.updatePoints();
         _loc4_;
         this.updateBars();
      }
      
      public function updateBars() : void
      {
      }
      
      public function §_-Qx§() : Boolean
      {
         return this.§_-qV§;
      }
      
      public function §_-fz§(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-qV§ = param1;
      }
      
      public function removePanel() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         (parent as EditPanel).removePanel(this);
      }
      
      public function §_-vG§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         Global.custom_weapon_panel.§_-hL§(0 - this.getPointsUsed());
      }
      
      public function §_-0-3§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         Global.custom_weapon_panel.§_-hL§(0);
      }
      
      public function selectMenuItem(param1:int) : void
      {
      }
      
      public function getDataString() : String
      {
         return "";
      }
      
      public function §_-zX§(param1:int) : void
      {
      }
      
      public function toggleColourMenu(param1:int = -1) : void
      {
      }
      
      public function toggleItemMenu() : void
      {
      }
      
      public function hideItemMenu() : void
      {
      }
      
      public function hideAllMenus() : void
      {
      }
   }
}
