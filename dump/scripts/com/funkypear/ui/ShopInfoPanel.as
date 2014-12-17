package com.funkypear.ui
{
   import flash.display.Sprite;
   import §_-ZN§.ButtonBuyShopItem;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.events.Event;
   
   public class ShopInfoPanel extends Sprite
   {
      
      public function ShopInfoPanel()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
         _loc2_;
         this.§_-Bh§ = new §set §();
         _loc1_;
         _loc1_;
         this.§_-3N§ = new ShopInfoAnimation();
         this.§_-ve§ = new §_-GP§();
         _loc1_;
         this.§_-qM§ = new ShopInfoCampaign();
         _loc2_;
         this.§_-H6§ = new §_-ZC§();
         this.§_-6U§ = new §_-UE§();
         _loc1_;
         this.§_-L4§ = new ShopInfoWeapon();
         this.§_-3U§();
         addEventListener(Event.ADDED_TO_STAGE,this.§_-y5§,false,0,true);
      }
      
      public var §_-Sg§:ButtonBuyShopItem;
      
      public var §_-2D§:MovieClip;
      
      public var panel_title:TextField;
      
      public var itemID:String;
      
      public var cost:int;
      
      private var §_-Bh§:§set §;
      
      private var §_-3N§:ShopInfoAnimation;
      
      private var §_-ve§:§_-GP§;
      
      private var §_-qM§:ShopInfoCampaign;
      
      private var §_-H6§:§_-ZC§;
      
      private var §_-6U§:§_-UE§;
      
      private var §_-L4§:ShopInfoWeapon;
      
      public function §_-y5§(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         addChild(this.§_-Bh§);
         addChild(this.§_-3N§);
         _loc2_;
         _loc2_;
         addChild(this.§_-ve§);
         _loc2_;
         _loc2_;
         addChild(this.§_-qM§);
         _loc3_;
         addChild(this.§_-H6§);
         addChild(this.§_-6U§);
         addChild(this.§_-L4§);
         _loc3_;
         _loc3_;
         this.panel_title.text = "INFORMATION";
         this.§_-Bh§.visible = true;
         this.§_-2D§.visible = false;
         setChildIndex(this.§_-Sg§,numChildren - 1);
         _loc2_;
         this.§_-Sg§.hideMe();
      }
      
      public function §_-3C§() : String
      {
         return this.itemID;
      }
      
      public function §_-0o§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:String = null;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.itemID == "" || this.itemID == null)
         {
            this.§_-85§("",0);
         }
         else
         {
            this.§_-Sg§.§_-Gv§(this.itemID);
            _loc3_;
            _loc1_ = this.itemID.substr(0,1);
            _loc4_;
            _loc4_;
            _loc2_ = int(this.itemID.substr(1));
            _loc3_;
            if(_loc1_ == "W" && (SafeGlobal.weaponsUnlocked[_loc2_]))
            {
               this.§_-Sg§.hideMe();
            }
            else
            {
               _loc4_;
               if(_loc1_ == "M" && (SafeGlobal.modsUnlocked[_loc2_]))
               {
                  _loc4_;
                  _loc3_;
                  _loc3_;
                  this.§_-Sg§.hideMe();
               }
               else if(_loc1_ == "H" && (SafeGlobal.helmetsUnlocked[_loc2_]))
               {
                  this.§_-Sg§.hideMe();
               }
               else if(_loc1_ == "C" && SafeGlobal.campaigns[_loc2_ - 1].unlocked[0] == 1)
               {
                  this.§_-Sg§.hideMe();
                  _loc3_;
                  _loc3_;
               }
               else
               {
                  _loc4_;
                  _loc3_;
                  if(_loc1_ == "F" && (SafeGlobal.coloursUnlocked[_loc2_]))
                  {
                     this.§_-Sg§.hideMe();
                  }
                  else
                  {
                     _loc4_;
                     _loc3_;
                     _loc4_;
                     _loc4_;
                     if(_loc1_ == "V" && (SafeGlobal.victoryAnimsUnlocked[_loc2_]))
                     {
                        _loc4_;
                        this.§_-Sg§.hideMe();
                        _loc3_;
                        _loc3_;
                     }
                     else if(_loc1_ == "I" && (SafeGlobal.idleAnimsUnlocked[_loc2_]))
                     {
                        _loc4_;
                        _loc4_;
                        this.§_-Sg§.hideMe();
                        _loc4_;
                     }
                     else
                     {
                        this.§_-Sg§.showMe();
                     }
                     
                  }
               }
               
               
            }
         }
      }
      
      public function §_-jI§(param1:String, param2:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:String = null;
         var _loc4_:* = 0;
         _loc5_;
         _loc5_;
         this.itemID = param1;
         this.cost = param2;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc3_ = this.itemID.substr(0,1);
         _loc4_ = int(this.itemID.substr(1));
         _loc5_;
         _loc5_;
         this.§_-85§(_loc3_,_loc4_);
         _loc6_;
         this.§_-Sg§.§_-Gv§(this.itemID);
         this.§_-2D§.visible = true;
         _loc5_;
         if(_loc3_ == "W" && (SafeGlobal.weaponsUnlocked[_loc4_]))
         {
            _loc6_;
            _loc6_;
            this.§_-Sg§.hideMe();
         }
         else
         {
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            if(_loc3_ == "M" && (SafeGlobal.modsUnlocked[_loc4_]))
            {
               _loc6_;
               _loc6_;
               this.§_-Sg§.hideMe();
            }
            else
            {
               _loc5_;
               if(_loc3_ == "H" && (SafeGlobal.helmetsUnlocked[_loc4_]))
               {
                  this.§_-Sg§.hideMe();
                  _loc5_;
                  _loc5_;
               }
               else if(_loc3_ == "C" && SafeGlobal.campaigns[_loc4_ - 1].unlocked[0] == 1)
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  this.§_-Sg§.hideMe();
                  _loc5_;
                  _loc5_;
               }
               else
               {
                  _loc5_;
                  _loc5_;
                  _loc6_;
                  _loc6_;
                  if(_loc3_ == "F" && (SafeGlobal.coloursUnlocked[_loc4_]))
                  {
                     this.§_-Sg§.hideMe();
                  }
                  else
                  {
                     _loc6_;
                     if(_loc3_ == "V" && (SafeGlobal.victoryAnimsUnlocked[_loc4_]))
                     {
                        _loc5_;
                        _loc5_;
                        this.§_-Sg§.hideMe();
                     }
                     else
                     {
                        _loc6_;
                        _loc6_;
                        if(_loc3_ == "I" && (SafeGlobal.idleAnimsUnlocked[_loc4_]))
                        {
                           _loc6_;
                           _loc5_;
                           _loc5_;
                           this.§_-Sg§.hideMe();
                        }
                        else
                        {
                           this.§_-Sg§.showMe();
                        }
                     }
                  }
               }
               
            }
         }
      }
      
      private function §_-85§(param1:String, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.§_-3U§();
         if(param1 == "W")
         {
            this.panel_title.text = "WEAPON";
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            (this.§_-L4§ as §_-PR§).displayItemDetails(param1,param2);
            this.§_-L4§.visible = true;
         }
         else if(param1 == "C")
         {
            _loc3_;
            _loc3_;
            this.panel_title.text = "CAMPAIGN";
            _loc4_;
            _loc4_;
            (this.§_-qM§ as §_-PR§).displayItemDetails(param1,param2);
            this.§_-qM§.visible = true;
         }
         else
         {
            _loc4_;
            if(param1 == "H")
            {
               _loc4_;
               _loc4_;
               this.panel_title.text = "HELMET";
               _loc3_;
               (this.§_-H6§ as §_-PR§).displayItemDetails(param1,param2);
               _loc4_;
               _loc4_;
               this.§_-H6§.visible = true;
            }
            else if(param1 == "M")
            {
               this.panel_title.text = "GAME MOD";
               _loc3_;
               _loc3_;
               (this.§_-6U§ as §_-PR§).displayItemDetails(param1,param2);
               _loc4_;
               this.§_-6U§.visible = true;
            }
            else
            {
               _loc4_;
               _loc4_;
               if(param1 == "V")
               {
                  _loc3_;
                  _loc3_;
                  this.panel_title.text = "ANIMATION";
                  _loc3_;
                  _loc3_;
                  (this.§_-3N§ as §_-PR§).displayItemDetails(param1,param2);
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  this.§_-3N§.visible = true;
                  _loc4_;
                  _loc4_;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc4_;
                  _loc4_;
                  if(param1 == "I")
                  {
                     _loc4_;
                     this.panel_title.text = "ANIMATION";
                     _loc4_;
                     _loc4_;
                     _loc3_;
                     _loc3_;
                     (this.§_-3N§ as §_-PR§).displayItemDetails(param1,param2);
                     this.§_-3N§.visible = true;
                     _loc4_;
                  }
                  else if(param1 == "X")
                  {
                     this.panel_title.text = "OTHER";
                     _loc4_;
                     _loc3_;
                     _loc3_;
                     (this.§_-ve§ as §_-PR§).displayItemDetails(param1,param2);
                     this.§_-ve§.visible = true;
                  }
                  else
                  {
                     this.panel_title.text = "INFORMATION";
                     this.§_-Bh§.visible = true;
                  }
                  
               }
            }
            
         }
         
      }
      
      private function §_-3U§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-Bh§.visible = false;
         this.§_-3N§.visible = false;
         _loc1_;
         _loc1_;
         this.§_-ve§.visible = false;
         this.§_-qM§.visible = false;
         _loc2_;
         _loc2_;
         this.§_-H6§.visible = false;
         _loc2_;
         _loc2_;
         this.§_-6U§.visible = false;
         this.§_-L4§.visible = false;
      }
   }
}
