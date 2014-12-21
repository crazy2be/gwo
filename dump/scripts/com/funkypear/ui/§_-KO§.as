package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §_-KO§ extends MovieClip
   {
      
      public function §_-KO§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-ga§ = ["TRYING TO FIND A PLAYER CLOSE TO YOUR LEVEL","SORRY ABOUT THE WAIT","IT SHOULDN\'T BE TOO MUCH LONGER","SEARCHING THE PLANET FOR PLAYERS","SEARCHING THE SOLAR SYSTEM FOR PLAYERS","SEARCHING THE ENTIRE GALAXY FOR PLAYERS","THAT SOUND IMPRESSIVE DOESN\'T IT?","SEARCHING MILLIONS OF MULTIVERSES FOR A MATCH","SEARCHING IS HARD :(","I BET YOU DON\'T KNOW HOW HARD THIS IS FOR ME?","IT\'S MUCH HARDER THAN WAITING","ALWAYS SEARCHING...","IF I COULD FIND YOU A PLAYER I WOULD","I\'M HONESTLY TRYING MY BEST","THERE MUST BE SOMEONE ELSE OUT THERE?","SPACE CAN BE QUITE LONELY","THE UNIVERSE IS SO HUGE","YOU WON\'T BELIEVE HOW HUGE IT IS","AND YET I\'M STILL SEARCHING FOR PLAYERS","MAYBE THE PLAYERS ARE IN A DIFFERENT DIMENSION TO YOU","...AND YOU JUST CAN\'T SEE THEM YET","OR MAYBE I FORGOT TO ACTUALLY START SEARCHING","I\'LL HAVE A LOOK NOW","I THINK WE\'RE GETTING CLOSE","DON\'T GIVE UP HOPE JUST YET","SEARCHING SEARCHING SEARCHING"];
         _loc1_;
         super();
         _loc1_;
         addFrameScript(11,this.frame12,29,this.frame30,52,this.frame53);
         _loc1_;
         _loc1_;
         play();
      }
      
      public var §_-lS§:TextField;
      
      public var §_-o9§:TextField;
      
      public var §_-sW§:int = 0;
      
      public var §_-qO§:int = 0;
      
      private var §_-yG§:int = 0;
      
      private var §_-ga§:Array;
      
      private var §_-Zx§:Boolean = false;
      
      public function §_-sV§(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         this.§_-sW§ = param1;
         _loc3_;
         _loc3_;
         this.§_-qO§ = param2;
         _loc4_;
         _loc4_;
         this.§_-X§();
         _loc4_;
         _loc4_;
         this.§_-e5§();
      }
      
      public function §_-X§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         if(this.§_-sW§ == 0 && this.§_-qO§ == 0)
         {
            _loc2_;
            _loc2_;
            this.§_-lS§.text = "SEARCHING FOR PLAYERS";
            _loc1_;
         }
         else
         {
            this.§_-lS§.text = String("SEARCHING FOR LEVELS " + this.§_-sW§ + "-" + this.§_-qO§);
         }
      }
      
      public function §_-e5§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         if(this.§_-sW§ == 0 && this.§_-qO§ == 0)
         {
            _loc4_;
            this.§_-o9§.text = "THIS SHOULDN\'T TAKE TOO LONG";
            _loc4_;
            _loc4_;
         }
         else
         {
            this.§_-o9§.text = this.§_-ga§[this.§_-yG§];
            _loc4_;
            _loc3_;
            _loc3_;
            this.§_-yG§++;
            if(this.§_-yG§ >= this.§_-ga§.length)
            {
               this.§_-yG§ = 0;
            }
         }
      }
      
      public function tweenOff() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(!this.§_-Zx§)
         {
            _loc1_;
            _loc1_;
            gotoAndPlay("continue");
            _loc2_;
            this.§_-Zx§ = true;
         }
      }
      
      public function §_-IS§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         Global.lobby_display.§_-IS§();
      }
      
      function frame12() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-X§();
      }
      
      function frame30() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-e5§();
         _loc1_;
         stop();
      }
      
      function frame53() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-IS§();
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
