package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   
   public class §_-tf§ extends MovieClip
   {
      
      public function §_-tf§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-VM§ = ["TRYING TO FIND A PLAYER CLOSE TO YOUR LEVEL","SORRY ABOUT THE WAIT","IT SHOULDN\'T BE TOO MUCH LONGER","SEARCHING THE PLANET FOR PLAYERS","SEARCHING THE SOLAR SYSTEM FOR PLAYERS","SEARCHING THE ENTIRE GALAXY FOR PLAYERS","THAT SOUND IMPRESSIVE DOESN\'T IT?","SEARCHING MILLIONS OF MULTIVERSES FOR A MATCH","SEARCHING IS HARD :(","I BET YOU DON\'T KNOW HOW HARD THIS IS FOR ME?","IT\'S MUCH HARDER THAN WAITING","ALWAYS SEARCHING...","IF I COULD FIND YOU A PLAYER I WOULD","I\'M HONESTLY TRYING MY BEST","THERE MUST BE SOMEONE ELSE OUT THERE?","SPACE CAN BE QUITE LONELY","THE UNIVERSE IS SO HUGE","YOU WON\'T BELIEVE HOW HUGE IT IS","AND YET I\'M STILL SEARCHING FOR PLAYERS","MAYBE THE PLAYERS ARE IN A DIFFERENT DIMENSION TO YOU","...AND YOU JUST CAN\'T SEE THEM YET","OR MAYBE I FORGOT TO ACTUALLY START SEARCHING","I\'LL HAVE A LOOK NOW","I THINK WE\'RE GETTING CLOSE","DON\'T GIVE UP HOPE JUST YET","SEARCHING SEARCHING SEARCHING"];
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         addFrameScript(11,this.frame12,29,this.frame30,52,this.frame53);
         _loc1_;
         _loc1_;
         play();
      }
      
      public var §_-mk§:TextField;
      
      public var §_-MN§:TextField;
      
      public var §_-Vz§:int = 0;
      
      public var §_-N0§:int = 0;
      
      private var §_-rH§:int = 0;
      
      private var §_-VM§:Array;
      
      private var §_-7z§:Boolean = false;
      
      public function §_-8n§(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         this.§_-Vz§ = param1;
         _loc3_;
         this.§_-N0§ = param2;
         _loc4_;
         this.§_-ya§();
         _loc4_;
         this.§_-f-§();
      }
      
      public function §_-ya§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         if(this.§_-Vz§ == 0 && this.§_-N0§ == 0)
         {
            _loc2_;
            _loc2_;
            this.§_-mk§.text = "SEARCHING FOR PLAYERS";
            _loc2_;
            _loc2_;
         }
         else
         {
            this.§_-mk§.text = String("SEARCHING FOR LEVELS " + this.§_-Vz§ + "-" + this.§_-N0§);
         }
      }
      
      public function §_-f-§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(this.§_-Vz§ == 0 && this.§_-N0§ == 0)
         {
            this.§_-MN§.text = "THIS SHOULDN\'T TAKE TOO LONG";
            _loc4_;
         }
         else
         {
            this.§_-MN§.text = this.§_-VM§[this.§_-rH§];
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-rH§++;
            _loc3_;
            _loc3_;
            if(this.§_-rH§ >= this.§_-VM§.length)
            {
               _loc3_;
               _loc3_;
               this.§_-rH§ = 0;
            }
         }
      }
      
      public function tweenOff() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(!this.§_-7z§)
         {
            _loc1_;
            gotoAndPlay("continue");
            _loc1_;
            this.§_-7z§ = true;
         }
      }
      
      public function §_-xF§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         Global.lobby_display.§_-xF§();
      }
      
      function frame12() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-ya§();
      }
      
      function frame30() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-f-§();
         _loc2_;
         stop();
      }
      
      function frame53() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-xF§();
         _loc1_;
         stop();
      }
   }
}
