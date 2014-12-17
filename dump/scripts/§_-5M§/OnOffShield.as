package §_-5M§
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
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         mouseEnabled = true;
         _loc2_;
         mouseChildren = false;
         _loc2_;
         buttonMode = true;
         _loc2_;
         addEventListener(MouseEvent.MOUSE_UP,this.§_-Q2§);
      }
      
      public var §_-mE§:MovieClip;
      
      public var §_-a7§:Boolean = false;
      
      public function §_-Q2§(param1:MouseEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc3_;
         this.§_-a7§ = !this.§_-a7§;
         _loc3_;
         if(this.§_-a7§)
         {
            _loc2_;
            this.§_-Tc§();
            _loc2_;
            _loc2_;
         }
         else
         {
            this.turnOff();
         }
      }
      
      public function §_-Tc§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-mE§.visible = true;
         _loc1_;
         this.§_-a7§ = true;
         _loc1_;
         _loc1_;
         Global.EDITOR.selected.turnOnShield();
      }
      
      public function turnOff() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-mE§.visible = false;
         _loc2_;
         _loc2_;
         this.§_-a7§ = false;
         _loc1_;
         Global.EDITOR.selected.turnOffShield();
      }
      
      public function init(param1:Boolean) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(param1)
         {
            _loc2_;
            this.§_-Tc§();
            _loc3_;
         }
         else
         {
            this.turnOff();
         }
      }
   }
}
