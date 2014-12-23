package com.protobuf
{
   import flash.utils.IDataOutput;
   import flash.utils.ByteArray;
   import flash.utils.getDefinitionByName;
   import flash.utils.IDataInput;
   
   public class Message extends Object
   {
      
      public function Message()
      {
         super();
         if(fieldDescriptors == null)
         {
            fieldDescriptors = new Array();
         }
      }
      
      protected var fieldDescriptors:Array;
      
      public function writeToCodedStream(param1:CodedOutputStream) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function writeToDataOutput(param1:IDataOutput) : void
      {
         var _loc2_:CodedOutputStream = CodedOutputStream.newInstance(param1);
         writeToCodedStream(_loc2_);
      }
      
      public function readFromCodedStream(param1:CodedInputStream) : void
      {
         var _loc3_:* = 0;
         var _loc4_:Descriptor = null;
         var _loc5_:* = undefined;
         var _loc6_:Class = null;
         var _loc7_:* = 0;
         var _loc8_:ByteArray = null;
         var _loc2_:int = param1.readTag();
         while(_loc2_ != 0)
         {
            _loc3_ = WireFormat.getTagFieldNumber(_loc2_);
            _loc4_ = getDescriptorByFieldNumber(_loc3_);
            if(_loc4_ != null)
            {
               if(_loc4_.isMessage())
               {
                  _loc6_ = getDefinitionByName(_loc4_.messageClass) as Class;
                  _loc5_ = new _loc6_();
                  _loc7_ = param1.readRawVarint32();
                  _loc8_ = param1.readRawBytes(_loc7_);
                  _loc8_.position = 0;
                  _loc5_.readFromDataOutput(_loc8_);
               }
               else
               {
                  _loc5_ = param1.readPrimitiveField(_loc4_.type);
               }
               if((_loc4_.isRepeated()) && (this[_loc4_.fieldName] is Array))
               {
                  this[_loc4_.fieldName].push(_loc5_);
               }
               else
               {
                  this[_loc4_.fieldName] = _loc5_;
               }
            }
            else
            {
               param1.skipField(_loc2_);
            }
            _loc2_ = param1.readTag();
         }
      }
      
      public function readFromDataOutput(param1:IDataInput) : void
      {
         var _loc2_:CodedInputStream = CodedInputStream.newInstance(param1);
         readFromCodedStream(_loc2_);
      }
      
      public function getSerializedSize() : int
      {
         var _loc2_:Descriptor = null;
         var _loc1_:int = 0;
         for each(_loc2_ in fieldDescriptors)
         {
            if(this[_loc2_.fieldName] != null)
            {
               _loc1_ = _loc1_ + CodedOutputStream.computeFieldSize(_loc2_.fieldNumber,this[_loc2_.fieldName],_loc2_.type);
            }
         }
         return _loc1_;
      }
      
      protected function registerField(param1:String, param2:String, param3:int, param4:int, param5:int) : void
      {
         if(fieldDescriptors[param1] == null)
         {
            fieldDescriptors[param1] = new Descriptor(param1,param2,param3,param4,param5);
         }
      }
      
      public function getDescriptorByFieldNumber(param1:int) : Descriptor
      {
         var _loc2_:Descriptor = null;
         for each(_loc2_ in fieldDescriptors)
         {
            if(_loc2_.fieldNumber == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getDescriptor(param1:String) : Descriptor
      {
         return fieldDescriptors[param1];
      }
   }
}
