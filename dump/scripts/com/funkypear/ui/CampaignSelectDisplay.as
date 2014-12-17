package com.funkypear.ui
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import flash.text.TextField;
   import §_-Cv§.ItemsData;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   
   public class CampaignSelectDisplay extends Sprite
   {
      
      public function CampaignSelectDisplay(param1:int, param2:Boolean = false)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         super();
         this.campaign_id = param1;
         this.§_-4d§ = new Sprite();
         _loc4_;
         _loc4_;
         this.§_-4d§.graphics.lineStyle(1,0,0);
         this.§_-4d§.graphics.beginFill(0,0.01);
         _loc4_;
         this.§_-4d§.graphics.drawCircle(0,0,this.§_-mO§);
         this.§_-4d§.graphics.endFill();
         this.locked = param2;
         _loc3_;
         _loc3_;
         this.§_-ft§(param2);
         _loc3_;
         _loc3_;
         addChild(this.§_-4d§);
         addChild(this.§_-DJ§);
         this.updateText();
      }
      
      private var §_-nh§:Tween;
      
      private var §_-Vs§:Tween;
      
      private var circle_border:CircleBorder;
      
      private var §_-4d§:Sprite;
      
      private var §_-ib§:CircleText;
      
      private var §_-mO§:int = 150;
      
      private var §_-DJ§:Sprite;
      
      private var campaign_id:int;
      
      private var §_-Kr§:Tween;
      
      private var §_-4p§:Tween;
      
      private var §_-VT§:Tween;
      
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
         _loc10_;
         _loc10_;
         if(!this.locked)
         {
            _loc11_;
            _loc11_;
            _loc1_ = 0;
            _loc11_;
            _loc2_ = 0;
            while(true)
            {
               _loc10_;
               _loc10_;
               if(_loc2_ >= 5)
               {
                  break;
               }
               _loc11_;
               _loc11_;
               _loc10_;
               _loc10_;
               if(SafeGlobal.campaigns[this.campaign_id].medals[_loc2_] != 0)
               {
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  _loc10_;
                  if(SafeGlobal.campaigns[this.campaign_id].medals[_loc2_] == 1)
                  {
                     _loc10_;
                     _loc11_;
                     _loc11_;
                     _loc11_;
                     _loc10_;
                     _loc10_;
                     _loc1_ = _loc1_ + 20;
                  }
                  else
                  {
                     _loc11_;
                     _loc11_;
                     _loc11_;
                     if(SafeGlobal.campaigns[this.campaign_id].medals[_loc2_] == 2)
                     {
                        _loc11_;
                        _loc11_;
                        _loc1_ = _loc1_ + 15;
                        _loc11_;
                     }
                     else
                     {
                        _loc10_;
                        _loc10_;
                        _loc11_;
                        _loc11_;
                        if(SafeGlobal.campaigns[this.campaign_id].medals[_loc2_] == 3)
                        {
                           _loc11_;
                           _loc11_;
                           _loc10_;
                           _loc10_;
                           _loc1_ = _loc1_ + 10;
                        }
                        else if(SafeGlobal.campaigns[this.campaign_id].medals[_loc2_] == 4)
                        {
                           _loc10_;
                           _loc10_;
                           _loc10_;
                           _loc1_ = _loc1_ + 5;
                        }
                        
                     }
                  }
               }
               _loc2_++;
               _loc11_;
               _loc11_;
            }
            _loc3_ = this.§_-DJ§.getChildByName("complete_text") as TextField;
            _loc4_ = this.§_-DJ§.getChildByName("percent_text") as TextField;
            _loc5_ = this.§_-DJ§.getChildByName("complete_text_shadow") as TextField;
            _loc6_ = this.§_-DJ§.getChildByName("percent_text_shadow") as TextField;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            _loc11_;
            _loc10_;
            _loc10_;
            if(!(_loc3_ == null) && !(_loc4_ == null) && !(_loc5_ == null) && !(_loc6_ == null))
            {
               _loc10_;
               _loc3_.text = String(_loc1_);
               _loc5_.text = String(_loc1_);
               _loc11_;
               _loc11_;
               _loc11_;
               _loc10_;
               if(_loc1_ == 100)
               {
                  _loc10_;
                  _loc4_.x = _loc4_.x + 30;
                  _loc10_;
                  _loc10_;
                  _loc6_.x = _loc6_.x + 30;
               }
               else if(_loc1_ <= 9)
               {
                  _loc4_.x = _loc4_.x - 26;
                  _loc6_.x = _loc6_.x - 26;
               }
               
            }
         }
         else
         {
            _loc10_;
            _loc10_;
            _loc11_;
            _loc11_;
            if(this.campaign_id == 3 || this.campaign_id == 4)
            {
               _loc7_ = this.§_-DJ§.getChildByName("price_text") as TextField;
               _loc8_ = this.§_-DJ§.getChildByName("price_text_shadow") as TextField;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc10_;
               if(!(_loc7_ == null) && !(_loc8_ == null))
               {
                  _loc11_;
                  _loc11_;
                  _loc11_;
                  _loc9_ = this.formatNumber(ItemsData.§_-Lz§("C",this.campaign_id + 1).toString());
                  _loc11_;
                  _loc7_.text = _loc9_;
                  _loc11_;
                  _loc8_.text = _loc9_;
               }
            }
         }
      }
      
      private function §_-ft§(param1:Boolean) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1 == false)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            if(this.campaign_id == 0)
            {
               this.§_-DJ§ = new campaign_graphic_0() as Sprite;
               _loc3_;
            }
            else
            {
               _loc3_;
               if(this.campaign_id == 1)
               {
                  this.§_-DJ§ = new campaign_graphic_1() as Sprite;
               }
               else
               {
                  _loc2_;
                  if(this.campaign_id == 2)
                  {
                     _loc3_;
                     _loc3_;
                     this.§_-DJ§ = new campaign_graphic_2() as Sprite;
                  }
                  else
                  {
                     _loc3_;
                     _loc3_;
                     if(this.campaign_id == 3)
                     {
                        this.§_-DJ§ = new campaign_graphic_3() as Sprite;
                     }
                     else
                     {
                        _loc2_;
                        _loc2_;
                        _loc2_;
                        if(this.campaign_id == 4)
                        {
                           this.§_-DJ§ = new campaign_graphic_4() as Sprite;
                        }
                     }
                  }
               }
            }
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc2_;
            if(this.campaign_id == 0)
            {
               this.§_-DJ§ = new campaign_locked_graphic_0() as Sprite;
            }
            else
            {
               _loc2_;
               _loc2_;
               _loc3_;
               if(this.campaign_id == 1)
               {
                  this.§_-DJ§ = new campaign_locked_graphic_1() as Sprite;
               }
               else
               {
                  _loc2_;
                  _loc2_;
                  if(this.campaign_id == 2)
                  {
                     this.§_-DJ§ = new campaign_locked_graphic_2() as Sprite;
                     _loc3_;
                     _loc3_;
                  }
                  else
                  {
                     _loc2_;
                     _loc2_;
                     _loc2_;
                     if(this.campaign_id == 3)
                     {
                        _loc3_;
                        this.§_-DJ§ = new campaign_locked_graphic_3() as Sprite;
                     }
                     else if(this.campaign_id == 4)
                     {
                        this.§_-DJ§ = new campaign_locked_graphic_4() as Sprite;
                     }
                     
                  }
               }
            }
         }
      }
      
      public function §_-xP§(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(this.locked != param1)
         {
            this.locked = param1;
            _loc2_;
            _loc2_;
            removeChild(this.§_-DJ§);
            _loc3_;
            _loc3_;
            this.§_-DJ§ = null;
            _loc2_;
            _loc2_;
            this.§_-ft§(param1);
            this.updateText();
            _loc3_;
            addChild(this.§_-DJ§);
            _loc3_;
            _loc3_;
            this.§_-QE§();
         }
      }
      
      public function §_-Ua§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(!this.locked)
         {
            buttonMode = true;
            _loc1_;
            _loc1_;
            mouseEnabled = true;
            _loc1_;
            _loc1_;
            addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
            _loc2_;
            _loc2_;
            addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
            _loc1_;
            _loc1_;
         }
         else
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            if(this.campaign_id == 3 || this.campaign_id == 4)
            {
               _loc1_;
               buttonMode = true;
               mouseEnabled = true;
               addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
               addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
            }
         }
      }
      
      public function §_-QE§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
         _loc2_;
         if(!this.locked)
         {
            _loc2_;
            _loc2_;
            addEventListener(MouseEvent.CLICK,this.§_-h6§,false,0,true);
            _loc1_;
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc1_;
            if(this.campaign_id == 3 || this.campaign_id == 4)
            {
               _loc2_;
               addEventListener(MouseEvent.CLICK,this.§_-h6§,false,0,true);
            }
         }
      }
      
      public function §_-h6§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc3_;
         _loc3_;
         if(!this.locked)
         {
            _loc2_;
            Global.lobby_display.selectCampaign(this.campaign_id);
            _loc3_;
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            if(this.campaign_id == 3 || this.campaign_id == 4)
            {
               _loc3_;
               _loc3_;
               this.§_-EC§();
            }
         }
      }
      
      private function §_-EC§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:String = String("C" + (this.campaign_id + 1) + "," + ItemsData.§_-Lz§("C",this.campaign_id + 1));
         _loc3_;
         Global.lobby_display.displayBuyItem(_loc1_,false);
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         var _loc2_:Number = 1.1;
         var _loc3_:* = 0.9;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(!(this.§_-nh§ == null) && !(this.§_-Vs§ == null))
         {
            _loc4_;
            _loc4_;
            _loc4_;
            if((this.§_-nh§.isPlaying) || (this.§_-Vs§.isPlaying))
            {
               _loc4_;
               _loc4_;
               this.§_-nh§.stop();
               _loc5_;
               _loc4_;
               _loc4_;
               this.§_-Vs§.stop();
            }
            this.§_-nh§ = null;
            this.§_-Vs§ = null;
         }
         this.§_-nh§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         _loc4_;
         this.§_-Vs§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         this.§_-nh§.start();
         this.§_-Vs§.start();
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Number = 1;
         _loc4_;
         _loc4_;
         var _loc3_:Number = 0.5;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(!(this.§_-nh§ == null) && !(this.§_-Vs§ == null))
         {
            _loc4_;
            if((this.§_-nh§.isPlaying) || (this.§_-Vs§.isPlaying))
            {
               _loc4_;
               this.§_-nh§.stop();
               _loc5_;
               _loc5_;
               this.§_-Vs§.stop();
               _loc5_;
               _loc5_;
            }
            this.§_-nh§ = null;
            this.§_-Vs§ = null;
         }
         this.§_-nh§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         this.§_-Vs§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         this.§_-nh§.start();
         _loc4_;
         _loc4_;
         this.§_-Vs§.start();
      }
      
      private function formatNumber(param1:String) : String
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:String = null;
         _loc5_;
         var _loc2_:String = param1;
         var _loc3_:* = "";
         while(_loc2_.length > 3)
         {
            _loc5_;
            _loc5_;
            _loc4_ = _loc2_.substr(-3);
            _loc5_;
            _loc5_;
            _loc5_;
            _loc2_ = _loc2_.substr(0,_loc2_.length - 3);
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = "," + _loc4_ + _loc3_;
            _loc6_;
         }
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc3_ = _loc2_ + _loc3_;
         return _loc3_;
      }
   }
}
