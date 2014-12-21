package com.funkypear.ui
{
   import flash.display.MovieClip;
   import §_-bY§.§_-vk§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import §_-Ff§.ItemsData;
   
   public class LP_Shop extends §_-uw§
   {
      
      public function LP_Shop(param1:Sprite)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.§_-1i§ = new Array();
         super(param1);
         this.§_-TW§ = new Sprite();
         _loc3_;
         _loc3_;
         this.§_-TW§.x = 6;
         _loc2_;
         this.§_-TW§.y = 83;
         _loc3_;
         this.§_-7o§ = new Sprite();
         _loc3_;
         _loc3_;
         this.§_-7o§.x = 6;
         _loc2_;
         this.§_-7o§.y = 83;
         this.§_-7o§.graphics.beginFill(0,1);
         this.§_-7o§.graphics.drawRect(0,0,435,408);
         this.§_-7o§.graphics.endFill();
         _loc3_;
         this.§_-TW§.mask = this.§_-7o§;
         _loc3_;
         _loc3_;
         this.§_-TW§.cacheAsBitmap = true;
         addChild(this.§_-TW§);
         _loc3_;
         addChild(this.§_-7o§);
         this.§try§ = new §_-Za§(this.§_-TW§,this.§_-7o§);
         _loc2_;
         _loc2_;
         _loc2_;
         this.§try§.x = 460;
         this.§try§.y = 83;
         _loc3_;
         _loc3_;
         addChild(this.§try§);
         _loc3_;
         this.filter_drop_down = new DropDownMenu();
         _loc2_;
         _loc3_;
         _loc3_;
         this.filter_drop_down.init(["EVERYTHING","CAMPAIGNS","WEAPONS","HELMETS","MODS","OTHER"],this);
         _loc2_;
         _loc2_;
         _loc2_;
         this.filter_drop_down.x = 70;
         _loc3_;
         this.filter_drop_down.y = 49;
         this.filter_drop_down.name = "filter_drop_down";
         addChild(this.filter_drop_down);
         _loc2_;
         _loc2_;
         this.sort_drop_down = new DropDownMenu();
         _loc3_;
         _loc3_;
         _loc3_;
         this.sort_drop_down.init(["DEFAULT","NAME","LOWEST PRICE","HIGHEST PRICE"],this);
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.sort_drop_down.x = 306;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.sort_drop_down.y = 49;
         _loc2_;
         this.sort_drop_down.name = "sort_drop_down";
         addChild(this.sort_drop_down);
         _loc2_;
         _loc2_;
         this.§_-9I§.gotoAndStop("up");
         _loc2_;
         _loc2_;
         this.§_-OS§ = false;
         this.§_-9I§.mouseEnabled = true;
         this.§_-9I§.mouseChildren = false;
         _loc2_;
         this.§_-9I§.buttonMode = true;
         this.§_-9I§.addEventListener(MouseEvent.ROLL_OVER,this.§_-GG§,false,0,true);
         this.§_-9I§.addEventListener(MouseEvent.ROLL_OUT,this.§_-wU§,false,0,true);
         this.§_-9I§.addEventListener(MouseEvent.CLICK,this.§_-NC§,false,0,true);
      }
      
      public var §_-9I§:MovieClip;
      
      public var §_-gA§:§_-vk§;
      
      public var info:ShopInfoPanel;
      
      private var §_-A7§:String = "";
      
      public var §_-1i§:Array;
      
      private var §_-TW§:Sprite;
      
      private var §_-7o§:Sprite;
      
      private var §try§:§_-Za§;
      
      private var §_-jB§:int = 0;
      
      private var §_-H1§:int = 1;
      
      private var §_-g2§:int = 2;
      
      private var §_-9P§:int = 3;
      
      private var §_-dZ§:int = 4;
      
      private var §_-RF§:int = 5;
      
      public var §_-0-6§:int = 0;
      
      private var §_-Iv§:int = 0;
      
      private var §_-Pr§:int = 1;
      
      private var §_-RP§:int = 2;
      
      private var §_-fY§:int = 3;
      
      public var §_-ft§:int = 0;
      
      private var filter_drop_down:DropDownMenu;
      
      private var sort_drop_down:DropDownMenu;
      
      private var §_-OS§:Boolean = false;
      
      public function §_-GG§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(this.§_-OS§)
         {
            _loc3_;
            _loc3_;
            this.§_-9I§.gotoAndStop("selected_over");
            _loc3_;
            _loc3_;
         }
         else
         {
            this.§_-9I§.gotoAndStop("over");
         }
      }
      
      public function §_-wU§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(this.§_-OS§)
         {
            _loc3_;
            this.§_-9I§.gotoAndStop("selected_up");
            _loc3_;
         }
         else
         {
            this.§_-9I§.gotoAndStop("up");
         }
      }
      
      public function §_-NC§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(this.§_-OS§)
         {
            this.§_-9I§.gotoAndStop("over");
            this.§_-OS§ = false;
            _loc3_;
            _loc3_;
         }
         else
         {
            this.§_-9I§.gotoAndStop("selected_over");
            _loc3_;
            _loc3_;
            this.§_-OS§ = true;
         }
         this.§_-bm§(this.§_-A7§,this.§_-0-6§,this.§_-ft§);
      }
      
      override public function tweenInExtras() : void
      {
      }
      
      public function update(param1:Boolean = true) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(param1)
         {
            _loc3_;
            this.§_-Df§();
            _loc2_;
            _loc2_;
         }
         else if(this.§_-A7§ != "")
         {
            _loc3_;
            this.§_-bm§(this.§_-A7§,this.§_-0-6§,this.§_-ft§);
         }
         
      }
      
      public function §_-Df§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         Global.lobby_client.loadShopItems();
      }
      
      public function §_-bm§(param1:String, param2:int = 0, param3:int = 0) : *
      {
         var _loc14_:* = true;
         var _loc15_:* = false;
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc8_:String = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:ShopItemBox = null;
         _loc15_;
         this.§_-5u§();
         _loc14_;
         _loc14_;
         this.§_-1i§ = new Array();
         _loc15_;
         _loc15_;
         this.§_-A7§ = param1;
         var _loc4_:Array = param1.split("|");
         var _loc7_:* = -1;
         var _loc11_:Array = new Array();
         _loc14_;
         _loc14_;
         _loc12_ = 0;
         while(_loc12_ < _loc4_.length)
         {
            _loc5_ = _loc4_[_loc12_].split(",");
            _loc14_;
            _loc6_ = _loc5_[0];
            _loc14_;
            _loc14_;
            _loc8_ = _loc5_[0].substr(0,1);
            _loc15_;
            _loc9_ = int(_loc5_[0].substr(1));
            _loc10_ = int(_loc5_[1]);
            ItemsData.setItemPrice(_loc8_,_loc9_,_loc10_);
            _loc11_.push({
               "item_type":_loc8_,
               "item_id":_loc9_,
               "item_name":ItemsData.§_-7L§(_loc8_,_loc9_),
               "item_cost":_loc10_,
               "shop_id":_loc6_
            });
            _loc12_++;
         }
         _loc14_;
         _loc14_;
         if(param3 != this.§_-Iv§)
         {
            _loc15_;
            _loc15_;
            if(param3 == this.§_-Pr§)
            {
               _loc11_.sortOn("item_name");
               _loc15_;
               _loc15_;
            }
            else
            {
               _loc14_;
               _loc14_;
               _loc14_;
               if(param3 == this.§_-RP§)
               {
                  _loc11_.sortOn("item_cost",Array.NUMERIC);
               }
               else
               {
                  _loc14_;
                  _loc14_;
                  if(param3 == this.§_-fY§)
                  {
                     _loc15_;
                     _loc11_.sortOn("item_cost",Array.NUMERIC | Array.DESCENDING);
                  }
               }
            }
         }
         _loc12_ = 0;
         _loc14_;
         while(_loc12_ < _loc11_.length)
         {
            _loc15_;
            _loc15_;
            _loc6_ = _loc11_[_loc12_].shop_id;
            _loc14_;
            _loc8_ = _loc11_[_loc12_].item_type;
            _loc9_ = _loc11_[_loc12_].item_id;
            _loc14_;
            _loc14_;
            _loc15_;
            _loc10_ = _loc11_[_loc12_].item_cost;
            _loc14_;
            _loc14_;
            _loc14_;
            if(param2 == this.§_-jB§ || _loc8_ == "C" && param2 == this.§_-H1§ || _loc8_ == "W" && param2 == this.§_-g2§ || _loc8_ == "H" && param2 == this.§_-9P§ || _loc8_ == "M" && param2 == this.§_-dZ§ || !(_loc8_ == "W") && !(_loc8_ == "C") && !(_loc8_ == "H") && !(_loc8_ == "M") && !(_loc8_ == "F") && param2 == this.§_-RF§)
            {
               _loc13_ = new ShopItemBox(_loc6_,_loc8_,_loc9_,_loc10_);
               _loc14_;
               _loc14_;
               _loc15_;
               _loc15_;
               if(!this.§_-OS§ || (this.§_-OS§) && !_loc13_.§_-ha§())
               {
                  _loc7_++;
                  _loc15_;
                  _loc15_;
                  _loc13_.x = _loc7_ % 2 * 220;
                  _loc13_.y = Math.floor(_loc7_ / 2) * 60;
                  _loc14_;
                  _loc13_.name = _loc6_;
                  _loc15_;
                  this.§_-1i§.push(_loc13_);
                  this.§_-TW§.addChild(this.§_-1i§[this.§_-1i§.length - 1]);
               }
            }
            _loc12_++;
         }
         this.§try§.§_-oc§();
      }
      
      public function §_-5u§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = this.§_-1i§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§_-TW§.removeChild(this.§_-1i§[_loc1_]);
            _loc3_;
            this.§_-1i§.splice(_loc1_,1);
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc1_--;
            _loc2_;
            _loc2_;
         }
      }
      
      public function §_-8R§(param1:String) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         var _loc2_:String = param1.substr(0,1);
         var _loc3_:int = int(param1.substr(1));
         _loc5_;
         _loc4_;
         if(_loc2_ == "W")
         {
            SafeGlobal.weaponsUnlocked[_loc3_] = true;
            SafeGlobal.§_-wv§.setInt(SafeGlobal.§_-wv§.getInt() + 1);
         }
         else
         {
            _loc4_;
            if(_loc2_ == "C")
            {
               _loc4_;
               _loc5_;
               SafeGlobal.campaigns[_loc3_ - 1].unlocked[0] = 1;
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               SafeGlobal.campaigns[_loc3_ - 1].unlocked[1] = 1;
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               _loc5_;
               SafeGlobal.campaigns[_loc3_ - 1].unlocked[2] = 1;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               SafeGlobal.campaigns[_loc3_ - 1].unlocked[3] = 1;
               _loc4_;
               _loc4_;
               _loc4_;
               SafeGlobal.campaigns[_loc3_ - 1].unlocked[4] = 1;
            }
            else
            {
               _loc5_;
               _loc5_;
               if(_loc2_ == "H")
               {
                  _loc5_;
                  _loc5_;
                  SafeGlobal.helmetsUnlocked[_loc3_] = true;
               }
               else if(_loc2_ == "M")
               {
                  _loc4_;
                  SafeGlobal.modsUnlocked[_loc3_] = true;
               }
               else
               {
                  _loc4_;
                  if(_loc2_ == "X")
                  {
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     _loc5_;
                     if(_loc3_ == 0)
                     {
                        _loc5_;
                        _loc5_;
                        SafeGlobal.§_-f0§[SafeGlobal.§_-WS§].setInt(SafeGlobal.§_-f0§[SafeGlobal.§_-WS§].getInt() + 1);
                     }
                     else
                     {
                        _loc5_;
                        _loc4_;
                        if(_loc3_ == 1)
                        {
                           _loc4_;
                           _loc4_;
                           _loc4_;
                           SafeGlobal.§_-f0§[SafeGlobal.§_-WS§].setInt(SafeGlobal.§_-f0§[SafeGlobal.§_-WS§].getInt() + 5);
                        }
                        else
                        {
                           _loc4_;
                           _loc4_;
                           _loc5_;
                           if(_loc3_ == 2)
                           {
                              _loc5_;
                              _loc5_;
                              SafeGlobal.§_-f0§[SafeGlobal.§_-WS§].setInt(SafeGlobal.§_-f0§[SafeGlobal.§_-WS§].getInt() + 20);
                           }
                           else
                           {
                              _loc5_;
                              _loc4_;
                              _loc4_;
                              if(_loc3_ == 3)
                              {
                                 _loc4_;
                                 SafeGlobal.§_-f0§[SafeGlobal.§super§].setInt(SafeGlobal.§_-f0§[SafeGlobal.§super§].getInt() + 1);
                                 _loc5_;
                              }
                              else
                              {
                                 _loc4_;
                                 _loc4_;
                                 if(_loc3_ == 4)
                                 {
                                    _loc5_;
                                    _loc5_;
                                    SafeGlobal.§_-f0§[SafeGlobal.§super§].setInt(SafeGlobal.§_-f0§[SafeGlobal.§super§].getInt() + 5);
                                    _loc4_;
                                 }
                                 else if(_loc3_ == 5)
                                 {
                                    _loc5_;
                                    _loc5_;
                                    SafeGlobal.§_-f0§[SafeGlobal.§super§].setInt(SafeGlobal.§_-f0§[SafeGlobal.§super§].getInt() + 20);
                                 }
                                 
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc5_;
                     if(_loc2_ == "F")
                     {
                        SafeGlobal.coloursUnlocked[_loc3_] = true;
                        _loc5_;
                        _loc5_;
                     }
                     else
                     {
                        _loc4_;
                        _loc4_;
                        if(_loc2_ == "V")
                        {
                           _loc4_;
                           _loc4_;
                           _loc4_;
                           _loc4_;
                           SafeGlobal.victoryAnimsUnlocked[_loc3_] = true;
                        }
                        else
                        {
                           _loc4_;
                           _loc5_;
                           _loc5_;
                           if(_loc2_ == "I")
                           {
                              _loc5_;
                              _loc5_;
                              _loc5_;
                              _loc5_;
                              SafeGlobal.idleAnimsUnlocked[_loc3_] = true;
                           }
                           else if(_loc2_ == "B")
                           {
                              _loc5_;
                              _loc5_;
                              SafeGlobal.helmetsUnlocked[Global.HELMET_BETA] = true;
                              _loc4_;
                              _loc4_;
                           }
                           
                        }
                     }
                  }
               }
               
            }
         }
         this.info.§_-vK§();
      }
      
      public function §_-Hs§(param1:String, param2:int) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:ShopItemBox = null;
         _loc6_;
         var _loc3_:String = this.info.§_-4V§();
         _loc5_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc6_;
         if(!(_loc3_ == "") && !(_loc3_ == null))
         {
            _loc4_ = this.§_-TW§.getChildByName(_loc3_) as ShopItemBox;
            if(_loc4_ != null)
            {
               _loc5_;
               _loc4_.doSelect(false);
            }
         }
         _loc4_ = this.§_-TW§.getChildByName(param1) as ShopItemBox;
         _loc4_.doSelect(true);
         _loc6_;
         this.info.§_-sk§(param1,param2);
      }
      
      public function handleClickDropDown(param1:String, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         if(param1 == "filter_drop_down")
         {
            _loc3_;
            this.§_-BJ§(param2);
            _loc4_;
            _loc4_;
         }
         else if(param1 == "sort_drop_down")
         {
            _loc3_;
            _loc3_;
            this.§_-57§(param2);
         }
         
      }
      
      private function §_-BJ§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-0-6§ = param1;
         _loc2_;
         _loc2_;
         this.§_-bm§(this.§_-A7§,param1,this.§_-ft§);
      }
      
      private function §_-57§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-ft§ = param1;
         _loc2_;
         _loc2_;
         this.§_-bm§(this.§_-A7§,this.§_-0-6§,param1);
      }
   }
}
