//INIT VARIABLES
screenRatio = 3;
view_camera[0] = camera_create_view(0, 0, RES_W, RES_H, 0, -1, -1, -1, 0, 0);
view_visible[0] = true;
view_enabled = true;
window_set_size( RES_W * screenRatio, RES_H * screenRatio);
cam = view_camera[0];
camDelay = 15;
follow = oPlayer;
viewWidthHalf = camera_get_view_width(cam) *.5;
viewHeightHalf = camera_get_view_height(cam) *.5;
xTo = xstart; 
yTo = ystart;
shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;
cloudPos = 0