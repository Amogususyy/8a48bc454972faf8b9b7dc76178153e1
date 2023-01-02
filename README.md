Container to [gowarp](https://github.com/handsomefox/gowarp)
  
  [![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/new/template/jSvdQA)
# Build
```
git clone https://github.com/THEshezzee/8a48bc454972faf8b9b7dc76178153e1.git && docker build -t warp-gen 8a48bc454972faf8b9b7dc76178153e1
```
# Use
```
docker run -d -p 7999:7999 -e PORT=7999 ghcr.io/theshezzee/warp-gen:latest
```
# Check
```
curl localhost:7999
```