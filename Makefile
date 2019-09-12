
.PHONY: gen-ssl
gen-ssl:
	openssl genrsa -out server-key.pem 4096
	openssl req -new -key server-key.pem -out server-csr.pem
	openssl x509 -req -in server-csr.pem -signkey server-key.pem -out server-cert.pem

.PHONY: run
run:
	node server.js &
	node client.js &

.PHONY: run-server
run-server:
	node server.js

.PHONY: run-client
run-client:
	node client.js

