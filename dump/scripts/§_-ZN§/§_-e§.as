package §_-ZN§
{
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   
   public class §_-e§ extends SimpleButton
   {
      
      public function §_-e§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         _loc2_;
         _loc2_;
         x = 130;
         _loc2_;
         _loc2_;
         y = 280;
         _loc2_;
         name = "prev_page_button";
      }
      
      private var §_-nh§:Tween;
      
      private var §_-Vs§:Tween;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         Global.page_dir_clicked = 2;
         _loc3_;
         Global.lobby_display.selectPreviousPage();
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         buttonMode = true;
         _loc1_;
         if(over)
         {
            _loc1_;
            _loc1_;
            this.doRollOver();
            _loc2_;
            _loc2_;
         }
         else
         {
            this.doRollOut();
         }
      }
      
      public function doRollOver() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         var _loc1_:Number = 1.1;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(!(this.§_-nh§ == null) && !(this.§_-Vs§ == null))
         {
            _loc3_;
            _loc3_;
            if((this.§_-nh§.isPlaying) || (this.§_-Vs§.isPlaying))
            {
               _loc3_;
               _loc3_;
               this.§_-nh§.stop();
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               this.§_-Vs§.stop();
            }
            this.§_-nh§ = null;
            this.§_-Vs§ = null;
            _loc3_;
            _loc3_;
         }
         this.§_-nh§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc1_,10,false);
         this.§_-Vs§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc1_,10,false);
         _loc2_;
         this.§_-nh§.start();
         this.§_-Vs§.start();
      }
      
      public function doRollOut() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Number = 1;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(!(this.§_-nh§ == null) && !(this.§_-Vs§ == null))
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            if((this.§_-nh§.isPlaying) || (this.§_-Vs§.isPlaying))
            {
               _loc2_;
               _loc2_;
               this.§_-nh§.stop();
               _loc3_;
               _loc3_;
               this.§_-Vs§.stop();
            }
            this.§_-nh§ = null;
            _loc3_;
            _loc3_;
            this.§_-Vs§ = null;
         }
         this.§_-nh§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc1_,10,false);
         this.§_-Vs§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc1_,10,false);
         this.§_-nh§.start();
         this.§_-Vs§.start();
      }
   }
}
