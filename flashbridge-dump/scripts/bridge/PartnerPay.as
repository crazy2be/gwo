package bridge
{
   import bridge.generated.PartnerPay;
   import playerio.PartnerPay;
   import bridge.utils.HTTPChannel;
   
   public class PartnerPay extends bridge.generated.PartnerPay implements PartnerPay
   {
      
      public function PartnerPay(param1:HTTPChannel, param2:Client, param3:String)
      {
         this.partnerId = param3;
         super(param1,param2);
      }
      
      private var partnerId:String;
      
      public function setTag(param1:String, param2:Function = null, param3:Function = null) : void
      {
         var that:PartnerPay = null;
         var partnerId:String = param1;
         var callback:Function = param2;
         var errorHandler:Function = param3;
         that = this;
         _partnerPaySetTag(partnerId,function():void
         {
            that.partnerId = partnerId;
            if(callback != null)
            {
               callback();
            }
         },errorHandler);
      }
      
      public function trigger(param1:String, param2:uint, param3:Function = null, param4:Function = null) : void
      {
         _partnerPayTrigger(param1,param2,param3,param4);
      }
      
      public function get currentPartner() : String
      {
         return partnerId;
      }
   }
}
