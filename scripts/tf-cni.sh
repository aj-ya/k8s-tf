K8S_MASTER_IP=x.x.x.x;
UNDERLAY_IP=x.x.x.x;
CONTRAIL_REPO="tungstenfabric";
CONTRAIL_RELEASE="latest";
sudo mkdir -pm 777 /var/lib/contrail/kafka-logs;
curl https://raw.githubusercontent.com/aj-ya/k8s-tf/main/tf-config-old-mod.yaml | sed "s/{{ K8S_MASTER_IP }}/$K8S_MASTER_IP/g; s/{{ CONTRAIL_REPO }}/$CONTRAIL_REPO/g; s/{{ CONTRAIL_RELEASE }}/$CONTRAIL_RELEASE/g; s/VROUTER_GATEWAY:$K8S_MASTER_IP/VROUTER_GATEWAY: $UNDERLAY_IP/g" > tf_cni.yaml
