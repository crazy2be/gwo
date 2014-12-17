package §_-zO§
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   
   public class §_-n6§ extends Sprite
   {
      
      public function §_-n6§(param1:int)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         super();
         _loc2_;
         this.teamID = param1;
         _loc2_;
         this.makeUnselected();
      }
      
      public var §_-iJ§:MovieClip;
      
      public var §_-yO§:MovieClip;
      
      public var border:MovieClip;
      
      public var colour:MovieClip;
      
      public var teamID:int;
      
      public function makeSelected() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-iJ§.visible = true;
         _loc2_;
         this.§_-yO§.visible = false;
         _loc1_;
         this.border.visible = false;
         _loc1_;
         this.colour.visible = false;
      }
      
      public function makeUnselected() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-iJ§.visible = false;
         _loc1_;
         _loc1_;
         this.§_-yO§.visible = true;
         _loc2_;
         _loc2_;
         this.border.visible = true;
         _loc1_;
         this.colour.visible = true;
      }
      
      public function destroyMe() : *
      {
      }
   }
}
