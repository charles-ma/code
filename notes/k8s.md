1.  container orchestration: deploy / manage containers
    
2.  k8s / docker swarm / mesos (apache)
    
3.  k8s components on masters: api server; etcd (kv storage); controller (brain); scheduler;
    
4.  k8s component on workers: kubelet (agent running on workers); container runtime (e.g docker);
    
5.  minikube → single node mini k8s cluster
    
6.  kubectl → cli tool to talk to k8s clusters
    
7.  `minikube start` will use default driver(docker) to start the mini cluster
    
8.  `minikube status` status check
    
9.  `kubectl get nodes` to list nodes in the cluster
    
10.  `kubectl create deployment` `kubectl expose deployment`
    
11.  pod is the basic unit of kube app, a container can live in a pod (usually 1 : 1 mapping, but a pod may include several containers of different types)
    
12.  pod can be viewed as a group of containers sharing same storage, network namespace (inter-accessible via localhost) etc
    
13.  to interact with minikube(kubectl) [](https://minikube.sigs.k8s.io/docs/start/)[https://minikube.sigs.k8s.io/docs/start/](https://minikube.sigs.k8s.io/docs/start/)
    
14.  `minikube dashboard` can show cluster stats dashboard
    
15.  `kubectl port-forward service/hello-minikube 7080:8080` to forward local port to cluster port
    
16.  `key: value` # space is mandatory; yaml
    
17.  `-` indicates entry is an array item; yaml
    
18.  fruits: - apple - pear
    
19.  nested ‘:’ represents dictionaries
    
20.  indentation needs to align btw items (same # of spaces)
    
21.  dictionary is unordered while list is ordered in yaml
    
22.  k8s yaml definition: apiVersion; kind; metadata; spec # 4 essentials for all CRDs as well?
    
23.  replicationController vs replicaSet (a set of replicas), rSet needs a selector(to select pods) to be defined
    
24.  deployment is used to control deployment, e.g rolling deploy, pause, resume, rollback etc
    
25.  `kubectl rollout status deployment/myapp-deployment` to check rollout status
    
26.  after changing the deployment.yaml, a `kubectl apply -f deployment-definition.yaml` command will trigger a new deployment (rollout)

1. https://segmentfault.com/a/1190000039844000

2. k8s offers load balancing btw containers

3. volumes can be loaded into k8s (cloud or local)

4. incremental rollout / rollback etc (status a -> b)

5. resource mgmt, e.g each container has claimed resources (cpu, memory etc)

6. failure detection thru custom health check; auto replace failed containers

7. k8s apis have alpha/beta/stable versions https://kubernetes.io/docs/reference/using-api/#api-versioning, in general apis in stable/beta wouldn't be dropped

8. 
