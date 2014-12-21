package §_-bY§
{
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   
   public class §_-V9§ extends SimpleButton
   {
      
      public function §_-V9§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
         _loc2_;
         _loc2_;
         x = 750;
         _loc2_;
         y = 280;
         _loc1_;
         name = "next_page_button";
      }
      
      private var §_-qP§:Tween;
      
      private var §_-GY§:Tween;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         Global.page_dir_clicked = 1;
         _loc2_;
         _loc2_;
         Global.lobby_display.selectNextPage();
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
            _loc2_;
            this.doRollOver();
            _loc1_;
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
         _loc3_;
         var _loc1_:Number = 1.1;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc2_;
            _loc2_;
            _loc2_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc3_;
               _loc3_;
               this.§_-qP§.stop();
               _loc3_;
               _loc3_;
               this.§_-GY§.stop();
            }
            this.§_-qP§ = null;
            _loc3_;
            this.§_-GY§ = null;
         }
         this.§_-qP§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc1_,10,false);
         this.§_-GY§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc1_,10,false);
         this.§_-qP§.start();
         this.§_-GY§.start();
      }
      
      public function doRollOut() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Number = 1;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc3_;
               this.§_-qP§.stop();
               _loc3_;
               _loc3_;
               _loc2_;
               this.§_-GY§.stop();
            }
            this.§_-qP§ = null;
            _loc3_;
            this.§_-GY§ = null;
            _loc3_;
         }
         this.§_-qP§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc1_,10,false);
         _loc3_;
         this.§_-GY§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc1_,10,false);
         this.§_-qP§.start();
         this.§_-GY§.start();
      }
   }
}
