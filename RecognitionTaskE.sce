#RECOGNITION TASK
#ENCODING PHASE
scenario = "Recognition Task Encoding";

default_font_size = 20;
default_font = "Arial";
default_text_color = 0,0,0;
default_background_color = 255,255,255;
active_buttons = 1;
button_codes = 1; #enter
response_matching = simple_matching;
stimulus_properties = trial_phase, string, cue, string, cue_durations, number, cuestatus, string, target, string, ITT, number, trial_number, number;
event_code_delimiter = ",";
pcl_file = "RecognitionTaskE.pcl";
begin;

#INSTRUCTIONS

trial {
 trial_duration = forever;
 trial_type = first_response;
 
 stimulus_event {
  picture {
   background_color = 255, 255, 255;
   
   text {background_color = 255,255,255; font_color = 0,0,139,200; font = "Arial";
     caption = "A következő feladatban 40 darab szót fog látni.
A szavakat rövid ideig fogjuk bemutatni.
Kérjük, hogy memorizálja a látott szavakat.

Amikor készen áll nyomja meg az ENTER gombot.";
    } instruction1;
    x = 0; y = 0;
  }instruction1_pic;
  target_button = 1;
 }instruction1_event;
}instruction1_trial;



#TRIALS

trial{
 trial_duration = 3000;
 stimulus_event {
  picture {
   background_color = 255,255,255;
   
   text {background_color = 255,255,255; font_color = 0,0,139,200; font_size = 100; font = "Arial";
    caption = "WORDS";
   } word_encoding;
    x = 0; y = 0;
  }word_encoding_pic;
 }word_encoding_event;
}word_encoding_trial;

#THANKS

trial{
 trial_duration = forever;
 trial_type = first_response;

 stimulus_event {
  picture {
   background_color = 255,255,255;
   
   text {background_color = 255,255,255; font_color = 0,0,139,200; font = "Arial";
    caption = "Köszönjük, ez a lista vége!

A kilépéshez nyomja meg az ENTER-t.";
   } thanks;
    x = 0; y = 0;
  }thanks_pic;
  target_button = 1;
 }thanks_event;
}thanks_trial;