import time
import os
import sys

def worker_update() -> None:
	time_update: Unknown = int(sys.argv[1])

	while True: #(command: StrOrBytesPath) -> int
		os.system("~/Odin-Hat/html/done/script/worker_update.sh")
		time.sleep(time_update)
worker_update()
