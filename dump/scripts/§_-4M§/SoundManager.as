package §_-4M§
{
   import flash.media.Sound;
   import flash.net.SharedObject;
   import flash.media.SoundTransform;
   import flash.system.ApplicationDomain;
   import flash.utils.getDefinitionByName;
   import flash.events.Event;
   
   public class SoundManager extends Object
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
      }
      
      public function SoundManager()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
      }
      
      public static var MUSIC_VOLUME:Number = 1;
      
      public static var FX_VOLUME:Number = 1;
      
      public static var MUSIC_ON:Boolean = true;
      
      public static var FX_ON:Boolean = true;
      
      public static const MUSIC_MENU:uint = 0;
      
      public static const MUSIC_GAME_LOOP:uint = 1;
      
      public static const MUSIC_GAME_OOB:uint = 2;
      
      public static const FX_PUNCH:uint = 0;
      
      public static const FX_GOLFSWING:uint = 1;
      
      public static const FX_PROJSHOOT:uint = 2;
      
      public static const FX_ROVER:uint = 3;
      
      private static var FADE_SPEED:Number = 0.02;
      
      private static var music_data:Array;
      
      private static var fx_data:Array;
      
      private static var music_id:uint = 500;
      
      private static var prev_music_id:uint = 500;
      
      private static var fading:Boolean = false;
      
      private static var out_of_bounds:Boolean = false;
      
      private static var done_init:Boolean = false;
      
      private static var §_-Ta§:Array;
      
      private static var sound_uid:int = 0;
      
      private static var §_-BL§:int = 28;
      
      public static function init() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc3_;
         _loc3_;
         var sound:Sound = null;
         _loc4_;
         _loc4_;
         _loc4_;
         var SoundClass:Class = null;
         _loc3_;
         _loc3_;
         var shared_obj:SharedObject = null;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         var music_on:Boolean = false;
         _loc3_;
         var fx_on:Boolean = false;
         music_data = new Array();
         _loc3_;
         _loc3_;
         music_data.push(new SoundData(new MusicMenu(),new SoundTransform(1,0),1));
         _loc4_;
         music_data.push(new SoundData(new MusicGameLoop(),new SoundTransform(1,0),1));
         music_data.push(new SoundData(new MusicGameOOB(),new SoundTransform(1,0),1));
         fx_data = new Array();
         var i:int = 0;
         while(true)
         {
            _loc3_;
            _loc3_;
            if(i >= SafeGlobal.sound_files.length)
            {
               break;
            }
            if(ApplicationDomain.currentDomain.hasDefinition(SafeGlobal.sound_files[i]))
            {
               _loc4_;
               _loc4_;
               SoundClass = getDefinitionByName(SafeGlobal.sound_files[i]) as Class;
               _loc4_;
               _loc4_;
               sound = new SoundClass() as Sound;
               _loc3_;
               _loc3_;
               fx_data.push(new SoundData(sound,new SoundTransform(1,0),1,i));
            }
            else
            {
               fx_data.push(null);
            }
            _loc3_;
            _loc3_;
            _loc3_;
            i++;
         }
         _loc3_;
         try
         {
            shared_obj = SharedObject.getLocal("GWOSoundPrefs");
            _loc4_;
            _loc4_;
            _loc3_;
            music_on = true;
            _loc4_;
            _loc4_;
            if(shared_obj.data.music_on == null)
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               music_on = true;
               _loc4_;
               _loc4_;
            }
            else
            {
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               _loc3_;
               music_on = shared_obj.data.music_on;
               _loc3_;
            }
            _loc4_;
            fx_on = true;
            if(shared_obj.data.fx_on == null)
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               _loc4_;
               fx_on = true;
               _loc3_;
            }
            else
            {
               fx_on = shared_obj.data.fx_on;
            }
            MUSIC_ON = music_on;
            FX_ON = fx_on;
         }
         catch(e:Error)
         {
         }
         §_-Ta§ = new Array();
         _loc3_;
         done_init = true;
      }
      
      public static function §_-fR§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(MUSIC_ON)
         {
            _loc2_;
            _loc2_;
            §null §();
            _loc2_;
         }
         else
         {
            §_-X7§();
         }
      }
      
      public static function §_-IV§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         if(FX_ON)
         {
            _loc2_;
            §_-Pd§();
            _loc1_;
         }
         else
         {
            §_-n4§();
         }
      }
      
      public static function §_-xj§(param1:Number) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         MUSIC_VOLUME = param1;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(!fading && !(music_id == 500))
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            (music_data[music_id] as SoundData).sound_transform.volume = (music_data[music_id] as SoundData).sound_volume * MUSIC_VOLUME;
            _loc3_;
            _loc3_;
            (music_data[music_id] as SoundData).sound_channel.soundTransform = (music_data[music_id] as SoundData).sound_transform;
         }
      }
      
      public static function §_-2a§(param1:Number) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         FX_VOLUME = param1;
      }
      
      public static function §_-ZR§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(!done_init)
         {
            _loc1_;
            init();
            _loc1_;
            _loc1_;
         }
         §_-9S§(true);
      }
      
      public static function §_-9S§(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(music_id != MUSIC_MENU)
         {
            prev_music_id = music_id;
            _loc3_;
            _loc3_;
            music_id = MUSIC_MENU;
            _loc3_;
            _loc3_;
            _loc2_;
            if(MUSIC_ON)
            {
               _loc2_;
               _loc2_;
               _loc2_;
               if(param1)
               {
                  _loc3_;
                  _loc3_;
                  _loc2_;
                  (music_data[MUSIC_MENU] as SoundData).track_position = 0;
                  _loc2_;
                  _loc2_;
                  (music_data[MUSIC_MENU] as SoundData).sound_transform.volume = 0;
                  _loc2_;
                  _loc2_;
               }
               else
               {
                  _loc2_;
                  _loc2_;
                  _loc3_;
                  (music_data[MUSIC_MENU] as SoundData).sound_transform.volume = 1;
               }
               _loc2_;
               _loc3_;
               _loc3_;
               (music_data[MUSIC_MENU] as SoundData).sound_channel = (music_data[MUSIC_MENU] as SoundData).sound.play((music_data[MUSIC_MENU] as SoundData).track_position,1,(music_data[MUSIC_MENU] as SoundData).sound_transform);
               (music_data[MUSIC_MENU] as SoundData).sound_channel.addEventListener(Event.SOUND_COMPLETE,SoundManager.§_-6j§,false,0,true);
               _loc3_;
               if(param1)
               {
                  SafeGlobal.TIMELINE.timeline.addEventListener(Event.ENTER_FRAME,§_-Kl§,false,0,true);
                  _loc2_;
                  _loc2_;
                  fading = true;
               }
            }
         }
      }
      
      public static function §_-6j§(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc3_;
         (music_data[MUSIC_MENU] as SoundData).track_position = 0;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         (music_data[MUSIC_MENU] as SoundData).sound_channel = (music_data[music_id] as SoundData).sound.play(0,1,(music_data[MUSIC_MENU] as SoundData).sound_transform);
         _loc2_;
         (music_data[MUSIC_MENU] as SoundData).sound_channel.addEventListener(Event.SOUND_COMPLETE,SoundManager.§_-6j§,false,0,true);
      }
      
      public static function §_-Ed§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         out_of_bounds = false;
         prev_music_id = music_id;
         music_id = MUSIC_GAME_LOOP;
         _loc2_;
         if(MUSIC_ON)
         {
            _loc2_;
            (music_data[MUSIC_GAME_LOOP] as SoundData).track_position = 0;
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            (music_data[MUSIC_GAME_OOB] as SoundData).track_position = 0;
            _loc1_;
            _loc1_;
            (music_data[MUSIC_GAME_LOOP] as SoundData).sound_transform.volume = 0;
            _loc2_;
            _loc2_;
            _loc2_;
            (music_data[MUSIC_GAME_OOB] as SoundData).sound_transform.volume = 0;
            _loc2_;
            _loc2_;
            (music_data[MUSIC_GAME_LOOP] as SoundData).sound_channel = (music_data[MUSIC_GAME_LOOP] as SoundData).sound.play((music_data[MUSIC_GAME_LOOP] as SoundData).track_position,1,(music_data[MUSIC_GAME_LOOP] as SoundData).sound_transform);
            _loc1_;
            _loc1_;
            (music_data[MUSIC_GAME_OOB] as SoundData).sound_channel = (music_data[MUSIC_GAME_OOB] as SoundData).sound.play((music_data[MUSIC_GAME_OOB] as SoundData).track_position,1,(music_data[MUSIC_GAME_OOB] as SoundData).sound_transform);
            _loc1_;
            (music_data[MUSIC_GAME_LOOP] as SoundData).sound_channel.addEventListener(Event.SOUND_COMPLETE,SoundManager.§_-no§,false,0,true);
            _loc2_;
            _loc2_;
            SafeGlobal.TIMELINE.timeline.addEventListener(Event.ENTER_FRAME,§_-Kl§,false,0,true);
            fading = true;
         }
      }
      
      public static function §_-no§(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(MUSIC_ON)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc2_;
            _loc2_;
            (music_data[MUSIC_GAME_LOOP] as SoundData).track_position = 0;
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            (music_data[MUSIC_GAME_OOB] as SoundData).track_position = 0;
            _loc3_;
            _loc3_;
            _loc3_;
            (music_data[MUSIC_GAME_LOOP] as SoundData).sound_channel = (music_data[MUSIC_GAME_LOOP] as SoundData).sound.play((music_data[MUSIC_GAME_LOOP] as SoundData).track_position,1,(music_data[MUSIC_GAME_LOOP] as SoundData).sound_transform);
            _loc3_;
            _loc3_;
            _loc3_;
            (music_data[MUSIC_GAME_OOB] as SoundData).sound_channel = (music_data[MUSIC_GAME_OOB] as SoundData).sound.play((music_data[MUSIC_GAME_OOB] as SoundData).track_position,1,(music_data[MUSIC_GAME_OOB] as SoundData).sound_transform);
            (music_data[MUSIC_GAME_LOOP] as SoundData).sound_channel.addEventListener(Event.SOUND_COMPLETE,SoundManager.§_-no§,false,0,true);
         }
      }
      
      public static function §_-FB§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         prev_music_id = music_id;
         music_id = MUSIC_GAME_LOOP;
         _loc1_;
         if(MUSIC_ON)
         {
            _loc1_;
            if(out_of_bounds)
            {
               (music_data[MUSIC_GAME_LOOP] as SoundData).sound_transform.volume = 0;
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               (music_data[MUSIC_GAME_OOB] as SoundData).sound_transform.volume = 1;
            }
            else
            {
               _loc2_;
               _loc2_;
               (music_data[MUSIC_GAME_LOOP] as SoundData).sound_transform.volume = 1;
               _loc2_;
               _loc2_;
               (music_data[MUSIC_GAME_OOB] as SoundData).sound_transform.volume = 0;
               _loc1_;
               _loc1_;
            }
            (music_data[MUSIC_GAME_LOOP] as SoundData).sound_channel = (music_data[MUSIC_GAME_LOOP] as SoundData).sound.play((music_data[MUSIC_GAME_LOOP] as SoundData).track_position,1,(music_data[MUSIC_GAME_LOOP] as SoundData).sound_transform);
            _loc2_;
            _loc2_;
            (music_data[MUSIC_GAME_OOB] as SoundData).sound_channel = (music_data[MUSIC_GAME_OOB] as SoundData).sound.play((music_data[MUSIC_GAME_OOB] as SoundData).track_position,1,(music_data[MUSIC_GAME_OOB] as SoundData).sound_transform);
            (music_data[MUSIC_GAME_LOOP] as SoundData).sound_channel.addEventListener(Event.SOUND_COMPLETE,SoundManager.§_-no§,false,0,true);
         }
      }
      
      public static function §_-RG§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(!out_of_bounds)
         {
            out_of_bounds = true;
            if(MUSIC_ON)
            {
               _loc2_;
               _loc2_;
               if((music_data[MUSIC_GAME_LOOP] as SoundData).sound_channel != null)
               {
                  _loc1_;
                  _loc1_;
                  _loc2_;
                  (music_data[MUSIC_GAME_LOOP] as SoundData).sound_transform.volume = 0;
                  _loc1_;
                  _loc1_;
                  _loc2_;
                  _loc2_;
                  (music_data[MUSIC_GAME_LOOP] as SoundData).sound_channel.soundTransform = (music_data[MUSIC_GAME_LOOP] as SoundData).sound_transform;
                  _loc1_;
                  _loc1_;
                  _loc1_;
                  _loc1_;
                  (music_data[MUSIC_GAME_OOB] as SoundData).sound_transform.volume = 1;
                  _loc2_;
                  _loc2_;
                  (music_data[MUSIC_GAME_OOB] as SoundData).sound_channel.soundTransform = (music_data[MUSIC_GAME_OOB] as SoundData).sound_transform;
               }
            }
         }
      }
      
      public static function §_-pe§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(out_of_bounds)
         {
            out_of_bounds = false;
            if(MUSIC_ON)
            {
               _loc1_;
               _loc1_;
               _loc2_;
               if((music_data[MUSIC_GAME_LOOP] as SoundData).sound_channel != null)
               {
                  _loc1_;
                  _loc1_;
                  _loc1_;
                  _loc1_;
                  _loc2_;
                  (music_data[MUSIC_GAME_LOOP] as SoundData).sound_transform.volume = 1;
                  _loc1_;
                  _loc1_;
                  _loc1_;
                  _loc1_;
                  (music_data[MUSIC_GAME_LOOP] as SoundData).sound_channel.soundTransform = (music_data[MUSIC_GAME_LOOP] as SoundData).sound_transform;
                  _loc2_;
                  _loc2_;
                  _loc1_;
                  (music_data[MUSIC_GAME_OOB] as SoundData).sound_transform.volume = 0;
                  _loc2_;
                  (music_data[MUSIC_GAME_OOB] as SoundData).sound_channel.soundTransform = (music_data[MUSIC_GAME_OOB] as SoundData).sound_transform;
               }
            }
         }
      }
      
      public static function §_-Oc§(param1:uint, param2:Boolean = false) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc5_;
         if((FX_ON) && !param2)
         {
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            if(fx_data[param1] != null)
            {
               _loc6_;
               _loc6_;
               _loc6_;
               (fx_data[param1] as SoundData).sound_transform.volume = (fx_data[param1] as SoundData).sound_volume * FX_VOLUME;
               _loc6_;
               if(§_-Ta§.length < §_-BL§)
               {
                  _loc5_;
                  _loc5_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  sound_uid++;
                  _loc5_;
                  _loc5_;
                  if(sound_uid > 500)
                  {
                     sound_uid = 0;
                  }
                  _loc5_;
                  §_-Ta§.push(new SoundWrapper(sound_uid,(fx_data[param1] as SoundData).sound.play(0,0,(fx_data[param1] as SoundData).sound_transform),param1));
                  _loc5_;
                  §_-Ta§[§_-Ta§.length - 1].sound_channel.addEventListener(Event.SOUND_COMPLETE,SoundManager.§_-EV§,false,0,true);
               }
            }
         }
      }
      
      public static function §_-rg§(param1:uint, param2:int, param3:Boolean, param4:Boolean = false) : int
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         _loc7_;
         _loc8_;
         _loc7_;
         _loc7_;
         if((FX_ON) && !param4)
         {
            _loc8_;
            _loc8_;
            _loc7_;
            if(fx_data[param1] != null)
            {
               _loc8_;
               (fx_data[param1] as SoundData).sound_transform.volume = (fx_data[param1] as SoundData).sound_volume * FX_VOLUME;
               _loc8_;
               _loc8_;
               if(§_-Ta§.length < §_-BL§)
               {
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  sound_uid++;
                  _loc7_;
                  _loc7_;
                  if(sound_uid > 500)
                  {
                     _loc7_;
                     _loc7_;
                     sound_uid = 0;
                     _loc7_;
                  }
                  _loc7_;
                  §_-Ta§.push(new SoundWrapper(sound_uid,(fx_data[param1] as SoundData).sound.play(0,param2,(fx_data[param1] as SoundData).sound_transform),param1,param2,param3));
                  §_-Ta§[§_-Ta§.length - 1].sound_channel.addEventListener(Event.SOUND_COMPLETE,SoundManager.§_-kq§,false,0,true);
                  _loc8_;
                  return sound_uid;
               }
            }
         }
         return -1;
      }
      
      public static function §_-sQ§(param1:uint, param2:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc5_;
         _loc5_;
         _loc6_;
         if(fx_data[param1] != null)
         {
            _loc6_;
            _loc6_;
            if(param2 != -1)
            {
               _loc5_;
               _loc3_ = §_-Ta§.length - 1;
               while(_loc3_ >= 0)
               {
                  _loc5_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  _loc6_;
                  if((§_-Ta§[_loc3_] as SoundWrapper).uid == param2)
                  {
                     _loc6_;
                     _loc6_;
                     if((§_-Ta§[_loc3_] as SoundWrapper).sound_channel.hasEventListener(Event.SOUND_COMPLETE))
                     {
                        _loc6_;
                        _loc5_;
                        _loc5_;
                        _loc5_;
                        _loc4_ = (§_-Ta§[_loc3_] as SoundWrapper).loop_count;
                        _loc5_;
                        (§_-Ta§[_loc3_] as SoundWrapper).sound_channel.removeEventListener(Event.SOUND_COMPLETE,SoundManager.§_-kq§);
                     }
                     _loc5_;
                     _loc5_;
                     (§_-Ta§[_loc3_] as SoundWrapper).sound_channel.stop();
                     _loc5_;
                     _loc5_;
                     (§_-Ta§[_loc3_] as SoundWrapper).sound_channel = null;
                     §_-Ta§.splice(_loc3_,1);
                     break;
                  }
                  _loc5_;
                  _loc5_;
                  _loc6_;
                  _loc3_--;
               }
            }
         }
      }
      
      public static function §_-EV§(param1:Event) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         var _loc2_:int = §_-Ta§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc4_;
            _loc4_;
            if((§_-Ta§[_loc2_] as SoundWrapper).sound_channel == param1.currentTarget)
            {
               _loc4_;
               _loc4_;
               _loc5_;
               (§_-Ta§[_loc2_] as SoundWrapper).sound_channel.removeEventListener(Event.SOUND_COMPLETE,SoundManager.§_-EV§);
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               _loc5_;
               (§_-Ta§[_loc2_] as SoundWrapper).sound_channel.stop();
               _loc5_;
               _loc5_;
               _loc5_;
               (§_-Ta§[_loc2_] as SoundWrapper).sound_channel = null;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc5_;
               _loc4_;
               _loc4_;
               _loc3_ = (§_-Ta§[_loc2_] as SoundWrapper).uid;
               §_-Ta§.splice(_loc2_,1);
               _loc5_;
               _loc5_;
               break;
            }
            _loc4_;
            _loc5_;
            _loc5_;
            _loc2_--;
         }
      }
      
      public static function §_-kq§(param1:Event) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:uint = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:int = §_-Ta§.length - 1;
         while(_loc2_ >= 0)
         {
            _loc6_;
            _loc6_;
            if((§_-Ta§[_loc2_] as SoundWrapper).sound_channel == param1.currentTarget)
            {
               _loc7_;
               _loc7_;
               _loc6_;
               _loc6_;
               _loc3_ = (§_-Ta§[_loc2_] as SoundWrapper).fx_id;
               (fx_data[_loc3_] as SoundData).sound_transform.volume = (fx_data[_loc3_] as SoundData).sound_volume * FX_VOLUME;
               (§_-Ta§[_loc2_] as SoundWrapper).sound_channel.removeEventListener(Event.SOUND_COMPLETE,SoundManager.§_-kq§);
               _loc6_;
               _loc7_;
               _loc7_;
               _loc6_;
               _loc6_;
               if((§_-Ta§[_loc2_] as SoundWrapper).loop_forever)
               {
                  _loc6_;
                  (§_-Ta§[_loc2_] as SoundWrapper).sound_channel = null;
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc4_ = (§_-Ta§[_loc2_] as SoundWrapper).loop_count;
                  _loc7_;
                  (§_-Ta§[_loc2_] as SoundWrapper).sound_channel = (fx_data[_loc3_] as SoundData).sound.play(0,_loc4_,(fx_data[_loc3_] as SoundData).sound_transform);
                  _loc6_;
                  _loc6_;
                  (§_-Ta§[_loc2_] as SoundWrapper).sound_channel.addEventListener(Event.SOUND_COMPLETE,SoundManager.§_-kq§,false,0,true);
                  _loc7_;
                  _loc7_;
               }
               else
               {
                  (§_-Ta§[_loc2_] as SoundWrapper).sound_channel.stop();
                  (§_-Ta§[_loc2_] as SoundWrapper).sound_channel = null;
                  _loc5_ = (§_-Ta§[_loc2_] as SoundWrapper).uid;
                  §_-Ta§.splice(_loc2_,1);
                  _loc6_;
               }
               break;
            }
            _loc6_;
            _loc6_;
            _loc2_--;
         }
      }
      
      public static function §_-ob§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = false;
         var _loc1_:int = §_-Ta§.length - 1;
         while(_loc1_ >= 0)
         {
            _loc4_;
            _loc4_;
            if(§_-Ta§[_loc1_] != null)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               if((§_-Ta§[_loc1_] as SoundWrapper).sound_channel != null)
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  if((§_-Ta§[_loc1_] as SoundWrapper).sound_channel.hasEventListener(Event.SOUND_COMPLETE))
                  {
                     _loc5_;
                     _loc5_;
                     _loc2_ = (§_-Ta§[_loc1_] as SoundWrapper).loop_count;
                     _loc4_;
                     _loc5_;
                     _loc5_;
                     _loc3_ = (§_-Ta§[_loc1_] as SoundWrapper).loop_forever;
                     _loc4_;
                     _loc4_;
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     _loc5_;
                     if(_loc2_ > 1 || (_loc3_))
                     {
                        _loc4_;
                        _loc5_;
                        _loc5_;
                        (§_-Ta§[_loc1_] as SoundWrapper).sound_channel.removeEventListener(Event.SOUND_COMPLETE,SoundManager.§_-kq§);
                        _loc5_;
                     }
                     else
                     {
                        _loc5_;
                        _loc5_;
                        _loc5_;
                        (§_-Ta§[_loc1_] as SoundWrapper).sound_channel.removeEventListener(Event.SOUND_COMPLETE,SoundManager.§_-EV§);
                     }
                  }
                  (§_-Ta§[_loc1_] as SoundWrapper).sound_channel.stop();
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  (§_-Ta§[_loc1_] as SoundWrapper).sound_channel = null;
                  _loc4_;
                  §_-Ta§.splice(_loc1_,1);
               }
            }
            _loc5_;
            _loc5_;
            _loc4_;
            _loc1_--;
         }
         §_-Ta§.length = 0;
         _loc5_;
         _loc5_;
         §_-Ta§ = new Array();
      }
      
      private static function §null §() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         var shared_obj:SharedObject = null;
         _loc3_;
         var i:int = 0;
         while(true)
         {
            _loc3_;
            if(i >= music_data.length)
            {
               break;
            }
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(music_data[i] != null)
            {
               _loc3_;
               _loc4_;
               _loc4_;
               _loc4_;
               if((music_data[i] as SoundData).sound_channel != null)
               {
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  _loc3_;
                  _loc3_;
                  (music_data[i] as SoundData).track_position = (music_data[i] as SoundData).sound_channel.position;
                  _loc4_;
                  _loc4_;
                  (music_data[i] as SoundData).sound_channel.stop();
               }
            }
            _loc3_;
            _loc3_;
            _loc3_;
            i++;
         }
         prev_music_id = 500;
         fading = false;
         MUSIC_ON = false;
         _loc4_;
         _loc4_;
         try
         {
            _loc4_;
            _loc4_;
            shared_obj = SharedObject.getLocal("GWOSoundPrefs");
            _loc4_;
            _loc4_;
            shared_obj.data.music_on = false;
            shared_obj.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §_-X7§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         var shared_obj:SharedObject = null;
         _loc4_;
         _loc4_;
         _loc4_;
         var last_music_id:uint = music_id;
         music_id = 500;
         _loc3_;
         MUSIC_ON = true;
         _loc4_;
         _loc4_;
         _loc4_;
         if(last_music_id == MUSIC_GAME_LOOP)
         {
            §_-FB§();
         }
         else
         {
            §_-9S§(false);
         }
         try
         {
            _loc4_;
            shared_obj = SharedObject.getLocal("GWOSoundPrefs");
            _loc3_;
            _loc3_;
            shared_obj.data.music_on = true;
            shared_obj.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §_-Pd§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var shared_obj:SharedObject = null;
         _loc3_;
         _loc3_;
         §_-ob§();
         _loc4_;
         FX_ON = false;
         try
         {
            _loc4_;
            _loc4_;
            shared_obj = SharedObject.getLocal("GWOSoundPrefs");
            _loc3_;
            _loc3_;
            _loc3_;
            shared_obj.data.fx_on = false;
            _loc4_;
            _loc4_;
            shared_obj.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §_-n4§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var shared_obj:SharedObject = null;
         _loc3_;
         _loc3_;
         FX_ON = true;
         try
         {
            _loc4_;
            _loc4_;
            shared_obj = SharedObject.getLocal("GWOSoundPrefs");
            _loc3_;
            _loc3_;
            shared_obj.data.fx_on = true;
            _loc3_;
            _loc3_;
            shared_obj.flush();
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §_-Kl§(param1:Event) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = NaN;
         _loc3_;
         if(prev_music_id == 500)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc2_ = (music_data[music_id] as SoundData).sound_volume * MUSIC_VOLUME;
            _loc3_;
            _loc3_;
            if((music_data[music_id] as SoundData).sound_transform.volume < _loc2_)
            {
               _loc3_;
               (music_data[music_id] as SoundData).sound_transform.volume = (music_data[music_id] as SoundData).sound_transform.volume + FADE_SPEED;
               _loc4_;
               _loc4_;
               (music_data[music_id] as SoundData).sound_channel.soundTransform = (music_data[music_id] as SoundData).sound_transform;
               _loc4_;
            }
            _loc3_;
            if((music_data[music_id] as SoundData).sound_transform.volume >= _loc2_)
            {
               (music_data[music_id] as SoundData).sound_transform.volume = _loc2_;
               _loc4_;
               _loc4_;
               (music_data[music_id] as SoundData).sound_channel.soundTransform = (music_data[music_id] as SoundData).sound_transform;
               param1.target.removeEventListener(Event.ENTER_FRAME,§_-Kl§);
               fading = false;
            }
         }
         else
         {
            _loc3_;
            _loc3_;
            if(prev_music_id == MUSIC_GAME_LOOP)
            {
               _loc3_;
               if(out_of_bounds)
               {
                  _loc4_;
                  _loc3_;
                  _loc3_;
                  if((music_data[MUSIC_GAME_OOB] as SoundData).sound_transform.volume > 0)
                  {
                     _loc3_;
                     _loc3_;
                     (music_data[MUSIC_GAME_OOB] as SoundData).sound_transform.volume = (music_data[MUSIC_GAME_OOB] as SoundData).sound_transform.volume - FADE_SPEED;
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     (music_data[MUSIC_GAME_OOB] as SoundData).sound_channel.soundTransform = (music_data[MUSIC_GAME_OOB] as SoundData).sound_transform;
                  }
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  if((music_data[MUSIC_GAME_LOOP] as SoundData).sound_transform.volume > 0)
                  {
                     _loc3_;
                     (music_data[MUSIC_GAME_LOOP] as SoundData).sound_transform.volume = (music_data[MUSIC_GAME_LOOP] as SoundData).sound_transform.volume - FADE_SPEED;
                     _loc3_;
                     (music_data[MUSIC_GAME_LOOP] as SoundData).sound_channel.soundTransform = (music_data[prev_music_id] as SoundData).sound_transform;
                  }
               }
            }
            else
            {
               _loc4_;
               _loc4_;
               if((music_data[prev_music_id] as SoundData).sound_transform.volume > 0)
               {
                  _loc3_;
                  _loc3_;
                  _loc4_;
                  (music_data[prev_music_id] as SoundData).sound_transform.volume = (music_data[prev_music_id] as SoundData).sound_transform.volume - FADE_SPEED;
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  (music_data[prev_music_id] as SoundData).sound_channel.soundTransform = (music_data[prev_music_id] as SoundData).sound_transform;
                  _loc3_;
                  _loc3_;
               }
            }
            _loc4_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc2_ = (music_data[music_id] as SoundData).sound_volume * MUSIC_VOLUME;
            _loc3_;
            if((music_data[music_id] as SoundData).sound_transform.volume < _loc2_)
            {
               _loc3_;
               (music_data[music_id] as SoundData).sound_transform.volume = (music_data[music_id] as SoundData).sound_transform.volume + FADE_SPEED;
               _loc3_;
               (music_data[music_id] as SoundData).sound_channel.soundTransform = (music_data[music_id] as SoundData).sound_transform;
            }
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            if((music_data[music_id] as SoundData).sound_transform.volume >= _loc2_ && (music_data[prev_music_id] as SoundData).sound_transform.volume <= 0)
            {
               (music_data[music_id] as SoundData).sound_transform.volume = _loc2_;
               _loc3_;
               _loc4_;
               _loc4_;
               (music_data[music_id] as SoundData).sound_channel.soundTransform = (music_data[music_id] as SoundData).sound_transform;
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               (music_data[prev_music_id] as SoundData).track_position = 0;
               _loc4_;
               _loc4_;
               _loc4_;
               (music_data[prev_music_id] as SoundData).sound_channel.stop();
               _loc4_;
               _loc4_;
               if(prev_music_id == MUSIC_GAME_LOOP)
               {
                  _loc4_;
                  _loc4_;
                  (music_data[MUSIC_GAME_OOB] as SoundData).track_position = 0;
                  _loc3_;
                  (music_data[MUSIC_GAME_OOB] as SoundData).sound_channel.stop();
                  _loc4_;
                  _loc4_;
               }
               param1.target.removeEventListener(Event.ENTER_FRAME,§_-Kl§);
               fading = false;
            }
         }
      }
   }
}
