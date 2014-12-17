package §_-zO§
{
   import flash.display.MovieClip;
   import flash.events.TextEvent;
   import flash.utils.getTimer;
   
   public class ChatSystem extends MovieClip
   {
      
      public function ChatSystem()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-8A§ = new Array();
         this.§_-zV§ = new §_-X§();
         super();
         _loc2_;
         _loc2_;
         x = 10;
         _loc1_;
         y = 550;
         addChild(this.§_-zV§);
         _loc2_;
         _loc2_;
         mouseEnabled = false;
         _loc2_;
         mouseChildren = false;
      }
      
      public var §_-8A§:Array;
      
      public var §_-zV§:§_-X§;
      
      public var §_-x5§:int = 0;
      
      public var §_-Wn§:Boolean = false;
      
      public var §_-bC§:Boolean = false;
      
      public function sendMessage() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(!(this.§_-zV§.input.text == "") && !(this.§_-zV§.input.text == " "))
         {
            _loc1_;
            SafeGlobal.game_client.sendGameChat(this.§_-zV§.input.text);
            _loc1_;
            _loc1_;
         }
         this.§_-Ld§();
      }
      
      public function §_-Vd§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         stage.focus = this.§_-zV§.input;
         _loc1_;
         this.§_-zV§.input.setSelection(this.§_-zV§.input.text.length,this.§_-zV§.input.text.length);
         _loc1_;
         this.§_-zV§.visible = true;
         _loc1_;
         _loc1_;
         this.§_-zV§.input.text = "";
         if(this.§_-Wn§)
         {
            this.§_-zV§.input.addEventListener(TextEvent.TEXT_INPUT,this.§_-lB§);
         }
      }
      
      public function §_-lB§(param1:TextEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         param1.preventDefault();
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-zV§.input.text = "";
         _loc2_;
         _loc2_;
         this.§_-zV§.input.removeEventListener(TextEvent.TEXT_INPUT,this.§_-lB§);
      }
      
      public function §_-Ld§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-zV§.visible = false;
      }
      
      public function showMessage(param1:String, param2:String, param3:int) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:uint = SafeGlobal.colour_hex[param3];
         _loc5_;
         _loc5_;
         this.§_-8A§.push(new §_-0-G§(param1,_loc4_,param2));
         _loc6_;
         addChild(this.§_-8A§[this.§_-8A§.length - 1]);
         _loc5_;
         _loc5_;
         this.§_-IT§();
      }
      
      public function §_-jB§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-8A§.push(new §_-0-G§("Press T to Chat or L for Chat Log",16777215,"",false));
         _loc2_;
         _loc2_;
         addChild(this.§_-8A§[this.§_-8A§.length - 1]);
         _loc2_;
         _loc2_;
         this.§_-IT§();
      }
      
      public function §_-IT§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         while(true)
         {
            _loc3_;
            if(this.§_-8A§.length <= 20)
            {
               break;
            }
            removeChild(this.§_-8A§[0]);
            _loc3_;
            _loc3_;
            _loc2_;
            this.§_-8A§.splice(0,1);
            _loc3_;
            _loc3_;
         }
         var _loc1_:int = this.§_-8A§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc3_;
            _loc2_;
            if((this.§_-bC§) || !this.§_-8A§[_loc1_].expired)
            {
               _loc3_;
               if(_loc1_ == this.§_-8A§.length - 1)
               {
                  _loc2_;
                  _loc2_;
                  _loc3_;
                  _loc3_;
                  this.§_-8A§[_loc1_].y = 0 - this.§_-8A§[_loc1_].mainText.textHeight;
               }
               else
               {
                  _loc2_;
                  _loc2_;
                  _loc3_;
                  _loc3_;
                  this.§_-8A§[_loc1_].y = this.§_-8A§[_loc1_ + 1].y - this.§_-8A§[_loc1_].mainText.textHeight;
                  _loc3_;
               }
               _loc3_;
               _loc3_;
               this.§_-8A§[_loc1_].visible = true;
               _loc3_;
            }
            else
            {
               this.§_-8A§[_loc1_].visible = false;
            }
            _loc2_;
            _loc3_;
            _loc1_--;
         }
      }
      
      public function §_-XP§() : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc6_;
         this.§_-x5§++;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_;
         if(this.§_-x5§ % 15 == 0)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc1_ = getTimer();
            _loc6_;
            _loc6_;
            _loc2_ = this.§_-8A§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc6_;
               _loc6_;
               _loc5_;
               _loc5_;
               _loc6_;
               _loc6_;
               if(!this.§_-8A§[_loc2_].expired && _loc1_ - this.§_-8A§[_loc2_].startTime > 15000)
               {
                  _loc5_;
                  _loc5_;
                  this.§_-8A§[_loc2_].expired = true;
                  _loc6_;
                  _loc6_;
                  this.§_-IT§();
                  _loc6_;
                  _loc6_;
               }
               _loc5_;
               _loc5_;
               _loc6_;
               _loc2_--;
               _loc6_;
            }
         }
      }
      
      public function §_-CL§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-bC§ = true;
         _loc1_;
         this.§_-IT§();
      }
      
      public function §_-kN§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-bC§ = false;
         _loc1_;
         _loc1_;
         this.§_-IT§();
      }
   }
}
