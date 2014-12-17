package §_-kZ§
{
   import flash.events.MouseEvent;
   
   public class ButtonEditorDeleteObject extends SimpleButton
   {
      
      public function ButtonEditorDeleteObject()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         Global.EDITOR.removeObject(Global.EDITOR.selected);
         _loc3_;
         param1.stopPropagation();
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         stop();
      }
   }
}
