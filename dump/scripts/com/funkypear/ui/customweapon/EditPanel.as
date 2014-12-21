package com.funkypear.ui.customweapon
{
   import flash.display.Sprite;
   import flash.utils.getDefinitionByName;
   
   public class EditPanel extends Sprite
   {
      
      public function EditPanel(param1:Number, param2:Number)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         super();
         _loc4_;
         x = param1;
         _loc4_;
         _loc4_;
         y = param2;
      }
      
      protected var panels:Array;
      
      protected var §_-Uf§:Number = 5;
      
      protected var §_-5y§:Number = 29;
      
      public function addNewPanel(param1:String, param2:Boolean, param3:Boolean = false) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         _loc6_;
         _loc6_;
         if(param3)
         {
            _loc6_;
            this.§_-Uf§ = 582;
            _loc7_;
         }
         else
         {
            this.§_-Uf§ = 5;
            _loc6_;
            if(this.panels.length > 0)
            {
               _loc6_;
               this.§_-Uf§ = this.panels[this.panels.length - 1].x + this.panels[this.panels.length - 1].panel_width;
            }
         }
         var _loc4_:Class = getDefinitionByName(param1) as Class;
         var _loc5_:CustomWeaponPanel = new _loc4_(this.§_-Uf§,this.§_-5y§) as CustomWeaponPanel;
         _loc5_.§_-ZJ§(param2);
         _loc7_;
         addChild(_loc5_);
         _loc7_;
         _loc7_;
         this.panels.push(_loc5_);
         _loc6_;
         _loc6_;
         this.§_-aQ§();
      }
      
      protected function §_-aQ§() : void
      {
      }
      
      public function removePanel(param1:CustomWeaponPanel) : void
      {
      }
      
      public function selectMenuItem(param1:int, param2:Boolean = false) : void
      {
      }
      
      public function §_-Z-§(param1:int) : void
      {
      }
      
      public function getDataString() : String
      {
         return "";
      }
      
      public function hideAllMenus() : void
      {
      }
   }
}
