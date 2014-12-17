package com.funkypear.ui
{
   import flash.text.TextField;
   import flash.text.TextFormat;
   import §_-Cv§.ItemsData;
   import flash.display.Sprite;
   
   public class ShopInfoWeapon extends §_-PR§
   {
      
      public function ShopInfoWeapon()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
      }
      
      public var §_-ZY§:TextField;
      
      public var desc_text:TextField;
      
      public var strip_text_2:TextField;
      
      public var strip_text_3:TextField;
      
      public var strip_text_1:TextField;
      
      public var name_text:TextField;
      
      public var §_-OQ§:TextField;
      
      override public function displayItemDetails(param1:String, param2:int) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:* = 0;
         var _loc3_:TextFormat = new TextFormat();
         _loc8_;
         _loc3_.letterSpacing = -0.7;
         _loc8_;
         this.name_text.text = ItemsData.§_-u2§(param1,param2).toUpperCase();
         _loc9_;
         _loc9_;
         this.desc_text.text = ItemsData.§_-7e§(param1,param2).toUpperCase();
         _loc9_;
         var _loc4_:String = ItemsData.§_-9F§(param1,param2);
         var _loc5_:Array = _loc4_.split("|");
         _loc9_;
         this.strip_text_1.text = _loc5_[0];
         _loc9_;
         _loc9_;
         this.strip_text_2.text = _loc5_[1];
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc9_;
         if(param2 == 31 || param2 == 39 || param2 == 40)
         {
            this.strip_text_3.text = _loc5_[1];
            _loc8_;
         }
         else
         {
            _loc9_;
            _loc9_;
            _loc7_ = SafeGlobal.§_-iL§(param2);
            _loc8_;
            if((SafeGlobal.§_-iL§(param2)) > 0)
            {
               _loc9_;
               _loc9_;
               _loc9_;
               _loc8_;
               if(param2 == SafeGlobal.§_-Do§[0])
               {
                  this.§_-OQ§.text = "BASE DAMAGE";
                  this.strip_text_3.text = String("+/- 100 HP");
               }
               else
               {
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  _loc9_;
                  if(param2 == SafeGlobal.§_-ZI§[0])
                  {
                     this.§_-OQ§.text = "BASE DAMAGE";
                     this.strip_text_3.text = String("10 HP");
                     _loc9_;
                  }
                  else
                  {
                     _loc9_;
                     _loc9_;
                     _loc9_;
                     _loc9_;
                     _loc8_;
                     _loc8_;
                     if(param2 == SafeGlobal.WEAPONINFO_METEORSHOWER[0])
                     {
                        this.§_-OQ§.text = "TOTAL DAMAGE";
                     }
                     else
                     {
                        _loc8_;
                        _loc8_;
                        _loc9_;
                        _loc9_;
                        _loc9_;
                        if(param2 == SafeGlobal.WEAPONINFO_METEORSTORM[0])
                        {
                           this.§_-OQ§.text = "TOTAL DAMAGE";
                        }
                        else
                        {
                           _loc8_;
                           _loc8_;
                           _loc8_;
                           if(param2 == SafeGlobal.WEAPONINFO_METEORSTRIKE[0])
                           {
                              _loc9_;
                              this.§_-OQ§.text = "TOTAL DAMAGE";
                           }
                           else if(param2 == SafeGlobal.§_-5U§[0])
                           {
                              this.§_-OQ§.text = "TOTAL DAMAGE";
                              _loc9_;
                           }
                           else
                           {
                              this.§_-OQ§.text = "BASE DAMAGE";
                              _loc9_;
                              _loc9_;
                           }
                           
                        }
                     }
                     this.strip_text_3.text = String(_loc7_ + " HP");
                     _loc9_;
                     _loc9_;
                  }
               }
            }
            else if(_loc7_ < 0)
            {
               this.§_-OQ§.text = "HEALTH BOOST";
               _loc9_;
               this.strip_text_3.text = String(0 - _loc7_ + " HP");
               _loc9_;
               _loc9_;
            }
            else
            {
               this.§_-OQ§.text = "BASE DAMAGE";
               _loc9_;
               this.strip_text_3.text = "N/A";
            }
            
         }
         this.§_-ZY§.text = _loc5_[2];
         this.name_text.setTextFormat(_loc3_);
         _loc8_;
         _loc8_;
         this.desc_text.setTextFormat(_loc3_);
         this.§_-ZY§.setTextFormat(_loc3_);
         _loc9_;
         this.strip_text_1.setTextFormat(_loc3_);
         this.strip_text_2.setTextFormat(_loc3_);
         this.strip_text_3.setTextFormat(_loc3_);
         this.§_-OQ§.setTextFormat(_loc3_);
         if(§_-Jm§.numChildren > 0)
         {
            while(§_-Jm§.numChildren > 0)
            {
               §_-Jm§.removeChildAt(0);
               _loc9_;
            }
         }
         var _loc6_:Sprite = SafeGlobal.§_-ct§(param2);
         if(param2 == 22)
         {
            _loc6_.scaleX = 1;
            _loc8_;
            _loc6_.scaleY = 1;
            _loc9_;
            _loc9_;
         }
         else
         {
            _loc6_.scaleX = 1.4;
            _loc6_.scaleY = 1.4;
         }
         §_-Jm§.addChild(_loc6_);
      }
   }
}
