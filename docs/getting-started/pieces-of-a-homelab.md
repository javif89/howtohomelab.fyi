---
title: The pieces of a homelab
---

## Networking

Your network will be the entrypoint to your services. Fortunately, this is the piece
that requires the least amount of hardware and effort to set up, as well as the one
that has to be touched the least once it's in place.

### Hardware

- **Router**: This could be just a mini pc with at least two cores and 8gb of ram. 
    Your router does not need to be any more powerful than that.
- **Wireless access point**: You need a WAP you can manage yourself. Unfortunately the one your ISP gives you is not enough.
    fear not though. You can acquire a wireless access point for about $120 new, or less if you buy used.
- **Switch**: Your devices need to be connected together somehow. For this you will need a managed switch.
    Number of ports and speed are up to you, but it being managed is a non-negotiable. You need to be able to
    create and manage v-lans as well as set ip addresses.

### Software

- **OPNSense**: You can choose a different router OS if you're comfortable, but we recommend OPNSense.
- **Reverse proxy**: This one depends on your level of comfort and use case, but a few options are:
    - Caddy
    - Traefik
    - Nginx

## Servers

Contrary to the image you might have in your head about a rack with tens of thin machines stacked
on top of each other, any computer can be a server. You can choose to go for mini PCs, actual
rack servers, [framework mainboards](https://frame.work/marketplace/mainboards) you're no longer
using, or a regular desktop computer.

You will need at least one server to host your services on, but more than one opens up more possibilities
in your infrastructure.

### Software

We recommend using [Proxmox](https://www.proxmox.com/en/) as your server OS to be able to spin up virtual
machines easily, but you could go bare metal as well.

## Storage

Any homelab needs to have a NAS. Matter of fact, if you have nothing else, you can run your entire homelab in
your NAS. It's important to have a robust storage solution so you can store important files with confidence.

### NAS Hardware

- **Case**: You can choose to go for a case with hotswappable drive bays and a backplane. But it's not
necessary. Any case will do.
- **Drives**: You DO need NAS/Enterprise level drives. Normal consumer drives are not meant to run 24/7.
