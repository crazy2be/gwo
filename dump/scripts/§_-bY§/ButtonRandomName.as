package §_-bY§
{
   import flash.events.MouseEvent;
   import §_-bk§.§_-5S§;
   import com.funkypear.ui.UnitBox;
   
   public class ButtonRandomName extends SimpleButton
   {
      
      public function ButtonRandomName()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc2_:int = param1.target.parent.id;
         var _loc3_:§_-5S§ = Global.unitDetails[_loc2_ - 1];
         var _loc4_:UnitBox = param1.target.parent;
         var _loc5_:* = "";
         var _loc6_:* = 0;
         while(true)
         {
            _loc10_;
            _loc10_;
            if(_loc6_ >= Global.unitDetails.length)
            {
               break;
            }
            _loc10_;
            if(_loc6_ != 0)
            {
               _loc9_;
               _loc9_;
               _loc9_;
               _loc5_ = _loc5_ + ",";
               _loc10_;
               _loc10_;
            }
            _loc9_;
            _loc5_ = _loc5_ + Global.unitDetails[_loc6_].name;
            _loc10_;
            _loc6_++;
            _loc10_;
            _loc10_;
         }
         _loc9_;
         _loc9_;
         var _loc7_:int = this.§_-Cq§(0,Global.unit_names.length - 1);
         var _loc8_:String = Global.unit_names[_loc7_];
         _loc9_;
         _loc9_;
         _loc10_;
         _loc10_;
         if(_loc5_.indexOf(_loc8_) != -1)
         {
            while(_loc5_.indexOf(_loc8_) != -1)
            {
               _loc10_;
               _loc7_ = this.§_-Cq§(0,Global.unit_names.length - 1);
               _loc10_;
               _loc10_;
               _loc8_ = Global.unit_names[_loc7_];
               _loc10_;
            }
            _loc10_;
         }
         _loc3_.§_-0-W§(_loc8_);
         _loc10_;
         _loc10_;
         _loc4_.§_-9k§(_loc3_);
      }
      
      private function §_-Cq§(param1:int, param2:int) : int
      {
         return int(Math.random() * (param2 - param1 + 1)) + param1;
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
