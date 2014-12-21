package com.funkypear.ui
{
   import flash.text.TextField;
   import flash.text.TextFormat;
   import §_-Ff§.ItemsData;
   import flash.display.Sprite;
   
   public class ShopInfoWeapon extends §_-C3§
   {
      
      public function ShopInfoWeapon()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
      }
      
      public var §_-ci§:TextField;
      
      public var desc_text:TextField;
      
      public var strip_text_2:TextField;
      
      public var strip_text_3:TextField;
      
      public var strip_text_1:TextField;
      
      public var name_text:TextField;
      
      public var §_-LO§:TextField;
      
      override public function displayItemDetails(param1:String, param2:int) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc7_:* = 0;
         var _loc3_:TextFormat = new TextFormat();
         _loc9_;
         _loc3_.letterSpacing = -0.7;
         _loc9_;
         this.name_text.text = ItemsData.§_-7L§(param1,param2).toUpperCase();
         _loc9_;
         _loc9_;
         this.desc_text.text = ItemsData.§_-up§(param1,param2).toUpperCase();
         _loc9_;
         _loc9_;
         var _loc4_:String = ItemsData.§_-FQ§(param1,param2);
         var _loc5_:Array = _loc4_.split("|");
         this.strip_text_1.text = _loc5_[0];
         this.strip_text_2.text = _loc5_[1];
         _loc8_;
         _loc8_;
         _loc9_;
         _loc9_;
         _loc8_;
         _loc8_;
         _loc9_;
         _loc9_;
         if(param2 == 31 || param2 == 39 || param2 == 40)
         {
            this.strip_text_3.text = _loc5_[1];
            _loc9_;
         }
         else
         {
            _loc8_;
            _loc8_;
            _loc7_ = SafeGlobal.§_-NQ§(param2);
            _loc9_;
            _loc9_;
            _loc8_;
            if((SafeGlobal.§_-NQ§(param2)) > 0)
            {
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               if(param2 == SafeGlobal.§_-8I§[0])
               {
                  this.§_-LO§.text = "BASE DAMAGE";
                  _loc8_;
                  _loc8_;
                  this.strip_text_3.text = String("+/- 100 HP");
                  _loc9_;
                  _loc9_;
               }
               else
               {
                  _loc8_;
                  _loc8_;
                  _loc9_;
                  if(param2 == SafeGlobal.§_-2l§[0])
                  {
                     this.§_-LO§.text = "BASE DAMAGE";
                     this.strip_text_3.text = String("10 HP");
                     _loc8_;
                     _loc8_;
                  }
                  else
                  {
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     _loc9_;
                     if(param2 == SafeGlobal.WEAPONINFO_METEORSHOWER[0])
                     {
                        _loc8_;
                        this.§_-LO§.text = "TOTAL DAMAGE";
                     }
                     else
                     {
                        _loc8_;
                        _loc8_;
                        _loc9_;
                        _loc9_;
                        if(param2 == SafeGlobal.WEAPONINFO_METEORSTORM[0])
                        {
                           _loc8_;
                           _loc8_;
                           this.§_-LO§.text = "TOTAL DAMAGE";
                        }
                        else
                        {
                           _loc9_;
                           _loc9_;
                           if(param2 == SafeGlobal.WEAPONINFO_METEORSTRIKE[0])
                           {
                              _loc8_;
                              this.§_-LO§.text = "TOTAL DAMAGE";
                           }
                           else if(param2 == SafeGlobal.§_-22§[0])
                           {
                              this.§_-LO§.text = "TOTAL DAMAGE";
                              _loc9_;
                           }
                           else
                           {
                              this.§_-LO§.text = "BASE DAMAGE";
                              _loc9_;
                              _loc9_;
                           }
                           
                        }
                     }
                     this.strip_text_3.text = String(_loc7_ + " HP");
                     _loc8_;
                     _loc8_;
                  }
               }
            }
            else if(_loc7_ < 0)
            {
               this.§_-LO§.text = "HEALTH BOOST";
               _loc8_;
               _loc8_;
               this.strip_text_3.text = String(0 - _loc7_ + " HP");
               _loc8_;
            }
            else
            {
               this.§_-LO§.text = "BASE DAMAGE";
               this.strip_text_3.text = "N/A";
               _loc8_;
               _loc8_;
            }
            
         }
         this.§_-ci§.text = _loc5_[2];
         _loc9_;
         _loc9_;
         this.name_text.setTextFormat(_loc3_);
         _loc9_;
         _loc9_;
         this.desc_text.setTextFormat(_loc3_);
         this.§_-ci§.setTextFormat(_loc3_);
         this.strip_text_1.setTextFormat(_loc3_);
         this.strip_text_2.setTextFormat(_loc3_);
         this.strip_text_3.setTextFormat(_loc3_);
         _loc9_;
         this.§_-LO§.setTextFormat(_loc3_);
         if(§_-hE§.numChildren > 0)
         {
            while(§_-hE§.numChildren > 0)
            {
               §_-hE§.removeChildAt(0);
               _loc8_;
               _loc8_;
            }
         }
         var _loc6_:Sprite = SafeGlobal.§_-e§(param2);
         if(param2 == 22)
         {
            _loc6_.scaleX = 1;
            _loc6_.scaleY = 1;
         }
         else
         {
            _loc6_.scaleX = 1.4;
            _loc8_;
            _loc6_.scaleY = 1.4;
            _loc8_;
         }
         §_-hE§.addChild(_loc6_);
      }
   }
}
