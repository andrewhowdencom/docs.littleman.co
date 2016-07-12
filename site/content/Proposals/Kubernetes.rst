======================================================
Adopt Kubernetes as the infrastructure management tool
======================================================

Nice things that Kubernetes does:

- Handles resource requirements & scheduling
- Complex, but not much more so for 1000 machines vs 1
- Handles service registration, node readyness check and trivial load balancing
- In built rudimentary health checking, and removal of unhealthy nodes
- Container first. 
  - Same runtime from dev to prod
- Open Source

Nice things that Kubernetes is

- Supported by Google
- Built in support from lots of other people (Prometheus, CoreOS)
- Has an excellent API. Because it appears easy to instrument around and is very well document, it's likely to get first class support from third party applications.
- Has service discovery which can be built on top of (Prometheus does this, for example)
- Has labels, which are a nice abstraction around service discovery

Nice things that Kubernetes does locally
- Doesn't need crazy proxying through NGINX to make life easier

Problems that Kubernetes solves
- How the hell do we push containers into production?
- How do we know when a container dies?
- How do we move work around when a machine needs maintenance (CoreOS randomly rebooting, for example)
- How do we upgrade containers?
- How do we get insight into what containers are consuming what resources? (CAvisor is part of the kubelet)

Problems that Kubernetes makes easier?
- Monitoring, more generally
- Automated, end to end deployments with smoke-screen testing.
- Canary deployments through multiple release tracks (multiple deployments)
