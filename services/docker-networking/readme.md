### Simple docker lab to showcase docker networking

In this lab, we can see how containers attached to docker networks can access resources in those networks (other containers and their services). `netshoot-front2`, cannot access anything in the other two docker networks, but `netshoot-front1` can access `netshoot-back1` and `netshoot-back2`. If no ports are opened to allow connectivity to the backend services directly, connectivity from outside the host is only possible though ports on the front containers. The front containers can access the backend services because they are attached to the same networks as the backend containers.


> [!NOTE]
> Docker network membership gives a container connectivity to that network. Published ports provide an intentional path through the host. Merely having the network attached to the host does not automatically expose it to every other container/network.'