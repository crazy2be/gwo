package com.funkypear.ui
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import flash.text.TextField;
   import §_-Ff§.ItemsData;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   
   public class CampaignSelectDisplay extends Sprite
   {
      
      public function CampaignSelectDisplay(param1:int, param2:Boolean = false)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.campaign_id = param1;
         _loc4_;
         _loc4_;
         this.§_-9L§ = new Sprite();
         this.§_-9L§.graphics.lineStyle(1,0,0);
         _loc3_;
         _loc3_;
         this.§_-9L§.graphics.beginFill(0,0.01);
         _loc4_;
         _loc4_;
         this.§_-9L§.graphics.drawCircle(0,0,this.§_-2D§);
         _loc3_;
         _loc3_;
         this.§_-9L§.graphics.endFill();
         this.locked = param2;
         _loc3_;
         _loc3_;
         this.§_-0x§(param2);
         _loc3_;
         _loc3_;
         addChild(this.§_-9L§);
         addChild(this.§_-Fi§);
         this.updateText();
      }
      
      private var §_-qP§:Tween;
      
      private var §_-GY§:Tween;
      
      private var circle_border:CircleBorder;
      
      private var §_-9L§:Sprite;
      
      private var §_-ox§:CircleText;
      
      private var §_-2D§:int = 150;
      
      private var §_-Fi§:Sprite;
      
      private var campaign_id:int;
      
      private var §_-R4§:Tween;
      
      private var §_-qv§:Tween;
      
      private var §_-K9§:Tween;
      
      private var locked:Boolean = false;
      
      private function updateText() : void
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         var _loc3_:TextField = null;
         var _loc4_:TextField = null;
         var _loc5_:TextField = null;
         var _loc6_:TextField = null;
         var _loc7_:TextField = null;
         var _loc8_:TextField = null;
         var _loc9_:String = null;
         _loc11_;
         _loc11_;
         if(!this.locked)
         {
            _loc11_;
            _loc11_;
            _loc1_ = 0;
            _loc10_;
            _loc10_;
            _loc2_ = 0;
            while(_loc2_ < 5)
            {
               _loc11_;
               _loc11_;
               _loc10_;
               _loc10_;
               if(SafeGlobal.campaigns[this.campaign_id].medals[_loc2_] != 0)
               {
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  if(SafeGlobal.campaigns[this.campaign_id].medals[_loc2_] == 1)
                  {
                     _loc10_;
                     _loc10_;
                     _loc11_;
                     _loc1_ = _loc1_ + 20;
                  }
                  else
                  {
                     _loc11_;
                     _loc10_;
                     _loc10_;
                     if(SafeGlobal.campaigns[this.campaign_id].medals[_loc2_] == 2)
                     {
                        _loc11_;
                        _loc11_;
                        _loc1_ = _loc1_ + 15;
                     }
                     else
                     {
                        _loc11_;
                        _loc11_;
                        _loc11_;
                        _loc11_;
                        if(SafeGlobal.campaigns[this.campaign_id].medals[_loc2_] == 3)
                        {
                           _loc10_;
                           _loc11_;
                           _loc11_;
                           _loc11_;
                           _loc1_ = _loc1_ + 10;
                        }
                        else if(SafeGlobal.campaigns[this.campaign_id].medals[_loc2_] == 4)
                        {
                           _loc11_;
                           _loc11_;
                           _loc10_;
                           _loc10_;
                           _loc1_ = _loc1_ + 5;
                        }
                        
                     }
                  }
               }
               _loc2_++;
            }
            _loc3_ = this.§_-Fi§.getChildByName("complete_text") as TextField;
            _loc4_ = this.§_-Fi§.getChildByName("percent_text") as TextField;
            _loc5_ = this.§_-Fi§.getChildByName("complete_text_shadow") as TextField;
            _loc6_ = this.§_-Fi§.getChildByName("percent_text_shadow") as TextField;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc10_;
            _loc11_;
            if(!(_loc3_ == null) && !(_loc4_ == null) && !(_loc5_ == null) && !(_loc6_ == null))
            {
               _loc10_;
               _loc10_;
               _loc3_.text = String(_loc1_);
               _loc5_.text = String(_loc1_);
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc11_;
               if(_loc1_ == 100)
               {
                  _loc10_;
                  _loc10_;
                  _loc4_.x = _loc4_.x + 30;
                  _loc10_;
                  _loc6_.x = _loc6_.x + 30;
               }
               else if(_loc1_ <= 9)
               {
                  _loc11_;
                  _loc4_.x = _loc4_.x - 26;
                  _loc6_.x = _loc6_.x - 26;
               }
               
            }
         }
         else
         {
            _loc10_;
            _loc10_;
            if(this.campaign_id == 3 || this.campaign_id == 4)
            {
               _loc7_ = this.§_-Fi§.getChildByName("price_text") as TextField;
               _loc8_ = this.§_-Fi§.getChildByName("price_text_shadow") as TextField;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc11_;
               if(!(_loc7_ == null) && !(_loc8_ == null))
               {
                  _loc10_;
                  _loc10_;
                  _loc9_ = this.formatNumber(ItemsData.§_-wO§("C",this.campaign_id + 1).toString());
                  _loc11_;
                  _loc11_;
                  _loc7_.text = _loc9_;
                  _loc11_;
                  _loc11_;
                  _loc8_.text = _loc9_;
               }
            }
         }
      }
      
      private function §_-0x§(param1:Boolean) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1 == false)
         {
            _loc2_;
            _loc2_;
            if(this.campaign_id == 0)
            {
               this.§_-Fi§ = new campaign_graphic_0() as Sprite;
            }
            else
            {
               _loc2_;
               _loc2_;
               if(this.campaign_id == 1)
               {
                  _loc3_;
                  this.§_-Fi§ = new campaign_graphic_1() as Sprite;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc2_;
                  if(this.campaign_id == 2)
                  {
                     this.§_-Fi§ = new campaign_graphic_2() as Sprite;
                  }
                  else
                  {
                     _loc3_;
                     _loc3_;
                     if(this.campaign_id == 3)
                     {
                        _loc2_;
                        _loc2_;
                        this.§_-Fi§ = new campaign_graphic_3() as Sprite;
                        _loc2_;
                     }
                     else if(this.campaign_id == 4)
                     {
                        this.§_-Fi§ = new campaign_graphic_4() as Sprite;
                     }
                     
                  }
               }
            }
         }
         else
         {
            _loc3_;
            if(this.campaign_id == 0)
            {
               _loc2_;
               _loc2_;
               this.§_-Fi§ = new campaign_locked_graphic_0() as Sprite;
               _loc2_;
            }
            else
            {
               _loc3_;
               if(this.campaign_id == 1)
               {
                  this.§_-Fi§ = new campaign_locked_graphic_1() as Sprite;
               }
               else if(this.campaign_id == 2)
               {
                  this.§_-Fi§ = new campaign_locked_graphic_2() as Sprite;
                  _loc3_;
                  _loc3_;
               }
               else if(this.campaign_id == 3)
               {
                  this.§_-Fi§ = new campaign_locked_graphic_3() as Sprite;
               }
               else if(this.campaign_id == 4)
               {
                  this.§_-Fi§ = new campaign_locked_graphic_4() as Sprite;
               }
               
               
               
            }
         }
      }
      
      public function §_-c8§(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.locked != param1)
         {
            this.locked = param1;
            _loc3_;
            _loc3_;
            removeChild(this.§_-Fi§);
            _loc2_;
            _loc2_;
            this.§_-Fi§ = null;
            _loc3_;
            this.§_-0x§(param1);
            this.updateText();
            addChild(this.§_-Fi§);
            this.§_-Kv§();
         }
      }
      
      public function §_-sG§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(!this.locked)
         {
            buttonMode = true;
            mouseEnabled = true;
            addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
            _loc2_;
            addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         }
         else
         {
            _loc1_;
            _loc1_;
            _loc2_;
            _loc1_;
            if(this.campaign_id == 3 || this.campaign_id == 4)
            {
               buttonMode = true;
               _loc2_;
               mouseEnabled = true;
               addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
               _loc1_;
               addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
            }
         }
      }
      
      public function §_-Kv§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc2_;
         if(!this.locked)
         {
            _loc2_;
            addEventListener(MouseEvent.CLICK,this.§_-jm§,false,0,true);
            _loc1_;
         }
         else
         {
            _loc1_;
            _loc2_;
            _loc2_;
            _loc1_;
            if(this.campaign_id == 3 || this.campaign_id == 4)
            {
               _loc2_;
               addEventListener(MouseEvent.CLICK,this.§_-jm§,false,0,true);
            }
         }
      }
      
      public function §_-jm§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         if(!this.locked)
         {
            _loc3_;
            _loc3_;
            Global.lobby_display.selectCampaign(this.campaign_id);
            _loc3_;
            _loc3_;
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(this.campaign_id == 3 || this.campaign_id == 4)
            {
               _loc3_;
               this.§_-0F§();
            }
         }
      }
      
      private function §_-0F§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = String("C" + (this.campaign_id + 1) + "," + ItemsData.§_-wO§("C",this.campaign_id + 1));
         _loc2_;
         _loc2_;
         Global.lobby_display.displayBuyItem(_loc1_,false);
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         var _loc2_:Number = 1.1;
         var _loc3_:* = 0.9;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc5_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc4_;
               this.§_-qP§.stop();
               _loc5_;
               _loc5_;
               _loc4_;
               this.§_-GY§.stop();
            }
            this.§_-qP§ = null;
            this.§_-GY§ = null;
            _loc4_;
            _loc4_;
         }
         this.§_-qP§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         _loc5_;
         _loc5_;
         this.§_-GY§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         this.§_-qP§.start();
         this.§_-GY§.start();
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Number = 1;
         _loc4_;
         _loc4_;
         var _loc3_:Number = 0.5;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc5_;
               _loc5_;
               this.§_-qP§.stop();
               _loc4_;
               _loc4_;
               this.§_-GY§.stop();
               _loc4_;
            }
            this.§_-qP§ = null;
            _loc5_;
            _loc5_;
            this.§_-GY§ = null;
         }
         this.§_-qP§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         this.§_-GY§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         this.§_-qP§.start();
         _loc4_;
         _loc4_;
         this.§_-GY§.start();
      }
      
      private function formatNumber(param1:String) : String
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:String = null;
         _loc6_;
         var _loc2_:String = param1;
         var _loc3_:* = "";
         while(true)
         {
            _loc6_;
            _loc6_;
            if(_loc2_.length <= 3)
            {
               break;
            }
            _loc6_;
            _loc4_ = _loc2_.substr(-3);
            _loc6_;
            _loc6_;
            _loc2_ = _loc2_.substr(0,_loc2_.length - 3);
            _loc6_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc3_ = "," + _loc4_ + _loc3_;
            _loc6_;
            _loc6_;
         }
         _loc5_;
         _loc5_;
         _loc3_ = _loc2_ + _loc3_;
         return _loc3_;
      }
   }
}
