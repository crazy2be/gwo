package com.funkypear.ui
{
   import flash.text.TextField;
   import flash.display.Sprite;
   import flash.utils.getDefinitionByName;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import flash.text.TextFormat;
   
   public class LP_CodeUnlock extends §_-uw§
   {
      
      public function LP_CodeUnlock(param1:Sprite)
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         _loc8_;
         _loc8_;
         super(param1);
         _loc9_;
         _loc9_;
         x = 1500;
         y = 138;
         _loc8_;
         _loc8_;
         this.§_-hE§ = new Sprite();
         this.§_-hE§.x = 42;
         this.§_-hE§.y = 170;
         _loc9_;
         addChild(this.§_-hE§);
         var _loc2_:TextFormat = new TextFormat();
         _loc9_;
         _loc9_;
         _loc2_.letterSpacing = -1;
         _loc8_;
         _loc8_;
         _loc2_.leading = -6;
         _loc8_;
         this.§_-Bh§.defaultTextFormat = _loc2_;
         var _loc3_:TextFormat = new TextFormat();
         _loc9_;
         _loc3_.letterSpacing = -2;
         _loc8_;
         _loc8_;
         this.§_-cU§.defaultTextFormat = _loc3_;
         var _loc4_:TextFormat = new TextFormat();
         _loc4_.letterSpacing = -1;
         _loc8_;
         this.§_-Do§.defaultTextFormat = _loc4_;
         var _loc5_:TextFormat = new TextFormat();
         _loc5_.letterSpacing = -1;
         _loc9_;
         _loc5_.leading = -4;
         _loc8_;
         this.§_-vU§.defaultTextFormat = _loc5_;
         var _loc6_:TextFormat = new TextFormat();
         _loc6_.letterSpacing = -1;
         _loc9_;
         _loc6_.leading = -4;
         _loc9_;
         this.§_-RA§.defaultTextFormat = _loc6_;
         var _loc7_:TextFormat = new TextFormat();
         _loc7_.letterSpacing = -3;
         _loc9_;
         _loc9_;
         this.title_text.defaultTextFormat = _loc7_;
      }
      
      public var §_-Bh§:TextField;
      
      public var §_-vU§:TextField;
      
      public var title_text:TextField;
      
      public var §_-RA§:TextField;
      
      public var §_-Do§:TextField;
      
      public var §_-cU§:TextField;
      
      private var §_-hE§:Sprite;
      
      public function §_-La§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         if(Global.codeUnlockID == "ERROR")
         {
            this.§_-gc§();
            _loc1_;
            _loc1_;
         }
         else
         {
            _loc1_;
            _loc2_;
            _loc2_;
            if(Global.codeUnlockID == "INVALID")
            {
               _loc1_;
               this.§_-di§();
            }
            else if(Global.codeUnlockID == "USED")
            {
               this.§_-lG§();
               _loc1_;
            }
            else
            {
               this.§_-U6§(Global.codeUnlockID);
            }
            
         }
         Global.codeUnlockID = "";
      }
      
      private function §_-U6§(param1:String) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:Class = null;
         var _loc5_:Sprite = null;
         _loc6_;
         _loc6_;
         var _loc2_:String = param1.substr(0,1);
         var _loc3_:int = int(param1.substr(1));
         _loc6_;
         _loc6_;
         if(this.§_-hE§.numChildren > 0)
         {
            while(this.§_-hE§.numChildren > 0)
            {
               this.§_-hE§.removeChildAt(0);
               _loc7_;
               _loc7_;
            }
            _loc6_;
         }
         this.title_text.text = "ITEM UNLOCKED";
         if(_loc2_ == "B")
         {
            this.§_-Bh§.text = String("THANKS FOR HELPING WITH THE BETA!\nHERE IS YOUR REWARD");
            _loc7_;
            _loc6_;
            _loc7_;
            if(_loc3_ == 1)
            {
               this.§_-cU§.text = "BETA REWARD";
               _loc6_;
               this.§_-Do§.text = "BETA REWARD PACK";
               _loc6_;
               this.§_-vU§.text = "YOU HAVE UNLOCKED AN EXCLUSIVE BETA HELMET AND ALSO CAMPAIGN 4 FOR HELPING WITH THE BETA TESTING";
            }
            else if(_loc3_ == 2)
            {
               this.§_-cU§.text = "BETA REWARD";
               this.§_-Do§.text = "BETA HELMET";
               this.§_-vU§.text = "YOU HAVE UNLOCKED AN EXCLUSIVE BETA HELMET FOR HELPING WITH THE BETA TESTING";
               _loc7_;
               _loc7_;
            }
            
            this.§_-RA§.text = "CHANGE YOUR HELMET ON THE TEAM SETUP PANEL";
            _loc6_;
            _loc6_;
            _loc4_ = getDefinitionByName("HeadClip" + Global.HELMET_BETA) as Class;
            _loc5_ = new _loc4_() as Sprite;
            _loc5_.scaleX = 1.5;
            _loc7_;
            _loc7_;
            _loc5_.scaleY = 1.5;
            _loc7_;
            _loc7_;
            _loc5_.x = -3;
            _loc6_;
            _loc6_;
            _loc5_.y = 4;
            _loc7_;
            this.§_-hE§.addChild(_loc5_);
         }
         else
         {
            this.§_-hp§();
         }
      }
      
      private function §_-gc§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.title_text.text = "ITEM CODE ERROR";
         _loc1_;
         this.§_-Bh§.text = String("THERE WAS AN ERROR WITH\nTHE CODE THAT YOU ENTERED");
         _loc2_;
         this.§_-cU§.text = "ERROR DETAILS";
         this.§_-Do§.text = "";
         this.§_-vU§.text = "YOU HAVE ENTERED TOO MANY INVALID CODES TODAY";
         this.§_-RA§.text = "";
      }
      
      private function §_-di§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.title_text.text = "ITEM CODE ERROR";
         _loc2_;
         this.§_-Bh§.text = String("THERE WAS AN ERROR WITH\nTHE CODE THAT YOU ENTERED");
         this.§_-cU§.text = "ERROR DETAILS";
         this.§_-Do§.text = "";
         this.§_-vU§.text = "THE CODE YOU ENTERED WAS NOT A VALID ITEM CODE";
         _loc1_;
         _loc1_;
         this.§_-RA§.text = "";
      }
      
      private function §_-lG§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.title_text.text = "ITEM CODE ERROR";
         _loc1_;
         _loc1_;
         this.§_-Bh§.text = String("THERE WAS AN ERROR WITH\nTHE CODE THAT YOU ENTERED");
         this.§_-cU§.text = "ERROR DETAILS";
         this.§_-Do§.text = "";
         _loc2_;
         this.§_-vU§.text = "THE CODE YOU ENTERED HAS ALREADY BEEN USED";
         this.§_-RA§.text = "";
      }
      
      private function §_-hp§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.title_text.text = "ITEM CODE ERROR";
         _loc1_;
         this.§_-Bh§.text = String("THERE WAS AN ERROR WITH\nTHE CODE THAT YOU ENTERED");
         this.§_-cU§.text = "ERROR DETAILS";
         this.§_-Do§.text = "";
         this.§_-vU§.text = "THE CODE YOU ENTERED WAS NOT A VALID ITEM CODE";
         this.§_-RA§.text = "";
      }
      
      override public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!§_-0B§)
         {
            _loc2_;
            _loc2_;
            tweenInExtras();
            §_-hH§ = new Tween(this,"x",Strong.easeOut,x,130,1,true);
            §_-hH§.start();
            if(param1)
            {
               shadow_mc.alpha = 0;
               shadow_mc.visible = true;
               fade_in = new Tween(shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               fade_in.start();
               _loc3_;
            }
            §_-0B§ = true;
         }
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         tweenOut(true);
      }
   }
}
