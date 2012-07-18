# Copyright (c) 2012, 2012 All Rights Reserved, Marek Burza (mkburza@gmail.com)
#
# This builds the Flash miner:
# - First the C code of the miner (using Adobe Alchemy)
# - Then the ActionScript code for communication with mining pool
#   while also linking the miner build earlier (using Adobe Flex SDK)
# Warning: Do not forget to run alc-on before make

ALL: app

app:
	gcc ../native/miner.c -O3 -Wall -swc -o miner.swc
	mxmlc -debug=true -library-path+=miner.swc --target-player=11.1.0 -default-frame-rate=24 -static-link-runtime-shared-libraries=true miner.as
	@cp miner.swf ../proxy/swf/
	@rm miner.s* > /dev/null

