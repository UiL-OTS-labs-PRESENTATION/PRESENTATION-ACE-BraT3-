pcl_file = "BRaTWorDS.pcl"; 					# pcl file name geven
scenario = "BRaTWorDS"; 						# for log-file

#Scenario configuration
write_codes = true; 								# send codes to the acquisition devices
pulse_width = 10;									# determines the length of time that tøhe codes remain on the port
active_buttons = 1;								# 1 button active
button_codes = 255;								# Code that is send if the button (def: enter)is pressed.

begin;

trial
{
	trial_type = first_response;
	trial_duration = forever;
	
	picture
	{
		background_color = EXPARAM("Background Color");
		
		text
		{
			caption = "place holder:";
			font_size = 30;
		} instruction_text;
		x = 0; y = 0;
	};
	
} instruction;

trial
{
	trial_type = first_response;
	trial_duration = forever;
	
	picture
	{
		background_color = EXPARAM("Background Color");
		text
		{
			caption = "place holder:";
			font_size = 30;
		} post_practice_text;
		x = 0; y = 0;
	};
	time = 1000;
	port_code = EXPARAM("Stop Marker");
	code = EXPARAM("Stop Marker");
} post_practice_instruction;

trial
{
	trial_type = first_response;
	trial_duration = forever;
	
	picture
	{
		background_color = EXPARAM("Background Color");
		text
		{
			caption = "place holder:";
			font_size = 30;
		} pause_text;
		x = 0; y = 0;
	};

	time = 1000;
	port_code = EXPARAM("Stop Marker");
	code = EXPARAM("Stop Marker");
	
} pause;

trial
{
	trial_type = first_response;
	trial_duration = forever;
	
	picture
	{
		background_color = EXPARAM("Background Color");
		text
		{
			caption = "place holder:";
			font_size = 30;
		} major_pause_text;
		x = 0; y = 0;
	};
	time = 500;
	port_code = EXPARAM("Stop Marker");
	code = EXPARAM("Stop Marker");
	
	stimulus_event
	{
		nothing {};
		response_active = true;
		time = 1500;
	};
	
} major_pause;