package com.google.analytics.debug
{
   public class SuccessAlert extends Alert
   {
      
      public function SuccessAlert(param1:DebugConfiguration, param2:String, param3:Array)
      {
         var _loc4_:Align = Align.bottomLeft;
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(param1.verbose)
         {
            var param2:String = "<u><span class=\"uiAlertTitle\">Success</span>" + spaces(18) + "</u>\n\n" + param2;
            _loc4_ = Align.center;
            _loc5_ = false;
            _loc6_ = true;
         }
         super(param2,param3,"uiSuccess",Style.successColor,_loc4_,_loc5_,_loc6_);
      }
   }
}
