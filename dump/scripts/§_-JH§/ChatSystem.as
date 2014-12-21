package §_-JH§
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
         this.§_-lb§ = new Array();
         this.§_-nc§ = new §_-3D§();
         super();
         _loc1_;
         _loc1_;
         x = 10;
         _loc1_;
         _loc1_;
         y = 550;
         addChild(this.§_-nc§);
         _loc1_;
         _loc1_;
         mouseEnabled = false;
         _loc2_;
         _loc2_;
         mouseChildren = false;
      }
      
      public var §_-lb§:Array;
      
      public var §_-nc§:§_-3D§;
      
      public var §_-tO§:int = 0;
      
      public var §_-Rc§:Boolean = false;
      
      public var §_-pr§:Boolean = false;
      
      public function sendMessage() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         if(!(this.§_-nc§.input.text == "") && !(this.§_-nc§.input.text == " "))
         {
            _loc2_;
            SafeGlobal.game_client.sendGameChat(this.§_-nc§.input.text);
            _loc1_;
            _loc1_;
         }
         this.§_-cJ§();
      }
      
      public function §_-4e§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         stage.focus = this.§_-nc§.input;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-nc§.input.setSelection(this.§_-nc§.input.text.length,this.§_-nc§.input.text.length);
         _loc2_;
         _loc2_;
         this.§_-nc§.visible = true;
         _loc1_;
         this.§_-nc§.input.text = "";
         _loc2_;
         _loc2_;
         if(this.§_-Rc§)
         {
            this.§_-nc§.input.addEventListener(TextEvent.TEXT_INPUT,this.§_-QO§);
         }
      }
      
      public function §_-QO§(param1:TextEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         param1.preventDefault();
         _loc3_;
         _loc2_;
         _loc2_;
         this.§_-nc§.input.text = "";
         _loc3_;
         this.§_-nc§.input.removeEventListener(TextEvent.TEXT_INPUT,this.§_-QO§);
      }
      
      public function §_-cJ§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-nc§.visible = false;
      }
      
      public function showMessage(param1:String, param2:String, param3:int) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:uint = SafeGlobal.colour_hex[param3];
         _loc6_;
         _loc6_;
         this.§_-lb§.push(new §_-Ph§(param1,_loc4_,param2));
         _loc5_;
         _loc5_;
         addChild(this.§_-lb§[this.§_-lb§.length - 1]);
         _loc5_;
         _loc5_;
         this.§_-0-d§();
      }
      
      public function §_-ZI§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-lb§.push(new §_-Ph§("Press T to Chat or L for Chat Log",16777215,"",false));
         _loc2_;
         _loc2_;
         addChild(this.§_-lb§[this.§_-lb§.length - 1]);
         _loc1_;
         _loc1_;
         this.§_-0-d§();
      }
      
      public function §_-0-d§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         while(true)
         {
            _loc3_;
            if(this.§_-lb§.length <= 20)
            {
               break;
            }
            removeChild(this.§_-lb§[0]);
            _loc2_;
            _loc2_;
            _loc2_;
            this.§_-lb§.splice(0,1);
            _loc3_;
            _loc3_;
         }
         var _loc1_:int = this.§_-lb§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_;
            _loc3_;
            if((this.§_-pr§) || !this.§_-lb§[_loc1_].expired)
            {
               _loc3_;
               _loc2_;
               _loc2_;
               if(_loc1_ == this.§_-lb§.length - 1)
               {
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  this.§_-lb§[_loc1_].y = 0 - this.§_-lb§[_loc1_].mainText.textHeight;
               }
               else
               {
                  _loc2_;
                  _loc2_;
                  this.§_-lb§[_loc1_].y = this.§_-lb§[_loc1_ + 1].y - this.§_-lb§[_loc1_].mainText.textHeight;
                  _loc3_;
                  _loc3_;
               }
               _loc2_;
               _loc2_;
               _loc2_;
               this.§_-lb§[_loc1_].visible = true;
               _loc3_;
               _loc3_;
            }
            else
            {
               this.§_-lb§[_loc1_].visible = false;
            }
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc1_--;
            _loc2_;
         }
      }
      
      public function §_-VS§() : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         this.§_-tO§++;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc6_;
         if(this.§_-tO§ % 15 == 0)
         {
            _loc5_;
            _loc6_;
            _loc6_;
            _loc1_ = getTimer();
            _loc5_;
            _loc5_;
            _loc2_ = this.§_-lb§.length - 1;
            while(_loc2_ >= 0)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc6_;
               _loc6_;
               if(!this.§_-lb§[_loc2_].expired && _loc1_ - this.§_-lb§[_loc2_].startTime > 15000)
               {
                  _loc6_;
                  this.§_-lb§[_loc2_].expired = true;
                  _loc6_;
                  _loc6_;
                  this.§_-0-d§();
                  _loc6_;
               }
               _loc6_;
               _loc6_;
               _loc6_;
               _loc2_--;
               _loc6_;
               _loc6_;
            }
         }
      }
      
      public function §_-fx§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-pr§ = true;
         _loc1_;
         this.§_-0-d§();
      }
      
      public function §_-9C§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-pr§ = false;
         _loc2_;
         this.§_-0-d§();
      }
   }
}
