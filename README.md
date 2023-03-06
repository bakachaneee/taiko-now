# Taiko Web (hacked)

## Setup

```bash
ipfs get -o src QmeabY3mmXuSt4m7y3fQ75GUFTh1eRqvMQq8R8M23wGhAN
ipfs get -o assets QmaFh1sZW9wYqPcqDhfDPc1qrL3iyqoC3YMBDFW32EgnNd
ipfs get -o songs QmaHLZ6W3q3VrNRo8HmCpQHCyKr6iPMAYRM4nRSWQgbpe3
ipfs get -o db.json QmZW9LKQGNVwjjcnLHJhaL7hC4MMt9F26HPNq2rmrsp5FR
# for Linux
chmod -R 777 src assets songs db.json
```

## Run

```bash
docker-compose up -d --build
```

## Add Songs

```bash
docker-compose cp db.json mongo:/db.json
docker-compose exec mongo mongoimport --jsonArray --file /db.json --db taiko --collection songs
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
