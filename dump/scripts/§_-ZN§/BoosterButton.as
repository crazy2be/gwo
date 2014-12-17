package §_-ZN§
{
   import flash.text.TextField;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import com.funkypear.ui.BoosterSelectPanel;
   import flash.utils.getDefinitionByName;
   
   public class BoosterButton extends SimpleButton
   {
      
      public function BoosterButton(param1:int)
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:§_-z§ = null;
         var _loc3_:String = null;
         var _loc4_:Class = null;
         var _loc5_:Sprite = null;
         super();
         addFrameScript(0,this.frame1,4,this.frame5);
         this.id = param1;
         if(this.§_-Bn§ == null)
         {
            this.§_-Bn§ = new Sprite();
            _loc7_;
            _loc7_;
            this.§_-Bn§.x = 28;
            _loc7_;
            this.§_-Bn§.y = 28;
            addChild(this.§_-Bn§);
         }
         if(this.§_-Bn§.numChildren > 0)
         {
            while(this.§_-Bn§.numChildren > 0)
            {
               this.§_-Bn§.removeChildAt(0);
               _loc6_;
            }
            _loc6_;
            _loc6_;
         }
         if(this.id == 0)
         {
            _loc7_;
            _loc7_;
            _loc2_ = new §_-z§();
            _loc6_;
            _loc6_;
            this.§_-Bn§.addChild(_loc2_);
            _loc7_;
            _loc7_;
            this.count_text.text = "";
         }
         else
         {
            _loc3_ = String("BoosterIcon" + this.id);
            _loc4_ = getDefinitionByName(_loc3_) as Class;
            _loc5_ = new _loc4_() as Sprite;
            _loc7_;
            this.§_-Bn§.addChild(_loc5_);
            _loc6_;
            _loc6_;
            this.count_text.text = String(SafeGlobal.§_-QC§[this.id].getInt());
         }
      }
      
      public var count_text:TextField;
      
      public var id:int = 0;
      
      private var §_-Bn§:Sprite;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         BoosterSelectPanel(parent.parent).§_-7J§(this.id);
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(§_-QR§)
         {
            _loc1_;
            gotoAndStop("off");
            buttonMode = false;
         }
         else
         {
            buttonMode = true;
            if(over)
            {
               _loc2_;
               _loc2_;
               gotoAndStop("over");
               BoosterSelectPanel(parent.parent).§_-OA§(this.id);
            }
            else
            {
               gotoAndStop("up");
               BoosterSelectPanel(parent.parent).§_-0n§();
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
      
      function frame5() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         stop();
      }
   }
}
