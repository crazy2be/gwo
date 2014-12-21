package §_-eR§
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class OnOffShield extends Sprite
   {
      
      public function OnOffShield()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
         _loc1_;
         mouseEnabled = true;
         _loc1_;
         mouseChildren = false;
         _loc1_;
         _loc1_;
         buttonMode = true;
         _loc2_;
         addEventListener(MouseEvent.MOUSE_UP,this.§_-rk§);
      }
      
      public var §_-jK§:MovieClip;
      
      public var §_-2F§:Boolean = false;
      
      public function §_-rk§(param1:MouseEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-2F§ = !this.§_-2F§;
         _loc2_;
         _loc2_;
         if(this.§_-2F§)
         {
            _loc3_;
            this.§_-RS§();
            _loc3_;
            _loc3_;
         }
         else
         {
            this.turnOff();
         }
      }
      
      public function §_-RS§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-jK§.visible = true;
         _loc1_;
         _loc1_;
         this.§_-2F§ = true;
         _loc2_;
         Global.EDITOR.selected.turnOnShield();
      }
      
      public function turnOff() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-jK§.visible = false;
         _loc2_;
         _loc2_;
         this.§_-2F§ = false;
         _loc2_;
         _loc2_;
         Global.EDITOR.selected.turnOffShield();
      }
      
      public function init(param1:Boolean) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(param1)
         {
            _loc2_;
            this.§_-RS§();
            _loc3_;
         }
         else
         {
            this.turnOff();
         }
      }
   }
}
