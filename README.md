# Taiko Web (hacked)

## Setup

```bash
ipfs get -o src QmcVDMu4SH6ZujiuqG3JThM9TP8LctHoGJN9cTtg39iiu8
ipfs get -o assets QmaFh1sZW9wYqPcqDhfDPc1qrL3iyqoC3YMBDFW32EgnNd
```

## Run

```bash
docker-compose up -d --build
```

## Stop

```bash
docker-compose down
```

## Make Public With Cloudflare Tunnel

```bash
cloudflared login
cloudflared tunnel list
cloudflared tunnel create taiko
cloudflared tunnel route dns taiko taiko.example.com
cloudflared tunnel --url http://127.0.0.1:19999 --name taiko
```
