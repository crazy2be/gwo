package playerio
{
   class SimpleGameFS extends Object implements GameFS
   {
      
      function SimpleGameFS(param1:String, param2:Object)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         super();
         _loc4_;
         _loc4_;
         this.gameId = param1;
         _loc3_;
         this.wo = param2;
      }
      
      private var gameId:String;
      
      private var wo:Object;
      
      public function getURL(param1:String) : String
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(param1.substring(0,1) != "/")
         {
            throw new Error("GameFS paths must be absolute and start with a slash (/). IE PlayerIO.gameFS(\"[gameid]\").getURL(\"/folder/file.extention\")",0);
         }
         else
         {
            _loc3_;
            _loc3_;
            if((this.wo.wrapper) && (this.wo.wrapper.content) && (this.wo.wrapper.content.hasOwnProperty("getURL")))
            {
               return this.wo.wrapper.content.getURL(this.gameId,param1);
            }
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            return "http://r.playerio.com/r/" + this.gameId + param1;
         }
      }
   }
}
