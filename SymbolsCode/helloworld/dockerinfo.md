@rifaterdemsahin ➜ /workspaces/deliverypilot/SymbolsCode/helloworld (main) $ docker info
Client:
 Version:    27.0.3-1
 Context:    default
 Debug Mode: false
 Plugins:
  buildx: Docker Buildx (Docker Inc.)
    Version:  v0.17.1
    Path:     /usr/libexec/docker/cli-plugins/docker-buildx
  compose: Docker Compose (Docker Inc.)
    Version:  v2.29.7
    Path:     /usr/libexec/docker/cli-plugins/docker-compose

Server:
 Containers: 1
  Running: 0
  Paused: 0
  Stopped: 1
 Images: 2
 Server Version: 27.0.3-1
 Storage Driver: overlay2
  Backing Filesystem: extfs
  Supports d_type: true
  Using metacopy: false
  Native Overlay Diff: false
  userxattr: false
 Logging Driver: json-file
 Cgroup Driver: cgroupfs
 Cgroup Version: 2
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local splunk syslog
 Swarm: inactive
 Runtimes: runc io.containerd.runc.v2
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: 88c3d9bc5b5a193f40b7c14fa996d23532d6f956
 runc version: 2c9f5602f0ba3d9da1c2596322dfc4e156844890
 init version: de40ad0
 Security Options:
  apparmor
  seccomp
   Profile: builtin
  cgroupns
 Kernel Version: 6.5.0-1025-azure
 Operating System: Ubuntu 20.04.6 LTS (containerized)
 OSType: linux
 Architecture: x86_64
 CPUs: 2
 Total Memory: 7.743GiB
 Name: codespaces-94f848
 ID: 93fac988-55d7-4b3b-9845-7adbb9061a0c
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 Username: codespacesdev
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Live Restore Enabled: false

To learn which Docker repository you are connected to, you can use the following Docker command:

```sh
docker info | grep "Registry"
```

This command will display information about the Docker registry you are connected to.