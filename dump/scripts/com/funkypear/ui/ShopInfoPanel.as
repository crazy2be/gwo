package com.funkypear.ui
{
   import flash.display.Sprite;
   import §_-bY§.ButtonBuyShopItem;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.events.Event;
   
   public class ShopInfoPanel extends Sprite
   {
      
      public function ShopInfoPanel()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         _loc2_;
         _loc2_;
         this.§_-c2§ = new §_-2E§();
         _loc2_;
         this.§_-DQ§ = new ShopInfoAnimation();
         this.§_-bn§ = new §_-TD§();
         this.§_-x4§ = new ShopInfoCampaign();
         this.§_-6p§ = new §_-j-§();
         this.§_-rf§ = new §_-xG§();
         _loc2_;
         this.§_-Hm§ = new ShopInfoWeapon();
         _loc2_;
         _loc2_;
         this.§_-AV§();
         _loc2_;
         addEventListener(Event.ADDED_TO_STAGE,this.§_-p§,false,0,true);
      }
      
      public var §_-ak§:ButtonBuyShopItem;
      
      public var §_-cK§:MovieClip;
      
      public var panel_title:TextField;
      
      public var itemID:String;
      
      public var cost:int;
      
      private var §_-c2§:§_-2E§;
      
      private var §_-DQ§:ShopInfoAnimation;
      
      private var §_-bn§:§_-TD§;
      
      private var §_-x4§:ShopInfoCampaign;
      
      private var §_-6p§:§_-j-§;
      
      private var §_-rf§:§_-xG§;
      
      private var §_-Hm§:ShopInfoWeapon;
      
      public function §_-p§(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         addChild(this.§_-c2§);
         addChild(this.§_-DQ§);
         _loc2_;
         _loc2_;
         addChild(this.§_-bn§);
         _loc2_;
         addChild(this.§_-x4§);
         _loc3_;
         _loc3_;
         addChild(this.§_-6p§);
         _loc3_;
         addChild(this.§_-rf§);
         addChild(this.§_-Hm§);
         _loc2_;
         this.panel_title.text = "INFORMATION";
         this.§_-c2§.visible = true;
         this.§_-cK§.visible = false;
         setChildIndex(this.§_-ak§,numChildren - 1);
         this.§_-ak§.hideMe();
      }
      
      public function §_-4V§() : String
      {
         return this.itemID;
      }
      
      public function §_-vK§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:String = null;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(this.itemID == "" || this.itemID == null)
         {
            this.§_-1F§("",0);
            _loc4_;
            _loc4_;
         }
         else
         {
            this.§_-ak§.§_-Ln§(this.itemID);
            _loc1_ = this.itemID.substr(0,1);
            _loc2_ = int(this.itemID.substr(1));
            _loc3_;
            _loc4_;
            _loc3_;
            _loc4_;
            _loc4_;
            if(_loc1_ == "W" && (SafeGlobal.weaponsUnlocked[_loc2_]))
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               this.§_-ak§.hideMe();
            }
            else
            {
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               if(_loc1_ == "M" && (SafeGlobal.modsUnlocked[_loc2_]))
               {
                  this.§_-ak§.hideMe();
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  if(_loc1_ == "H" && (SafeGlobal.helmetsUnlocked[_loc2_]))
                  {
                     this.§_-ak§.hideMe();
                     _loc4_;
                  }
                  else
                  {
                     _loc3_;
                     if(_loc1_ == "C" && SafeGlobal.campaigns[_loc2_ - 1].unlocked[0] == 1)
                     {
                        _loc3_;
                        _loc3_;
                        this.§_-ak§.hideMe();
                     }
                     else
                     {
                        _loc4_;
                        _loc4_;
                        if(_loc1_ == "F" && (SafeGlobal.coloursUnlocked[_loc2_]))
                        {
                           _loc3_;
                           _loc3_;
                           this.§_-ak§.hideMe();
                           _loc3_;
                        }
                        else
                        {
                           _loc3_;
                           _loc3_;
                           _loc3_;
                           if(_loc1_ == "V" && (SafeGlobal.victoryAnimsUnlocked[_loc2_]))
                           {
                              _loc4_;
                              this.§_-ak§.hideMe();
                           }
                           else
                           {
                              _loc3_;
                              if(_loc1_ == "I" && (SafeGlobal.idleAnimsUnlocked[_loc2_]))
                              {
                                 _loc3_;
                                 _loc3_;
                                 this.§_-ak§.hideMe();
                              }
                              else
                              {
                                 this.§_-ak§.showMe();
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §_-sk§(param1:String, param2:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:String = null;
         var _loc4_:* = 0;
         _loc6_;
         _loc6_;
         this.itemID = param1;
         _loc6_;
         this.cost = param2;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc3_ = this.itemID.substr(0,1);
         _loc6_;
         _loc4_ = int(this.itemID.substr(1));
         this.§_-1F§(_loc3_,_loc4_);
         _loc6_;
         this.§_-ak§.§_-Ln§(this.itemID);
         _loc6_;
         this.§_-cK§.visible = true;
         _loc6_;
         _loc6_;
         if(_loc3_ == "W" && (SafeGlobal.weaponsUnlocked[_loc4_]))
         {
            _loc6_;
            this.§_-ak§.hideMe();
         }
         else
         {
            _loc6_;
            if(_loc3_ == "M" && (SafeGlobal.modsUnlocked[_loc4_]))
            {
               _loc5_;
               _loc5_;
               this.§_-ak§.hideMe();
            }
            else
            {
               _loc5_;
               _loc5_;
               _loc5_;
               if(_loc3_ == "H" && (SafeGlobal.helmetsUnlocked[_loc4_]))
               {
                  _loc6_;
                  this.§_-ak§.hideMe();
               }
               else
               {
                  _loc6_;
                  _loc6_;
                  if(_loc3_ == "C" && SafeGlobal.campaigns[_loc4_ - 1].unlocked[0] == 1)
                  {
                     this.§_-ak§.hideMe();
                     _loc5_;
                  }
                  else
                  {
                     _loc5_;
                     _loc5_;
                     if(_loc3_ == "F" && (SafeGlobal.coloursUnlocked[_loc4_]))
                     {
                        _loc5_;
                        this.§_-ak§.hideMe();
                        _loc6_;
                     }
                     else
                     {
                        _loc6_;
                        _loc6_;
                        _loc5_;
                        _loc5_;
                        _loc5_;
                        if(_loc3_ == "V" && (SafeGlobal.victoryAnimsUnlocked[_loc4_]))
                        {
                           _loc6_;
                           this.§_-ak§.hideMe();
                        }
                        else if(_loc3_ == "I" && (SafeGlobal.idleAnimsUnlocked[_loc4_]))
                        {
                           _loc6_;
                           _loc6_;
                           this.§_-ak§.hideMe();
                           _loc5_;
                        }
                        else
                        {
                           this.§_-ak§.showMe();
                        }
                        
                     }
                  }
               }
            }
         }
      }
      
      private function §_-1F§(param1:String, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         this.§_-AV§();
         _loc4_;
         _loc4_;
         if(param1 == "W")
         {
            this.panel_title.text = "WEAPON";
            _loc4_;
            _loc4_;
            _loc4_;
            (this.§_-Hm§ as §_-C3§).displayItemDetails(param1,param2);
            this.§_-Hm§.visible = true;
         }
         else if(param1 == "C")
         {
            this.panel_title.text = "CAMPAIGN";
            _loc4_;
            _loc4_;
            (this.§_-x4§ as §_-C3§).displayItemDetails(param1,param2);
            this.§_-x4§.visible = true;
            _loc3_;
            _loc3_;
         }
         else
         {
            _loc4_;
            if(param1 == "H")
            {
               _loc4_;
               this.panel_title.text = "HELMET";
               _loc4_;
               _loc3_;
               _loc3_;
               (this.§_-6p§ as §_-C3§).displayItemDetails(param1,param2);
               this.§_-6p§.visible = true;
            }
            else
            {
               _loc3_;
               if(param1 == "M")
               {
                  _loc3_;
                  this.panel_title.text = "GAME MOD";
                  _loc4_;
                  (this.§_-rf§ as §_-C3§).displayItemDetails(param1,param2);
                  this.§_-rf§.visible = true;
               }
               else
               {
                  _loc4_;
                  if(param1 == "V")
                  {
                     _loc3_;
                     _loc3_;
                     this.panel_title.text = "ANIMATION";
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     (this.§_-DQ§ as §_-C3§).displayItemDetails(param1,param2);
                     _loc4_;
                     _loc3_;
                     _loc3_;
                     this.§_-DQ§.visible = true;
                     _loc4_;
                  }
                  else if(param1 == "I")
                  {
                     this.panel_title.text = "ANIMATION";
                     _loc4_;
                     _loc4_;
                     (this.§_-DQ§ as §_-C3§).displayItemDetails(param1,param2);
                     _loc3_;
                     _loc3_;
                     this.§_-DQ§.visible = true;
                  }
                  else if(param1 == "X")
                  {
                     _loc3_;
                     _loc3_;
                     this.panel_title.text = "OTHER";
                     _loc4_;
                     _loc4_;
                     (this.§_-bn§ as §_-C3§).displayItemDetails(param1,param2);
                     this.§_-bn§.visible = true;
                  }
                  else
                  {
                     this.panel_title.text = "INFORMATION";
                     _loc3_;
                     _loc3_;
                     this.§_-c2§.visible = true;
                  }
                  
                  
               }
            }
         }
         
      }
      
      private function §_-AV§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-c2§.visible = false;
         this.§_-DQ§.visible = false;
         this.§_-bn§.visible = false;
         _loc2_;
         _loc2_;
         this.§_-x4§.visible = false;
         _loc2_;
         this.§_-6p§.visible = false;
         this.§_-rf§.visible = false;
         this.§_-Hm§.visible = false;
      }
   }
}
