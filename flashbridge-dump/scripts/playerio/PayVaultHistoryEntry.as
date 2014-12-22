package playerio
{
   public class PayVaultHistoryEntry extends Object
   {
      
      public function PayVaultHistoryEntry()
      {
         super();
      }
      
      public function get amount() : int
      {
         return 0;
      }
      
      public function get type() : String
      {
         return "";
      }
      
      public function get timestamp() : Date
      {
         return new Date();
      }
      
      public function get itemKeys() : Array
      {
         return [];
      }
      
      public function get reason() : String
      {
         return "";
      }
      
      public function get providerTransactionId() : String
      {
         return "";
      }
      
      public function get providerPrice() : String
      {
         return "";
      }
   }
}
