package §_-JH§
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   
   public class §_-PT§ extends Sprite
   {
      
      public function §_-PT§(param1:int)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         super();
         _loc2_;
         _loc2_;
         this.teamID = param1;
         _loc2_;
         this.makeUnselected();
      }
      
      public var §_-gm§:MovieClip;
      
      public var §_-6H§:MovieClip;
      
      public var border:MovieClip;
      
      public var colour:MovieClip;
      
      public var teamID:int;
      
      public function makeSelected() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-gm§.visible = true;
         _loc1_;
         this.§_-6H§.visible = false;
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
         this.§_-gm§.visible = false;
         _loc1_;
         _loc1_;
         this.§_-6H§.visible = true;
         _loc2_;
         _loc2_;
         this.border.visible = true;
         _loc2_;
         this.colour.visible = true;
      }
      
      public function destroyMe() : *
      {
      }
   }
}
