#!/bin/sh
echo 'Script started'
#screen -d -m -S "Voltz" java -Xms1G -Xmx8G -XX:+UseConcMarkSweepGC -jar forge-1.12.2-14.23.5.2854.jar nogui
screen -d -m -S "Voltz" java -Xms6G -Xmx12G -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=50 -XX:+DisableExplicitGC -XX:G1HeapRegionSize=4M -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:InitiatingHeapOccupancyPercent=10 -XX:G1MixedGCLiveThresholdPercent=50 -XX:+AggressiveOpts -jar forge-1.12.2-14.23.5.2854.jar nogui
#screen -d -m -S "Voltz" nohup cpulimit --background --limit=40 --java -Xms6G -Xmx12G -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMi>
