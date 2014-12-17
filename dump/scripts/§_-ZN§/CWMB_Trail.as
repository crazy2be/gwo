package §_-ZN§
{
   import flash.display.Sprite;
   import flash.geom.ColorTransform;
   import flash.utils.getDefinitionByName;
   import flash.events.MouseEvent;
   import com.funkypear.ui.customweapon.CWP_Trail;
   
   public class CWMB_Trail extends §_-ZU§
   {
      
      public function CWMB_Trail()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-k9§ = [0,0];
         super();
         addFrameScript(0,this.frame1,9,this.frame10);
         _loc2_;
         _loc2_;
         this.holder = new Sprite();
         this.holder.x = 28;
         this.holder.y = 28;
         addChild(this.holder);
      }
      
      private var item_id:int = 0;
      
      private var §_-k9§:Array;
      
      private var holder:Sprite;
      
      override public function updateContent(param1:int) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:§_-z§ = null;
         var _loc3_:Class = null;
         var _loc4_:Sprite = null;
         var _loc5_:ColorTransform = null;
         _loc6_;
         _loc6_;
         this.item_id = param1;
         _loc7_;
         _loc7_;
         if(this.holder.numChildren > 0)
         {
            while(this.holder.numChildren > 0)
            {
               this.holder.removeChildAt(0);
               _loc6_;
               _loc6_;
            }
            _loc6_;
         }
         if(this.item_id == 0)
         {
            _loc2_ = new §_-z§();
            _loc6_;
            this.holder.addChild(_loc2_);
         }
         else
         {
            _loc3_ = getDefinitionByName("CustomTrailClip" + param1) as Class;
            _loc4_ = new _loc3_() as Sprite;
            _loc5_ = new ColorTransform();
            _loc5_.color = SafeGlobal.cw_trail_colours[this.§_-k9§[0]];
            _loc7_;
            _loc7_;
            if(Global.cw_trail_colour_count[param1] > 0)
            {
               _loc7_;
               _loc7_;
               _loc4_.transform.colorTransform = _loc5_;
               _loc7_;
               _loc7_;
            }
            this.holder.addChild(_loc4_);
         }
      }
      
      public function §_-ma§(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         this.§_-k9§[param2] = param1;
         _loc3_;
         _loc3_;
         this.updateContent(this.item_id);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         CWP_Trail(parent).toggleItemMenu();
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
