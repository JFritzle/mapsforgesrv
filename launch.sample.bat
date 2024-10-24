REM https://docs.oracle.com/javase/8/docs/technotes/guides/2d/flags.html#win
REM https://github.com/bourgesl/mapbench/blob/master/bin/env_marlin.sh
SET ymdhis=%date:~-4,4%-%date:~-10,2%-%date:~-7,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%
SET ymdhis=%ymdhis: =0%
java.exe ^
	-Xmx2G ^
	-Xms2G ^
	-Xbootclasspath/p:=libs\marlin-0.9.4.7-Unsafe-sun-java2d.jar ^
	-Xbootclasspath/p:=libs\marlin-0.9.4.7-Unsafe.jar ^
	-Dsun.java2d.renderer=sun.java2d.marlin.DMarlinRenderingEngine ^
	-Dsun.java2d.renderer.log=true ^
	-Dsun.java2d.renderer.useLogger=true ^
	-Dsun.java2d.accthreshold=0 ^
	-Dsun.java2d.renderer.useThreadLocal=false ^
	-Dsun.java2d.renderer.tileSize_log2=8 ^
	-Dsun.java2d.renderer.tileWidth_log2=8 ^
	-Dsun.java2d.renderer.useFastMath=true ^
	-Dsun.java2d.render.bufferSize=1048576 ^
	-jar build\libs\mapsforgesrv4java8.jar ^
    -c config.sample.properties 2>&1
REM -Dsun.java2d.opengl=false ^
REM -Dsun.java2d.d3d=true ^
REM	-Dsun.java2d.translaccel=true ^
REM	-Dsun.java2d.renderer.profile=speed ^
REM -Xloggc:D:\mapsforgesrv\logs\gc.%ymdhis%.log ^
REM	-XX:+PrintGCDetails ^
