package §_-ZN§
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      public var count_text:TextField;
      
      private var §_-Bn§:Sprite;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         LP_TeamSetUp(parent).§_-G§();
      }
      
      public function §_-qn§(param1:int) : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:§_-z§ = null;
         var _loc3_:String = null;
         var _loc4_:Class = null;
         var _loc5_:Sprite = null;
         if(this.§_-Bn§ == null)
         {
            _loc6_;
            this.§_-Bn§ = new Sprite();
            _loc7_;
            this.§_-Bn§.x = 28;
            _loc7_;
            this.§_-Bn§.y = 28;
            _loc7_;
            addChild(this.§_-Bn§);
            _loc7_;
            _loc7_;
         }
         if(this.§_-Bn§.numChildren > 0)
         {
            while(this.§_-Bn§.numChildren > 0)
            {
               this.§_-Bn§.removeChildAt(0);
               _loc6_;
               _loc6_;
            }
            _loc6_;
         }
         if(param1 == 0)
         {
            _loc6_;
            _loc2_ = new §_-z§();
            _loc6_;
            this.§_-Bn§.addChild(_loc2_);
            _loc7_;
            _loc7_;
            this.count_text.text = "";
         }
         else
         {
            _loc3_ = String("BoosterIcon" + param1);
            _loc4_ = getDefinitionByName(_loc3_) as Class;
            _loc5_ = new _loc4_() as Sprite;
            _loc6_;
            _loc6_;
            this.§_-Bn§.addChild(_loc5_);
            _loc7_;
            this.count_text.text = String(SafeGlobal.§_-QC§[param1].getInt());
         }
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
         stop();
      }
   }
}
