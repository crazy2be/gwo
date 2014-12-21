package §_-bY§
{
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   
   public class §_-fo§ extends SimpleButton
   {
      
      public function §_-fo§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         x = 130;
         _loc2_;
         _loc2_;
         y = 280;
         _loc1_;
         _loc1_;
         name = "prev_page_button";
      }
      
      private var §_-qP§:Tween;
      
      private var §_-GY§:Tween;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         Global.page_dir_clicked = 2;
         _loc3_;
         Global.lobby_display.selectPreviousPage();
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         buttonMode = true;
         _loc2_;
         _loc2_;
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
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         var _loc1_:Number = 1.1;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc3_;
            _loc3_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc3_;
               this.§_-qP§.stop();
               _loc3_;
               _loc3_;
               this.§_-GY§.stop();
            }
            this.§_-qP§ = null;
            this.§_-GY§ = null;
         }
         this.§_-qP§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc1_,10,false);
         this.§_-GY§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc1_,10,false);
         this.§_-qP§.start();
         this.§_-GY§.start();
      }
      
      public function doRollOut() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Number = 1;
         _loc3_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc3_;
            _loc3_;
            _loc3_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc3_;
               _loc3_;
               _loc3_;
               this.§_-qP§.stop();
               _loc2_;
               _loc2_;
               _loc3_;
               this.§_-GY§.stop();
               _loc3_;
               _loc3_;
            }
            this.§_-qP§ = null;
            this.§_-GY§ = null;
            _loc2_;
            _loc2_;
         }
         this.§_-qP§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc1_,10,false);
         _loc3_;
         _loc3_;
         this.§_-GY§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc1_,10,false);
         _loc3_;
         this.§_-qP§.start();
         _loc2_;
         this.§_-GY§.start();
      }
   }
}
