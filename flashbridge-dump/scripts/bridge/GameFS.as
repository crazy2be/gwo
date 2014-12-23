package bridge
{
   import playerio.GameFS;
   
   public class GameFS extends Object implements GameFS
   {
      
      public function GameFS(param1:String)
      {
         var _loc3_:* = 0;
         lookup = {};
         super();
         var _loc2_:Array = param1.split("|");
         type = _loc2_[0] as String;
         baseurl = _loc2_[1] as String;
         if(type == "cdnmap")
         {
            _loc3_ = 2;
            while(_loc3_ < _loc2_.length)
            {
               lookup[_loc2_[_loc3_]] = _loc2_[_loc3_ + 1];
               _loc3_ = _loc3_ + 2;
            }
         }
      }
      
      private var lookup:Object;
      
      private var type:String;
      
      private var baseurl:String;
      
      public function getURL(param1:String) : String
      {
         if(param1.substring(0,1) != "/")
         {
            throw new Error("GameFS paths must be absolute and start with a slash (/). IE client.gameFS.getURL(\"/folder/file.extention\")",0);
         }
         else
         {
            return baseurl + getFile(param1);
         }
      }
      
      private function getFile(param1:String) : String
      {
         return lookup[param1] || param1;
      }
   }
}
