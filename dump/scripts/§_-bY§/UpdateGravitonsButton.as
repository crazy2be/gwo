package §_-bY§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.LP_BuyGravitons;
   import com.funkypear.ui.§_-Kj§;
   import com.funkypear.ui.§_-MU§;
   
   public class UpdateGravitonsButton extends SimpleButton
   {
      
      public function UpdateGravitonsButton()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_LAUNCH)
         {
            _loc3_;
            (parent as LP_BuyGravitons).clickUpdate();
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc3_;
            if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
            {
               _loc2_;
               _loc2_;
               (parent as §_-Kj§).clickUpdate();
               _loc3_;
            }
            else if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-Ir§)
            {
               _loc2_;
               _loc2_;
               (parent as §_-MU§).clickUpdate();
               _loc2_;
               _loc2_;
            }
            else
            {
               (parent as LP_BuyGravitons).clickUpdate();
            }
            
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
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
