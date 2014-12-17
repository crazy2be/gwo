package playerio
{
   import _-7y.trigger;
   import _-7y.setTag;
   import _-7y.currentPartner;
   
   public interface PartnerPay
   {
      
      _-7y function trigger(param1:String, param2:uint, param3:Function = null, param4:Function = null) : void;
      
      _-7y function setTag(param1:String, param2:Function = null, param3:Function = null) : void;
      
      _-7y function get currentPartner() : String;
   }
}
