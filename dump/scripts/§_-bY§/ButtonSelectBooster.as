package §_-bY§
{
   import flash.text.TextField;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import com.funkypear.ui.LP_TeamSetUp;
   import flash.utils.getDefinitionByName;
   
   public class ButtonSelectBooster extends SimpleButton
   {
      
      public function ButtonSelectBooster()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      public var count_text:TextField;
      
      private var §_-oK§:Sprite;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         LP_TeamSetUp(parent).§_-Cd§();
      }
      
      public function §_-Nh§(param1:int) : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:§_-Zt§ = null;
         var _loc3_:String = null;
         var _loc4_:Class = null;
         var _loc5_:Sprite = null;
         if(this.§_-oK§ == null)
         {
            _loc6_;
            _loc6_;
            this.§_-oK§ = new Sprite();
            _loc6_;
            this.§_-oK§.x = 28;
            this.§_-oK§.y = 28;
            addChild(this.§_-oK§);
         }
         if(this.§_-oK§.numChildren > 0)
         {
            while(this.§_-oK§.numChildren > 0)
            {
               this.§_-oK§.removeChildAt(0);
               _loc6_;
               _loc6_;
            }
            _loc7_;
            _loc7_;
         }
         if(param1 == 0)
         {
            _loc7_;
            _loc2_ = new §_-Zt§();
            _loc7_;
            this.§_-oK§.addChild(_loc2_);
            _loc6_;
            this.count_text.text = "";
         }
         else
         {
            _loc3_ = String("BoosterIcon" + param1);
            _loc4_ = getDefinitionByName(_loc3_) as Class;
            _loc5_ = new _loc4_() as Sprite;
            _loc6_;
            this.§_-oK§.addChild(_loc5_);
            _loc7_;
            this.count_text.text = String(SafeGlobal.§_-f0§[param1].getInt());
         }
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
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
