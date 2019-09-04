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
stimulus_properties = encoded_word, string; # this specifies how the event codes are interpreted in the log. Here, the one event code will be the word shown in a given trial and it is specified as a string. This will show up as a column "encoded_word" in the log
event_code_delimiter = ",";
pcl_file = "RecognitionTaskE.pcl";
begin;





#TRIALS

# Instructions

trial {
 trial_duration = forever;
 trial_type = specific_response; # if you use first_response, your trial will go off with any active button pressed
 terminator_button = 1; # for the specific response you need to define the terminator button
 stimulus_event {
  picture {
   background_color = 255, 255, 255;
   text {background_color = 255,255,255; font_color = 0,0,139,200; font = "Arial";
     caption = "A következő feladatban 40 darab szót fog látni.\nA szavakat rövid ideig fogjuk bemutatni.\nKérjük, hogy memorizálja a látott szavakat.\nAmikor készen áll nyomja meg az ENTER gombot."; # you can use \n to denote new line and \t to denote tab
    } instruction1_text;
    x = 0; y = 0;
  }instruction1_pic;
  target_button = 1;
 }instruction1_event;
}instruction1_trial;

# Main trial

trial{
 trial_duration = 3000;
 stimulus_event {
  picture {
   background_color = 255,255,255;
   text {background_color = 255,255,255; font_color = 0,0,139,200; font_size = 100; font = "Arial";
    caption = "WORDS";
   } word_encoding_text;
    x = 0; y = 0;
  }word_encoding_pic;
 }word_encoding_event;
}word_encoding_trial;

# Thanks trial

trial{
 trial_duration = forever;
 trial_type = specific_response; # if you use first_response, your trial will go off with any active button pressed
 terminator_button = 1; # for the specific response you need to define the terminator button
 stimulus_event {
  picture {
   background_color = 255,255,255;
   text {background_color = 255,255,255; font_color = 0,0,139,200; font = "Arial";
    caption = "Köszönjük, ez a lista vége!\nA kilépéshez nyomja meg az ENTER-t."; # you can use \n to denote new line and \t to denote tab
   } thanks_text;
    x = 0; y = 0;
  }thanks_pic;
  target_button = 1;
 }thanks_event;
}thanks_trial;
