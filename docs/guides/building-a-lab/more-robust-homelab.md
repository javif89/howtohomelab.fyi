---
title: Long term homelab
---

Although it doesn't take much to start self hosting, if you're planning to make this
a serious thing where you can host anything you want in the future, it's worth it to
invest in a slightly more elaborate setup.

## High level infrastructure setup

``` mermaid
flowchart TD
  database[Database]@{shape: db}
  internet[Internet]@{shape: cloud}
  NAS["NAS / Shared Storage"]
  subgraph s1 ["Server 1"]
    app1[App 1]
    app2[App 2]
  end
  subgraph s2 ["Server 2"]
    app3[App 3]
    app4[App 4]
  end

  internet --> router
  router[Router] --> switch[Switch]

  switch --> reverseProxy[Reverse Proxy]

  reverseProxy --> s1 
  reverseProxy --> s2

  app1 --> database
  app2 --> database
  app3 --> database
  app4 --> database


  app1 --> NAS
  app2 --> NAS
  app3 --> NAS
  app4 --> NAS
```

## Networking overview

You'll want to have [vLANs](../../../../homelab-topics/networking/vlans.md) to easily control and separate network traffic in your lab.

```mermaid
flowchart TD
  internet[Internet]@{shape: cloud}
  router[Router]
  switch[Switch]
  wan["Internet / External VLAN"]
  vlanInternal[Internal VLAN]
  vlanGuest[Guest VLAN]
  wap["Wireless Acess Point"]
  server1["Server 1"]
  server2["Server 2"]

  internet --> router
  wan --> internet

  router --> switch

  switch --> wan
  switch --> vlanInternal
  switch --> vlanGuest

  vlanGuest --> wap

  vlanInternal --> server1
  vlanInternal --> server2
  vlanInternal --> NAS
```

## Application infrastructure overview

The amount of servers is optional. You can have a single server running all the virtual machines.
Multiple servers are used in the diagram to showcase the possible setup.

Your servers will have virtual machines with running the applications. Any application might use
the database, shared storage, or both.

```mermaid
flowchart TD
  subgraph vm1 ["Virtual Machine 1"]
    app1["App 1"]
    app2["App 2"]
  end
  subgraph vm2 ["Virtual Machine 2"]
    app3["App 3"]
    app4["App 4"]
  end
  db["Database"]@{shape: db}
  subgraph s1 ["Server 1"]
    vm1
  end
  subgraph s2 ["Server 2"]
    vm2
    db
  end
  nas["NAS / Shared Storage"]

app1 --> db
app2 --> db
app3 --> db
app4 --> db

app1 --> nas
app3 --> nas
```