---
title: CIDR
---

# CIDR (Classless Inter-Domain Routing)

CIDR is a modern way of writing IP networks that replaces the old Class A/B/C system.
Instead of saying “this is Class C, so it must be /24,” CIDR lets you define exactly how many IPs a network has.

It looks like this:

```
192.168.1.0/24
10.0.5.0/16
172.16.20.0/27
```

The `/number` is the important part.
It tells you how many bits of the IP are the network part and how many are left for host addresses.