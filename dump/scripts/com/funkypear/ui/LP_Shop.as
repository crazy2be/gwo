package com.funkypear.ui
{
   import flash.display.MovieClip;
   import §_-ZN§.§_-ZH§;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import §_-Cv§.ItemsData;
   
   public class LP_Shop extends §_-A3§
   {
      
      public function LP_Shop(param1:Sprite)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.§_-u1§ = new Array();
         super(param1);
         _loc2_;
         this.§_-FZ§ = new Sprite();
         this.§_-FZ§.x = 6;
         this.§_-FZ§.y = 83;
         _loc3_;
         _loc3_;
         this.§_-Eb§ = new Sprite();
         _loc3_;
         this.§_-Eb§.x = 6;
         _loc3_;
         this.§_-Eb§.y = 83;
         this.§_-Eb§.graphics.beginFill(0,1);
         _loc3_;
         this.§_-Eb§.graphics.drawRect(0,0,435,408);
         _loc3_;
         _loc3_;
         this.§_-Eb§.graphics.endFill();
         _loc3_;
         this.§_-FZ§.mask = this.§_-Eb§;
         this.§_-FZ§.cacheAsBitmap = true;
         addChild(this.§_-FZ§);
         addChild(this.§_-Eb§);
         _loc3_;
         _loc3_;
         this.§_-4C§ = new §_-vr§(this.§_-FZ§,this.§_-Eb§);
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-4C§.x = 460;
         _loc3_;
         _loc3_;
         this.§_-4C§.y = 83;
         addChild(this.§_-4C§);
         this.filter_drop_down = new DropDownMenu();
         _loc2_;
         _loc2_;
         this.filter_drop_down.init(["EVERYTHING","CAMPAIGNS","WEAPONS","HELMETS","MODS","OTHER"],this);
         _loc2_;
         _loc2_;
         this.filter_drop_down.x = 70;
         _loc2_;
         _loc2_;
         this.filter_drop_down.y = 49;
         this.filter_drop_down.name = "filter_drop_down";
         _loc2_;
         _loc2_;
         addChild(this.filter_drop_down);
         _loc3_;
         _loc3_;
         this.sort_drop_down = new DropDownMenu();
         _loc2_;
         _loc2_;
         _loc2_;
         this.sort_drop_down.init(["DEFAULT","NAME","LOWEST PRICE","HIGHEST PRICE"],this);
         _loc3_;
         _loc3_;
         _loc3_;
         this.sort_drop_down.x = 306;
         _loc3_;
         this.sort_drop_down.y = 49;
         _loc3_;
         this.sort_drop_down.name = "sort_drop_down";
         _loc2_;
         _loc2_;
         addChild(this.sort_drop_down);
         _loc3_;
         _loc3_;
         this.§_-Ct§.gotoAndStop("up");
         _loc3_;
         this.§_-dH§ = false;
         _loc3_;
         _loc3_;
         this.§_-Ct§.mouseEnabled = true;
         _loc3_;
         _loc3_;
         this.§_-Ct§.mouseChildren = false;
         this.§_-Ct§.buttonMode = true;
         this.§_-Ct§.addEventListener(MouseEvent.ROLL_OVER,this.§_-15§,false,0,true);
         _loc2_;
         _loc2_;
         this.§_-Ct§.addEventListener(MouseEvent.ROLL_OUT,this.§_-uW§,false,0,true);
         this.§_-Ct§.addEventListener(MouseEvent.CLICK,this.§_-4X§,false,0,true);
      }
      
      public var §_-Ct§:MovieClip;
      
      public var §_-xV§:§_-ZH§;
      
      public var info:ShopInfoPanel;
      
      private var §_-9S§:String = "";
      
      public var §_-u1§:Array;
      
      private var §_-FZ§:Sprite;
      
      private var §_-Eb§:Sprite;
      
      private var §_-4C§:§_-vr§;
      
      private var §_-SY§:int = 0;
      
      private var §_-fn§:int = 1;
      
      private var §_-LJ§:int = 2;
      
      private var §_-Rm§:int = 3;
      
      private var §_-vu§:int = 4;
      
      private var §_-WD§:int = 5;
      
      public var §_-pR§:int = 0;
      
      private var §_-Wi§:int = 0;
      
      private var §_-oJ§:int = 1;
      
      private var §_-5z§:int = 2;
      
      private var §_-L3§:int = 3;
      
      public var §_-vh§:int = 0;
      
      private var filter_drop_down:DropDownMenu;
      
      private var sort_drop_down:DropDownMenu;
      
      private var §_-dH§:Boolean = false;
      
      public function §_-15§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(this.§_-dH§)
         {
            _loc3_;
            _loc3_;
            this.§_-Ct§.gotoAndStop("selected_over");
            _loc3_;
         }
         else
         {
            this.§_-Ct§.gotoAndStop("over");
         }
      }
      
      public function §_-uW§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(this.§_-dH§)
         {
            _loc3_;
            _loc3_;
            this.§_-Ct§.gotoAndStop("selected_up");
            _loc2_;
         }
         else
         {
            this.§_-Ct§.gotoAndStop("up");
         }
      }
      
      public function §_-4X§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.§_-dH§)
         {
            _loc3_;
            _loc3_;
            this.§_-Ct§.gotoAndStop("over");
            _loc3_;
            this.§_-dH§ = false;
            _loc2_;
            _loc2_;
         }
         else
         {
            this.§_-Ct§.gotoAndStop("selected_over");
            this.§_-dH§ = true;
         }
         this.§_-1O§(this.§_-9S§,this.§_-pR§,this.§_-vh§);
      }
      
      override public function tweenInExtras() : void
      {
      }
      
      public function update(param1:Boolean = true) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(param1)
         {
            _loc3_;
            _loc3_;
            this.§_-rj§();
            _loc2_;
         }
         else if(this.§_-9S§ != "")
         {
            _loc3_;
            this.§_-1O§(this.§_-9S§,this.§_-pR§,this.§_-vh§);
         }
         
      }
      
      public function §_-rj§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         Global.lobby_client.loadShopItems();
      }
      
      public function §_-1O§(param1:String, param2:int = 0, param3:int = 0) : *
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
         _loc14_;
         _loc14_;
         this.§_-9h§();
         _loc14_;
         _loc14_;
         this.§_-u1§ = new Array();
         _loc14_;
         _loc14_;
         this.§_-9S§ = param1;
         var _loc4_:Array = param1.split("|");
         var _loc7_:* = -1;
         var _loc11_:Array = new Array();
         _loc15_;
         _loc12_ = 0;
         while(_loc12_ < _loc4_.length)
         {
            _loc5_ = _loc4_[_loc12_].split(",");
            _loc14_;
            _loc14_;
            _loc6_ = _loc5_[0];
            _loc15_;
            _loc8_ = _loc5_[0].substr(0,1);
            _loc15_;
            _loc15_;
            _loc9_ = int(_loc5_[0].substr(1));
            _loc10_ = int(_loc5_[1]);
            _loc14_;
            ItemsData.setItemPrice(_loc8_,_loc9_,_loc10_);
            _loc15_;
            _loc11_.push({
               "item_type":_loc8_,
               "item_id":_loc9_,
               "item_name":ItemsData.§_-u2§(_loc8_,_loc9_),
               "item_cost":_loc10_,
               "shop_id":_loc6_
            });
            _loc12_++;
         }
         _loc14_;
         _loc14_;
         _loc15_;
         _loc15_;
         if(param3 == this.§_-Wi§)
         {
            _loc15_;
            _loc15_;
         }
         else
         {
            _loc14_;
            _loc14_;
            if(param3 == this.§_-oJ§)
            {
               _loc11_.sortOn("item_name");
            }
            else
            {
               _loc14_;
               if(param3 == this.§_-5z§)
               {
                  _loc14_;
                  _loc14_;
                  _loc11_.sortOn("item_cost",Array.NUMERIC);
                  _loc15_;
                  _loc15_;
               }
               else
               {
                  _loc15_;
                  _loc15_;
                  _loc15_;
                  _loc15_;
                  if(param3 == this.§_-L3§)
                  {
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
            _loc8_ = _loc11_[_loc12_].item_type;
            _loc14_;
            _loc14_;
            _loc9_ = _loc11_[_loc12_].item_id;
            _loc15_;
            _loc10_ = _loc11_[_loc12_].item_cost;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc15_;
            _loc14_;
            if(param2 == this.§_-SY§ || _loc8_ == "C" && param2 == this.§_-fn§ || _loc8_ == "W" && param2 == this.§_-LJ§ || _loc8_ == "H" && param2 == this.§_-Rm§ || _loc8_ == "M" && param2 == this.§_-vu§ || !(_loc8_ == "W") && !(_loc8_ == "C") && !(_loc8_ == "H") && !(_loc8_ == "M") && !(_loc8_ == "F") && param2 == this.§_-WD§)
            {
               _loc13_ = new ShopItemBox(_loc6_,_loc8_,_loc9_,_loc10_);
               _loc14_;
               _loc14_;
               if(!this.§_-dH§ || (this.§_-dH§) && !_loc13_.§_-WW§())
               {
                  _loc7_++;
                  _loc14_;
                  _loc14_;
                  _loc15_;
                  _loc13_.x = _loc7_ % 2 * 220;
                  _loc15_;
                  _loc13_.y = Math.floor(_loc7_ / 2) * 60;
                  _loc13_.name = _loc6_;
                  this.§_-u1§.push(_loc13_);
                  this.§_-FZ§.addChild(this.§_-u1§[this.§_-u1§.length - 1]);
               }
            }
            _loc12_++;
         }
         this.§_-4C§.§_-ps§();
      }
      
      public function §_-9h§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = this.§_-u1§.length - 1;
         while(_loc1_ >= 0)
         {
            this.§_-FZ§.removeChild(this.§_-u1§[_loc1_]);
            _loc3_;
            this.§_-u1§.splice(_loc1_,1);
            _loc3_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc1_--;
            _loc2_;
            _loc2_;
         }
      }
      
      public function §_-pK§(param1:String) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         var _loc2_:String = param1.substr(0,1);
         var _loc3_:int = int(param1.substr(1));
         if(_loc2_ == "W")
         {
            _loc4_;
            _loc5_;
            _loc5_;
            SafeGlobal.weaponsUnlocked[_loc3_] = true;
            SafeGlobal.§_-LL§.setInt(SafeGlobal.§_-LL§.getInt() + 1);
         }
         else
         {
            _loc5_;
            _loc4_;
            _loc4_;
            if(_loc2_ == "C")
            {
               _loc5_;
               _loc5_;
               _loc5_;
               SafeGlobal.campaigns[_loc3_ - 1].unlocked[0] = 1;
               _loc5_;
               _loc5_;
               _loc5_;
               SafeGlobal.campaigns[_loc3_ - 1].unlocked[1] = 1;
               _loc5_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               SafeGlobal.campaigns[_loc3_ - 1].unlocked[2] = 1;
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               _loc5_;
               SafeGlobal.campaigns[_loc3_ - 1].unlocked[3] = 1;
               _loc4_;
               SafeGlobal.campaigns[_loc3_ - 1].unlocked[4] = 1;
               _loc4_;
            }
            else
            {
               _loc5_;
               if(_loc2_ == "H")
               {
                  _loc5_;
                  _loc5_;
                  _loc4_;
                  SafeGlobal.helmetsUnlocked[_loc3_] = true;
               }
               else if(_loc2_ == "M")
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  SafeGlobal.modsUnlocked[_loc3_] = true;
                  _loc5_;
               }
               else
               {
                  _loc5_;
                  _loc4_;
                  _loc4_;
                  if(_loc2_ == "X")
                  {
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     if(_loc3_ == 0)
                     {
                        _loc5_;
                        _loc5_;
                        SafeGlobal.§_-QC§[SafeGlobal.§_-0e§].setInt(SafeGlobal.§_-QC§[SafeGlobal.§_-0e§].getInt() + 1);
                     }
                     else
                     {
                        _loc5_;
                        _loc4_;
                        if(_loc3_ == 1)
                        {
                           _loc4_;
                           SafeGlobal.§_-QC§[SafeGlobal.§_-0e§].setInt(SafeGlobal.§_-QC§[SafeGlobal.§_-0e§].getInt() + 5);
                           _loc4_;
                           _loc4_;
                        }
                        else
                        {
                           _loc5_;
                           _loc5_;
                           _loc5_;
                           if(_loc3_ == 2)
                           {
                              _loc5_;
                              _loc5_;
                              SafeGlobal.§_-QC§[SafeGlobal.§_-0e§].setInt(SafeGlobal.§_-QC§[SafeGlobal.§_-0e§].getInt() + 20);
                           }
                           else
                           {
                              _loc5_;
                              _loc5_;
                              _loc4_;
                              if(_loc3_ == 3)
                              {
                                 _loc5_;
                                 _loc5_;
                                 SafeGlobal.§_-QC§[SafeGlobal.§_-1i§].setInt(SafeGlobal.§_-QC§[SafeGlobal.§_-1i§].getInt() + 1);
                              }
                              else
                              {
                                 _loc5_;
                                 _loc5_;
                                 _loc5_;
                                 if(_loc3_ == 4)
                                 {
                                    _loc5_;
                                    SafeGlobal.§_-QC§[SafeGlobal.§_-1i§].setInt(SafeGlobal.§_-QC§[SafeGlobal.§_-1i§].getInt() + 5);
                                 }
                                 else if(_loc3_ == 5)
                                 {
                                    SafeGlobal.§_-QC§[SafeGlobal.§_-1i§].setInt(SafeGlobal.§_-QC§[SafeGlobal.§_-1i§].getInt() + 20);
                                 }
                                 
                              }
                           }
                        }
                     }
                  }
                  else if(_loc2_ == "F")
                  {
                     _loc5_;
                     _loc5_;
                     SafeGlobal.coloursUnlocked[_loc3_] = true;
                     _loc5_;
                  }
                  else if(_loc2_ == "V")
                  {
                     _loc5_;
                     _loc5_;
                     SafeGlobal.victoryAnimsUnlocked[_loc3_] = true;
                  }
                  else
                  {
                     _loc4_;
                     _loc4_;
                     if(_loc2_ == "I")
                     {
                        _loc4_;
                        _loc5_;
                        _loc5_;
                        _loc4_;
                        SafeGlobal.idleAnimsUnlocked[_loc3_] = true;
                     }
                     else if(_loc2_ == "B")
                     {
                        _loc4_;
                        _loc4_;
                        SafeGlobal.helmetsUnlocked[Global.HELMET_BETA] = true;
                        _loc4_;
                     }
                     
                  }
                  
                  
               }
               
            }
         }
         this.info.§_-0o§();
      }
      
      public function §_-HG§(param1:String, param2:int) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:ShopItemBox = null;
         _loc5_;
         var _loc3_:String = this.info.§_-3C§();
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         if(!(_loc3_ == "") && !(_loc3_ == null))
         {
            _loc4_ = this.§_-FZ§.getChildByName(_loc3_) as ShopItemBox;
            if(_loc4_ != null)
            {
               _loc5_;
               _loc5_;
               _loc4_.doSelect(false);
            }
         }
         _loc4_ = this.§_-FZ§.getChildByName(param1) as ShopItemBox;
         _loc4_.doSelect(true);
         _loc6_;
         this.info.§_-jI§(param1,param2);
      }
      
      public function handleClickDropDown(param1:String, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc4_;
         if(param1 == "filter_drop_down")
         {
            _loc4_;
            _loc4_;
            this.§_-g4§(param2);
            _loc3_;
            _loc3_;
         }
         else if(param1 == "sort_drop_down")
         {
            _loc3_;
            _loc3_;
            this.§_-gd§(param2);
         }
         
      }
      
      private function §_-g4§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-pR§ = param1;
         _loc2_;
         this.§_-1O§(this.§_-9S§,param1,this.§_-vh§);
      }
      
      private function §_-gd§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-vh§ = param1;
         _loc2_;
         _loc2_;
         this.§_-1O§(this.§_-9S§,this.§_-pR§,param1);
      }
   }
}
