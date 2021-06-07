FROM ethereum/client-go:stable

COPY . .

RUN geth --datadir . init genesis.json && chmod +x /startnode.sh

EXPOSE 8545 8546 8547 30303

ENTRYPOINT ["/bin/sh", "/startnode.sh"]
