package §_-4M§
{
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class MusicToggle extends MovieClip
   {
      
      public function MusicToggle()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         addFrameScript(0,this.frame1,9,this.frame10,19,this.frame20,29,this.frame30);
         x = 767;
         _loc2_;
         y = 14;
         _loc1_;
         mouseEnabled = true;
         _loc2_;
         mouseChildren = false;
         _loc1_;
         _loc1_;
         buttonMode = true;
         addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         _loc2_;
         addEventListener(MouseEvent.CLICK,this.toggleVolumeMute,false,0,true);
         _loc2_;
         this.displayStatus();
      }
      
      private var over:Boolean = false;
      
      private function toggleVolumeMute(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         SoundManager.§_-fR§();
         _loc3_;
         _loc3_;
         this.displayStatus();
      }
      
      public function displayStatus() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(this.over)
         {
            _loc1_;
            _loc1_;
            if(SoundManager.MUSIC_ON)
            {
               _loc1_;
               _loc1_;
               gotoAndStop("over");
            }
            else
            {
               gotoAndStop("off_over");
               _loc1_;
            }
         }
         else if(SoundManager.MUSIC_ON)
         {
            _loc1_;
            _loc1_;
            gotoAndStop("up");
         }
         else
         {
            gotoAndStop("off");
         }
         
      }
      
      private function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.over = true;
         _loc2_;
         this.displayStatus();
      }
      
      private function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.over = false;
         _loc3_;
         _loc3_;
         this.displayStatus();
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         stop();
      }
      
      function frame20() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
      
      function frame30() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         stop();
      }
   }
}
