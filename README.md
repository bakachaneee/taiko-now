# Taiko Web (hacked)

## Setup

```bash
ipfs get -o src QmeAhcyXC4u2nuRTVj1J2NaDSu9npwjNsVNT5YfusAY5Rn
ipfs get -o assets QmaFh1sZW9wYqPcqDhfDPc1qrL3iyqoC3YMBDFW32EgnNd
```

## Run

```bash
docker-compose up -d --build
```

## Stop

```bash
docekr-compose down
```

## Make Public With Cloudflare Tunnel

```bash
cloudflared login
cloudflared tunnel list
cloudflared tunnel create taiko
cloudflared tunnel route dns taiko taiko.example.com
cloudflared tunnel --url http://127.0.0.1:9999 --name taiko
```
