package playerio
{
   import _-rb.trigger;
   import _-rb.setTag;
   import _-rb.currentPartner;
   
   public interface PartnerPay
   {
      
      _-rb function trigger(param1:String, param2:uint, param3:Function = null, param4:Function = null) : void;
      
      _-rb function setTag(param1:String, param2:Function = null, param3:Function = null) : void;
      
      _-rb function get currentPartner() : String;
   }
}
