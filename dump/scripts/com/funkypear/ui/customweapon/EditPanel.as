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
         _loc3_;
         x = param1;
         _loc3_;
         _loc3_;
         y = param2;
      }
      
      protected var panels:Array;
      
      protected var §_-yU§:Number = 5;
      
      protected var §_-fu§:Number = 29;
      
      public function addNewPanel(param1:String, param2:Boolean, param3:Boolean = false) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         _loc7_;
         _loc7_;
         if(param3)
         {
            _loc6_;
            _loc6_;
            this.§_-yU§ = 582;
            _loc7_;
            _loc7_;
         }
         else
         {
            this.§_-yU§ = 5;
            _loc7_;
            if(this.panels.length > 0)
            {
               _loc6_;
               _loc6_;
               this.§_-yU§ = this.panels[this.panels.length - 1].x + this.panels[this.panels.length - 1].panel_width;
            }
         }
         var _loc4_:Class = getDefinitionByName(param1) as Class;
         var _loc5_:CustomWeaponPanel = new _loc4_(this.§_-yU§,this.§_-fu§) as CustomWeaponPanel;
         _loc5_.§_-fz§(param2);
         _loc6_;
         _loc6_;
         addChild(_loc5_);
         _loc6_;
         _loc6_;
         this.panels.push(_loc5_);
         _loc7_;
         this.§_-u3§();
      }
      
      protected function §_-u3§() : void
      {
      }
      
      public function removePanel(param1:CustomWeaponPanel) : void
      {
      }
      
      public function selectMenuItem(param1:int, param2:Boolean = false) : void
      {
      }
      
      public function §_-zX§(param1:int) : void
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
