package bridge
{
   import playerio.Message;
   import flash.utils.ByteArray;
   
   public class Message extends Object implements Message
   {
      
      public function Message(param1:String, ... rest)
      {
         content = [];
         super();
         this._type = param1;
         var _loc3_:int = 0;
         while(_loc3_ < rest.length)
         {
            _add(rest[_loc3_]);
            _loc3_++;
         }
      }
      
      private var content:Array;
      
      private var _type:String;
      
      public function add(... rest) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < rest.length)
         {
            _add(rest[_loc2_]);
            _loc2_++;
         }
      }
      
      public function getNumber(param1:int) : Number
      {
         return content[param1] as Number;
      }
      
      public function getInt(param1:int) : int
      {
         return content[param1] as int;
      }
      
      public function getUInt(param1:int) : uint
      {
         return content[param1] as uint;
      }
      
      public function getString(param1:int) : String
      {
         return content[param1].toString();
      }
      
      public function getBoolean(param1:int) : Boolean
      {
         return content[param1] as Boolean;
      }
      
      public function getByteArray(param1:int) : ByteArray
      {
         return content[param1] as ByteArray;
      }
      
      public function getObject(param1:int) : *
      {
         return content[param1];
      }
      
      public function clone(param1:Object) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < content.length)
         {
            param1.Add(content[_loc2_]);
            _loc2_++;
         }
      }
      
      public function get length() : int
      {
         return content.length;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      public function toString() : String
      {
         var _loc3_:* = undefined;
         var _loc4_:ByteArray = null;
         var _loc1_:String = "[playerio.Message]\n";
         _loc1_ = _loc1_ + ("type:\t\t" + type + "\n");
         _loc1_ = _loc1_ + ("length:\t\t" + length + "\n");
         _loc1_ = _loc1_ + "content:\tId\tType\t\tValue\n";
         _loc1_ = _loc1_ + "\t\t\t---------------------\n";
         var _loc2_:int = 0;
         while(_loc2_ < content.length)
         {
            _loc3_ = content[_loc2_];
            if(_loc3_ === undefined)
            {
               _loc1_ = _loc1_ + ("\t\t\t" + _loc2_ + "\tundefined\t\t" + _loc3_ + "\n");
            }
            else if(_loc3_ is String)
            {
               _loc1_ = _loc1_ + ("\t\t\t" + _loc2_ + "\tString\t\t" + _loc3_ + "\n");
            }
            else if(_loc3_ is Boolean)
            {
               _loc1_ = _loc1_ + ("\t\t\t" + _loc2_ + "\tBoolean\t\t" + _loc3_ + "\n");
            }
            else if(_loc3_ is ByteArray)
            {
               _loc1_ = _loc1_ + ("\t\t\t" + _loc2_ + "\tByteArray\tLength:" + _loc3_.length + "\n");
            }
            else
            {
               _loc4_ = new ByteArray();
               _loc4_.writeInt(_loc3_);
               _loc4_.position = 0;
               if(_loc4_.readInt() === _loc3_)
               {
                  _loc1_ = _loc1_ + ("\t\t\t" + _loc2_ + "\tint\t\t\t" + _loc3_ + "\n");
               }
               else
               {
                  _loc4_ = new ByteArray();
                  _loc4_.writeUnsignedInt(_loc3_);
                  _loc4_.position = 0;
                  if(_loc4_.readUnsignedInt() === _loc3_)
                  {
                     _loc1_ = _loc1_ + ("\t\t\t" + _loc2_ + "\tuint\t\t" + _loc3_ + "\n");
                  }
                  else
                  {
                     _loc4_ = new ByteArray();
                     _loc4_.writeFloat(_loc3_);
                     _loc4_.position = 0;
                     if(_loc4_.readFloat() === _loc3_)
                     {
                        _loc1_ = _loc1_ + ("\t\t\t" + _loc2_ + "\tFloat\t\t" + _loc3_ + "\n");
                     }
                     else
                     {
                        _loc1_ = _loc1_ + ("\t\t\t" + _loc2_ + "\tDouble\t\t" + _loc3_ + "\n");
                     }
                  }
               }
            }
            
            
            
            _loc2_++;
         }
         return _loc1_;
      }
      
      private function _add(param1:*) : void
      {
         if((param1 is Number) || (param1 is Boolean) || (param1 is String) || (param1 is ByteArray))
         {
            content.push(param1);
            return;
         }
         throw new Error(typeof param1 + " is not yet supported");
      }
   }
}
