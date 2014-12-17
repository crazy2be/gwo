package §_-D3§
{
   public class JSONParseError extends Error
   {
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         super(param1);
         _loc4_;
         name = "JSONParseError";
         _loc4_;
         this._location = param2;
         _loc5_;
         _loc5_;
         this._text = param3;
      }
      
      private var _location:int;
      
      private var _text:String;
      
      public function get location() : int
      {
         return this._location;
      }
      
      public function get text() : String
      {
         return this._text;
      }
   }
}
