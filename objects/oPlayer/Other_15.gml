/// @description Knocback State
sprite_index = sprKnocback;
if (knocbackFrames <= 0) {
	knocbackFrames = 30;
	instance_destroy(oSword);
	
} else {
	knocbackFrames--;
	if knocbackFrames == 1 {
		knocbackFrames = 0;
		state = 0;
		
	}

}


