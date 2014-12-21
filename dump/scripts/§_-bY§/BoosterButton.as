package §_-bY§
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
         var _loc2_:§_-Zt§ = null;
         var _loc3_:String = null;
         var _loc4_:Class = null;
         var _loc5_:Sprite = null;
         super();
         addFrameScript(0,this.frame1,4,this.frame5);
         _loc7_;
         this.id = param1;
         _loc7_;
         if(this.§_-oK§ == null)
         {
            _loc7_;
            this.§_-oK§ = new Sprite();
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
            _loc6_;
         }
         if(this.id == 0)
         {
            _loc7_;
            _loc2_ = new §_-Zt§();
            _loc7_;
            _loc7_;
            this.§_-oK§.addChild(_loc2_);
            _loc6_;
            _loc6_;
            this.count_text.text = "";
         }
         else
         {
            _loc3_ = String("BoosterIcon" + this.id);
            _loc4_ = getDefinitionByName(_loc3_) as Class;
            _loc5_ = new _loc4_() as Sprite;
            _loc7_;
            this.§_-oK§.addChild(_loc5_);
            _loc7_;
            _loc7_;
            this.count_text.text = String(SafeGlobal.§_-f0§[this.id].getInt());
         }
      }
      
      public var count_text:TextField;
      
      public var id:int = 0;
      
      private var §_-oK§:Sprite;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         BoosterSelectPanel(parent.parent).§_-0-C§(this.id);
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(§_-L4§)
         {
            gotoAndStop("off");
            buttonMode = false;
            _loc1_;
            _loc1_;
         }
         else
         {
            buttonMode = true;
            if(over)
            {
               _loc1_;
               gotoAndStop("over");
               BoosterSelectPanel(parent.parent).§_-Zb§(this.id);
            }
            else
            {
               gotoAndStop("up");
               _loc1_;
               BoosterSelectPanel(parent.parent).§_-E4§();
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         stop();
      }
      
      function frame5() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
