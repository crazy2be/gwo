package com.funkypear.ui
{
   import flash.text.TextField;
   import flash.display.Sprite;
   import flash.utils.getDefinitionByName;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import flash.text.TextFormat;
   
   public class LP_CodeUnlock extends §_-A3§
   {
      
      public function LP_CodeUnlock(param1:Sprite)
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         _loc8_;
         super(param1);
         _loc9_;
         x = 1500;
         y = 138;
         _loc9_;
         this.§_-Jm§ = new Sprite();
         this.§_-Jm§.x = 42;
         this.§_-Jm§.y = 170;
         _loc9_;
         _loc9_;
         addChild(this.§_-Jm§);
         var _loc2_:TextFormat = new TextFormat();
         _loc9_;
         _loc9_;
         _loc2_.letterSpacing = -1;
         _loc8_;
         _loc2_.leading = -6;
         _loc9_;
         _loc9_;
         this.§_-h7§.defaultTextFormat = _loc2_;
         var _loc3_:TextFormat = new TextFormat();
         _loc9_;
         _loc9_;
         _loc3_.letterSpacing = -2;
         _loc9_;
         _loc9_;
         this.§_-Ak§.defaultTextFormat = _loc3_;
         var _loc4_:TextFormat = new TextFormat();
         _loc4_.letterSpacing = -1;
         _loc9_;
         _loc9_;
         this.§_-k8§.defaultTextFormat = _loc4_;
         var _loc5_:TextFormat = new TextFormat();
         _loc5_.letterSpacing = -1;
         _loc9_;
         _loc5_.leading = -4;
         _loc9_;
         this.§_-m5§.defaultTextFormat = _loc5_;
         var _loc6_:TextFormat = new TextFormat();
         _loc6_.letterSpacing = -1;
         _loc8_;
         _loc8_;
         _loc6_.leading = -4;
         _loc8_;
         this.§_-qE§.defaultTextFormat = _loc6_;
         var _loc7_:TextFormat = new TextFormat();
         _loc7_.letterSpacing = -3;
         _loc9_;
         this.title_text.defaultTextFormat = _loc7_;
      }
      
      public var §_-h7§:TextField;
      
      public var §_-m5§:TextField;
      
      public var title_text:TextField;
      
      public var §_-qE§:TextField;
      
      public var §_-k8§:TextField;
      
      public var §_-Ak§:TextField;
      
      private var §_-Jm§:Sprite;
      
      public function §_-Yy§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         if(Global.codeUnlockID == "ERROR")
         {
            this.§_-zh§();
            _loc2_;
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc1_;
            if(Global.codeUnlockID == "INVALID")
            {
               _loc1_;
               _loc1_;
               this.§_-q3§();
            }
            else if(Global.codeUnlockID == "USED")
            {
               _loc2_;
               _loc2_;
               this.§_-SC§();
               _loc1_;
            }
            else
            {
               this.§_-FO§(Global.codeUnlockID);
            }
            
         }
         Global.codeUnlockID = "";
      }
      
      private function §_-FO§(param1:String) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:Class = null;
         var _loc5_:Sprite = null;
         _loc6_;
         _loc6_;
         var _loc2_:String = param1.substr(0,1);
         var _loc3_:int = int(param1.substr(1));
         _loc7_;
         if(this.§_-Jm§.numChildren > 0)
         {
            while(this.§_-Jm§.numChildren > 0)
            {
               this.§_-Jm§.removeChildAt(0);
            }
            _loc6_;
            _loc6_;
         }
         this.title_text.text = "ITEM UNLOCKED";
         _loc6_;
         if(_loc2_ == "B")
         {
            _loc6_;
            this.§_-h7§.text = String("THANKS FOR HELPING WITH THE BETA!\nHERE IS YOUR REWARD");
            _loc7_;
            _loc7_;
            _loc7_;
            if(_loc3_ == 1)
            {
               this.§_-Ak§.text = "BETA REWARD";
               this.§_-k8§.text = "BETA REWARD PACK";
               _loc6_;
               this.§_-m5§.text = "YOU HAVE UNLOCKED AN EXCLUSIVE BETA HELMET AND ALSO CAMPAIGN 4 FOR HELPING WITH THE BETA TESTING";
            }
            else if(_loc3_ == 2)
            {
               this.§_-Ak§.text = "BETA REWARD";
               this.§_-k8§.text = "BETA HELMET";
               _loc6_;
               this.§_-m5§.text = "YOU HAVE UNLOCKED AN EXCLUSIVE BETA HELMET FOR HELPING WITH THE BETA TESTING";
               _loc7_;
               _loc7_;
            }
            
            this.§_-qE§.text = "CHANGE YOUR HELMET ON THE TEAM SETUP PANEL";
            _loc7_;
            _loc7_;
            _loc4_ = getDefinitionByName("HeadClip" + Global.HELMET_BETA) as Class;
            _loc5_ = new _loc4_() as Sprite;
            _loc5_.scaleX = 1.5;
            _loc6_;
            _loc6_;
            _loc5_.scaleY = 1.5;
            _loc7_;
            _loc5_.x = -3;
            _loc7_;
            _loc5_.y = 4;
            _loc7_;
            _loc7_;
            this.§_-Jm§.addChild(_loc5_);
         }
         else
         {
            this.§_-Qa§();
         }
      }
      
      private function §_-zh§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.title_text.text = "ITEM CODE ERROR";
         _loc1_;
         this.§_-h7§.text = String("THERE WAS AN ERROR WITH\nTHE CODE THAT YOU ENTERED");
         this.§_-Ak§.text = "ERROR DETAILS";
         this.§_-k8§.text = "";
         _loc1_;
         this.§_-m5§.text = "YOU HAVE ENTERED TOO MANY INVALID CODES TODAY";
         _loc2_;
         _loc2_;
         this.§_-qE§.text = "";
      }
      
      private function §_-q3§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.title_text.text = "ITEM CODE ERROR";
         this.§_-h7§.text = String("THERE WAS AN ERROR WITH\nTHE CODE THAT YOU ENTERED");
         _loc2_;
         this.§_-Ak§.text = "ERROR DETAILS";
         _loc2_;
         _loc2_;
         this.§_-k8§.text = "";
         _loc1_;
         _loc1_;
         this.§_-m5§.text = "THE CODE YOU ENTERED WAS NOT A VALID ITEM CODE";
         _loc2_;
         _loc2_;
         this.§_-qE§.text = "";
      }
      
      private function §_-SC§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.title_text.text = "ITEM CODE ERROR";
         _loc1_;
         _loc1_;
         this.§_-h7§.text = String("THERE WAS AN ERROR WITH\nTHE CODE THAT YOU ENTERED");
         _loc2_;
         this.§_-Ak§.text = "ERROR DETAILS";
         this.§_-k8§.text = "";
         this.§_-m5§.text = "THE CODE YOU ENTERED HAS ALREADY BEEN USED";
         _loc2_;
         _loc2_;
         this.§_-qE§.text = "";
      }
      
      private function §_-Qa§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.title_text.text = "ITEM CODE ERROR";
         this.§_-h7§.text = String("THERE WAS AN ERROR WITH\nTHE CODE THAT YOU ENTERED");
         this.§_-Ak§.text = "ERROR DETAILS";
         this.§_-k8§.text = "";
         this.§_-m5§.text = "THE CODE YOU ENTERED WAS NOT A VALID ITEM CODE";
         _loc2_;
         _loc2_;
         this.§_-qE§.text = "";
      }
      
      override public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!§_-HF§)
         {
            tweenInExtras();
            _loc2_;
            §_-hW§ = new Tween(this,"x",Strong.easeOut,x,130,1,true);
            _loc2_;
            §_-hW§.start();
            _loc3_;
            if(param1)
            {
               shadow_mc.alpha = 0;
               _loc3_;
               _loc3_;
               shadow_mc.visible = true;
               _loc2_;
               _loc2_;
               fade_in = new Tween(shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               _loc3_;
               fade_in.start();
               _loc2_;
            }
            §_-HF§ = true;
         }
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         tweenOut(true);
      }
   }
}
