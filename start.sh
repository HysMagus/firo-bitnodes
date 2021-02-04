#!/bin/bash
# --- bitcoin mainnet: e3d9fef1 (db = 0) ---
/usr/bin/nice -n 19 python -u crawl.py conf/crawl.e3d9fef1.conf master > log/crawl.e3d9fef1.master.out 2>&1 &
/usr/bin/nice -n 19 python -u crawl.py conf/crawl.e3d9fef1.conf slave > log/crawl.e3d9fef1.slave.1.out 2>&1 &
/usr/bin/nice -n 19 python -u crawl.py conf/crawl.e3d9fef1.conf slave > log/crawl.e3d9fef1.slave.2.out 2>&1 &

/usr/bin/nice -n 19 python -u ping.py conf/ping.e3d9fef1.conf master > log/ping.e3d9fef1.master.out 2>&1 &
/usr/bin/nice -n 19 python -u ping.py conf/ping.e3d9fef1.conf slave > log/ping.e3d9fef1.slave.1.out 2>&1 &
/usr/bin/nice -n 19 python -u ping.py conf/ping.e3d9fef1.conf slave > log/ping.e3d9fef1.slave.2.out 2>&1 &
/usr/bin/nice -n 19 python -u ping.py conf/ping.e3d9fef1.conf slave > log/ping.e3d9fef1.slave.3.out 2>&1 &
/usr/bin/nice -n 19 python -u ping.py conf/ping.e3d9fef1.conf slave > log/ping.e3d9fef1.slave.4.out 2>&1 &
/usr/bin/nice -n 19 python -u ping.py conf/ping.e3d9fef1.conf slave > log/ping.e3d9fef1.slave.5.out 2>&1 &

/usr/bin/nice -n 19 python -u resolve.py conf/resolve.e3d9fef1.conf > log/resolve.e3d9fef1.out 2>&1 &

/usr/bin/nice -n 19 python -u export.py conf/export.e3d9fef1.conf > log/export.e3d9fef1.out 2>&1 &

/usr/bin/nice -n 19 python -u seeder.py conf/seeder.e3d9fef1.conf > log/seeder.e3d9fef1.out 2>&1 &

/usr/bin/nice -n 19 python -u pcap.py conf/pcap.e3d9fef1.conf > log/pcap.e3d9fef1.1.out 2>&1 &
/usr/bin/nice -n 19 python -u pcap.py conf/pcap.e3d9fef1.conf > log/pcap.e3d9fef1.2.out 2>&1 &
/usr/bin/nice -n 19 python -u pcap.py conf/pcap.e3d9fef1.conf > log/pcap.e3d9fef1.3.out 2>&1 &
