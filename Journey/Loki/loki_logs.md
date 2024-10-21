why cant i connect from grafana > rifaterdemsahin ➜ /workspaces/deliverypilot (main) $ kubectl logs loki-0 -n loki
level=info ts=2024-10-21T16:19:46.358663784Z caller=main.go:103 msg="Starting Loki" version="(version=2.6.1, branch=HEAD, revision=6bd05c9a4)"
level=info ts=2024-10-21T16:19:46.359049513Z caller=server.go:288 http=[::]:3100 grpc=[::]:9095 msg="server listening on addresses"
level=info ts=2024-10-21T16:19:46.359342782Z caller=modules.go:736 msg="RulerStorage is not configured in single binary mode and will not be started."
level=warn ts=2024-10-21T16:19:46.360259779Z caller=experimental.go:20 msg="experimental feature in use" feature="In-memory (FIFO) cache - chunksfifocache"
level=info ts=2024-10-21T16:19:46.360763744Z caller=table_manager.go:252 msg="query readiness setup completed" duration=1.406µs distinct_users_len=0
level=info ts=2024-10-21T16:19:46.360815496Z caller=shipper.go:124 msg="starting index shipper in RW mode"
level=info ts=2024-10-21T16:19:46.360985281Z caller=shipper_index_client.go:79 msg="starting boltdb shipper in RW mode"
level=info ts=2024-10-21T16:19:46.361924652Z caller=modules.go:761 msg="RulerStorage is nil.  Not starting the ruler."
level=info ts=2024-10-21T16:19:46.369880468Z caller=worker.go:112 msg="Starting querier worker using query-scheduler and scheduler ring for addresses"
level=info ts=2024-10-21T16:19:46.363640543Z caller=table_manager.go:134 msg="uploading tables"
level=info ts=2024-10-21T16:19:46.362481533Z caller=table_manager.go:167 msg="handing over indexes to shipper"
level=info ts=2024-10-21T16:19:46.375200094Z caller=module_service.go:82 msg=initialising module=server
level=info ts=2024-10-21T16:19:46.376310387Z caller=module_service.go:82 msg=initialising module=memberlist-kv
level=info ts=2024-10-21T16:19:46.376478818Z caller=module_service.go:82 msg=initialising module=query-frontend-tripperware
level=info ts=2024-10-21T16:19:46.377033723Z caller=module_service.go:82 msg=initialising module=store
level=info ts=2024-10-21T16:19:46.377260269Z caller=module_service.go:82 msg=initialising module=ring
level=info ts=2024-10-21T16:19:46.377561031Z caller=ring.go:263 msg="ring doesn't exist in KV store yet"
level=info ts=2024-10-21T16:19:46.377809369Z caller=module_service.go:82 msg=initialising module=ingester-querier
level=info ts=2024-10-21T16:19:46.378026053Z caller=module_service.go:82 msg=initialising module=usage-report
level=info ts=2024-10-21T16:19:46.378353303Z caller=module_service.go:82 msg=initialising module=distributor
level=info ts=2024-10-21T16:19:46.378892891Z caller=module_service.go:82 msg=initialising module=ingester
level=info ts=2024-10-21T16:19:46.379084338Z caller=lifecycler.go:547 msg="not loading tokens from file, tokens file path is empty"
level=info ts=2024-10-21T16:19:46.37919356Z caller=lifecycler.go:576 msg="instance not found in ring, adding with no tokens" ring=distributor
level=info ts=2024-10-21T16:19:46.379328968Z caller=ingester.go:401 msg="recovering from checkpoint"
level=info ts=2024-10-21T16:19:46.379416661Z caller=lifecycler.go:416 msg="auto-joining cluster after timeout" ring=distributor
level=info ts=2024-10-21T16:19:46.379430182Z caller=recovery.go:39 msg="no checkpoint found, treating as no-op"
level=info ts=2024-10-21T16:19:46.379543906Z caller=module_service.go:82 msg=initialising module=query-scheduler
level=info ts=2024-10-21T16:19:46.379743433Z caller=ring.go:263 msg="ring doesn't exist in KV store yet"
level=info ts=2024-10-21T16:19:46.379837991Z caller=module_service.go:82 msg=initialising module=compactor
level=info ts=2024-10-21T16:19:46.37999353Z caller=ring.go:263 msg="ring doesn't exist in KV store yet"
level=info ts=2024-10-21T16:19:46.380071365Z caller=ingester.go:417 msg="recovered WAL checkpoint recovery finished" elapsed=751.294µs errors=false
level=info ts=2024-10-21T16:19:46.380131574Z caller=ingester.go:423 msg="recovering from WAL"
level=info ts=2024-10-21T16:19:46.380853695Z caller=basic_lifecycler.go:261 msg="instance not found in the ring" instance=loki-0 ring=scheduler
level=info ts=2024-10-21T16:19:46.380897142Z caller=basic_lifecycler_delegates.go:63 msg="not loading tokens from file, tokens file path is empty"
level=info ts=2024-10-21T16:19:46.380932067Z caller=ingester.go:439 msg="WAL segment recovery finished" elapsed=1.572807ms errors=false
level=info ts=2024-10-21T16:19:46.380962048Z caller=ingester.go:387 msg="closing recoverer"
level=info ts=2024-10-21T16:19:46.380979867Z caller=ingester.go:395 msg="WAL recovery finished" time=1.659577ms
level=info ts=2024-10-21T16:19:46.381093332Z caller=basic_lifecycler.go:261 msg="instance not found in the ring" instance=loki-0 ring=compactor
level=info ts=2024-10-21T16:19:46.381117543Z caller=basic_lifecycler_delegates.go:63 msg="not loading tokens from file, tokens file path is empty"
level=info ts=2024-10-21T16:19:46.381108091Z caller=lifecycler.go:547 msg="not loading tokens from file, tokens file path is empty"
level=info ts=2024-10-21T16:19:46.381178559Z caller=lifecycler.go:576 msg="instance not found in ring, adding with no tokens" ring=ingester
level=info ts=2024-10-21T16:19:46.381231525Z caller=wal.go:156 msg=started component=wal
level=info ts=2024-10-21T16:19:46.381303225Z caller=scheduler.go:617 msg="waiting until scheduler is JOINING in the ring"
level=info ts=2024-10-21T16:19:46.381316215Z caller=scheduler.go:621 msg="scheduler is JOINING in the ring"
level=info ts=2024-10-21T16:19:46.381421451Z caller=lifecycler.go:416 msg="auto-joining cluster after timeout" ring=ingester
level=info ts=2024-10-21T16:19:46.381556117Z caller=compactor.go:307 msg="waiting until compactor is JOINING in the ring"
level=info ts=2024-10-21T16:19:46.381569115Z caller=compactor.go:311 msg="compactor is JOINING in the ring"
ts=2024-10-21T16:19:46.382833572Z caller=memberlist_logger.go:74 level=warn msg="Failed to resolve loki-memberlist: lookup loki-memberlist on 10.96.0.10:53: no such host"
level=info ts=2024-10-21T16:19:47.382216281Z caller=compactor.go:321 msg="waiting until compactor is ACTIVE in the ring"
level=info ts=2024-10-21T16:19:47.382447056Z caller=scheduler.go:631 msg="waiting until scheduler is ACTIVE in the ring"
level=info ts=2024-10-21T16:19:47.382559746Z caller=scheduler.go:635 msg="scheduler is ACTIVE in the ring"
level=info ts=2024-10-21T16:19:47.382649027Z caller=module_service.go:82 msg=initialising module=querier
level=info ts=2024-10-21T16:19:47.382708407Z caller=module_service.go:82 msg=initialising module=query-frontend
level=info ts=2024-10-21T16:19:47.509533604Z caller=compactor.go:325 msg="compactor is ACTIVE in the ring"
level=info ts=2024-10-21T16:19:47.509605758Z caller=loki.go:374 msg="Loki started"
ts=2024-10-21T16:19:47.665134569Z caller=memberlist_logger.go:74 level=warn msg="Failed to resolve loki-memberlist: lookup loki-memberlist on 10.96.0.10:53: no such host"
ts=2024-10-21T16:19:50.079127563Z caller=memberlist_logger.go:74 level=warn msg="Failed to resolve loki-memberlist: lookup loki-memberlist on 10.96.0.10:53: no such host"
level=info ts=2024-10-21T16:19:50.383136189Z caller=scheduler.go:682 msg="this scheduler is in the ReplicationSet, will now accept requests."
level=info ts=2024-10-21T16:19:50.383153038Z caller=worker.go:209 msg="adding connection" addr=10.244.0.13:9095
level=info ts=2024-10-21T16:19:52.510355415Z caller=compactor.go:386 msg="this instance has been chosen to run the compactor, starting compactor"
level=info ts=2024-10-21T16:19:52.510471254Z caller=compactor.go:413 msg="waiting 10m0s for ring to stay stable and previous compactions to finish before starting compactor"
ts=2024-10-21T16:19:57.004629537Z caller=memberlist_logger.go:74 level=warn msg="Failed to resolve loki-memberlist: lookup loki-memberlist on 10.96.0.10:53: no such host"
level=info ts=2024-10-21T16:19:57.383687829Z caller=frontend_scheduler_worker.go:101 msg="adding connection to scheduler" addr=10.244.0.13:9095
ts=2024-10-21T16:20:06.329198722Z caller=memberlist_logger.go:74 level=warn msg="Failed to resolve loki-memberlist: lookup loki-memberlist on 10.96.0.10:53: no such host"
level=info ts=2024-10-21T16:20:26.313469945Z caller=memberlist_client.go:563 msg="joined memberlist cluster" reached_nodes=1
level=info ts=2024-10-21T16:20:46.373522214Z caller=table_manager.go:134 msg="uploading tables"
level=info ts=2024-10-21T16:20:46.373516266Z caller=table_manager.go:167 msg="handing over indexes to shipper"
level=info ts=2024-10-21T16:21:46.373309134Z caller=table_manager.go:167 msg="handing over indexes to shipper"
level=info ts=2024-10-21T16:21:46.373333979Z caller=table_manager.go:134 msg="uploading tables"
level=info ts=2024-10-21T16:22:46.37326311Z caller=table_manager.go:167 msg="handing over indexes to shipper"
level=info ts=2024-10-21T16:22:46.373313265Z caller=table_manager.go:134 msg="uploading tables"
level=info ts=2024-10-21T16:23:46.373076357Z caller=table_manager.go:167 msg="handing over indexes to shipper"
level=info ts=2024-10-21T16:23:46.373105818Z caller=table_manager.go:134 msg="uploading tables"
level=info ts=2024-10-21T16:24:46.364327183Z caller=table_manager.go:213 msg="syncing tables"
level=info ts=2024-10-21T16:24:46.36438415Z caller=table_manager.go:252 msg="query readiness setup completed" duration=2.437µs distinct_users_len=0
level=info ts=2024-10-21T16:24:46.37281066Z caller=table_manager.go:167 msg="handing over indexes to shipper"
level=info ts=2024-10-21T16:24:46.372826774Z caller=table_manager.go:134 msg="uploading tables"
level=info ts=2024-10-21T16:24:46.396123944Z caller=checkpoint.go:615 msg="starting checkpoint"
level=info ts=2024-10-21T16:24:46.398400982Z caller=checkpoint.go:340 msg="attempting checkpoint for" dir=/data/loki/wal/checkpoint.000000
level=info ts=2024-10-21T16:25:46.373512859Z caller=table_manager.go:167 msg="handing over indexes to shipper"
level=info ts=2024-10-21T16:25:46.373706798Z caller=table.go:319 msg="handing over indexes to shipper index_20017"
level=info ts=2024-10-21T16:25:46.373764829Z caller=table.go:335 msg="finished handing over table index_20017"
level=info ts=2024-10-21T16:25:46.373599158Z caller=table_manager.go:134 msg="uploading tables"
level=info ts=2024-10-21T16:26:25.74848395Z caller=table_manager.go:180 msg="downloading all files for table index_20017"
ts=2024-10-21T16:26:25.749497358Z caller=spanlogger.go:80 table-name=index_20017 user-id=fake org_id=fake level=info msg="downloaded index set at query time" duration=391.533µs
ts=2024-10-21T16:26:25.749646329Z caller=spanlogger.go:80 table-name=index_20017 org_id=fake level=info msg="downloaded index set at query time" duration=78.468µs
ts=2024-10-21T16:26:25.750218995Z caller=spanlogger.go:80 user=fake method=query.Label level=info org_id=fake latency=fast query_type=labels length=1h0m0s duration=3.986687ms status=200 label= throughput=0B total_bytes=0B total_entries=9
level=info ts=2024-10-21T16:26:25.751128089Z caller=metrics.go:170 component=frontend org_id=fake latency=fast query_type=labels length=1h0m0s duration=5.47663ms status=200 label= throughput=0B total_bytes=0B total_entries=9
level=info ts=2024-10-21T16:26:46.373644582Z caller=table_manager.go:167 msg="handing over indexes to shipper"
level=info ts=2024-10-21T16:26:46.373652222Z caller=table_manager.go:134 msg="uploading tables"
level=info ts=2024-10-21T16:26:46.3737907Z caller=table.go:319 msg="handing over indexes to shipper index_20017"
level=info ts=2024-10-21T16:26:46.37389818Z caller=table.go:335 msg="finished handing over table index_20017"
level=info ts=2024-10-21T16:27:14.918183363Z caller=checkpoint.go:502 msg="atomic checkpoint finished" old=/data/loki/wal/checkpoint.000000.tmp new=/data/loki/wal/checkpoint.000000
level=info ts=2024-10-21T16:27:14.918467793Z caller=checkpoint.go:573 msg="checkpoint done" time=2m28.519842335s
level=info ts=2024-10-21T16:27:46.373770168Z caller=table_manager.go:167 msg="handing over indexes to shipper"
level=info ts=2024-10-21T16:27:46.374208111Z caller=table.go:319 msg="handing over indexes to shipper index_20017"
level=info ts=2024-10-21T16:27:46.373780075Z caller=table_manager.go:134 msg="uploading tables"