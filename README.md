# CGate Server

This docker image runs Clipsal CGate server for use with C-Bus networks on a raspberry Pi

### Usage

Create directories for config, tag and logs. Copy your project XML file to the tag directory. Configure an `access.txt`
and copy into the config directory. 

```
docker run \
  --detach \
  --name=cgate \
  -p 20023:20023 \
  -p 20024:20024 \
  -p 20025:20025 \
  -p 20026:20026 \
  -p 20123:20123 \
  -v <path-to-config-dir>:/cgate/config \
  -v <path-to-tag-dir>:/cgate/tag \
  -v <path-to-logs-dir>:/cgate/logs \
  --restart unless-stopped \
  cnery/cgate
```
