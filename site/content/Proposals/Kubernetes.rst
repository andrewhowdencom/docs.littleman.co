======================================================
Adopt Kubernetes as the infrastructure management tool
======================================================

Breif Overview into why containers
- Sealed environments, the same from dev to prod
- Introspectable, we can automatically scan for various vulnerabilities through something like clair

Nice things that Kubernetes does:

- Discovery
- Handles resource requirements & scheduling
- Complex, but not much more so for 1000 machines vs 1
- Handles service registration, node readyness check and trivial load balancing
- In built rudimentary health checking, and removal of unhealthy nodes
- Container first. 
  - Same runtime from dev to prod
- Open Source
- Supports multiple Availablity zones (http://kubernetes.io/docs/admin/multiple-zones/) and schedules pods to mitigate loss of one zone.

Nice things that Kubernetes is

- Supported by Google
- Built in support from lots of other people (Prometheus, CoreOS)
- Has an excellent API. Because it appears easy to instrument around and is very well document, it's likely to get first class support from third party applications.
- Has service discovery which can be built on top of (Prometheus does this, for example)
- Has labels, which are a nice abstraction around service discovery
- Almost stateless (all state is in etcd, everything else queries the apiserver)
- Design for handling transient workloads that can be registered as services (think: Selenium standalone containers running in parallel)

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
- How do we know what's running in production? (if everything runs on Kubernetes, we can just ask it)

Overcoming Objections
---------------------

"We're not that big"
""""""""""""""""""""

No, probably not. However, introducing Docker makes life more complex already. We must either hand solve problems such as babysitting containers (service monitoring), routing and the rest or we can use a solution that, while initially complex, scales as easily from 1 node to a few hundred. 

Plus, multi application deployment means that we're on the cusp of it being justified. As soon as more then one application is deployed (Ecommerce + product management) we get to reuse the same compute, which immediately drops the price (or allows us to buy larger compute), and mitigate risk.


References:
- http://queue.acm.org/detail.cfm?id=2898444
