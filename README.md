# gke-multi-cluster-and-client-create
Create multiple gke clusters and associated kubectl GCE client machines. Use case was for kubernetes labs.

This was not created for mass distribution but with a little effort you can get it to work for your similar use case.

## How to Use

Upload the `kube-client-instance-setup.sh` script to a public url you control such as a public google cloud storage or s3 bucket. You will need the URL of this script for `bin/create-kube-client-vm`

To make e.g. 20 clusters and kubectl VM lab machines do e.g.:
```bash
for n in `seq 1 20`; do
    ./bin/create-cluster $n
done

for n in `seq 1 20`; do
    ./bin/create-kube-client-vm PROJECT_NAME SSH_PUB_KEY_PATH STARTUP_SCRIPT_URL $n
done

./bin/scp-configs kubeconfig/*.config
```
