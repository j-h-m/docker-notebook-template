# docker-notebook-template
 
## Run jupyter notebook from a Docker container.

## Compared to pip/conda environments and VM - (my opinions)
Pros:
 - clean working environment compared to multiple virtual environments
 - container has access to host resources
 - faster than a VM
 - isolated environment gives more realistic production results (doesn't really apply to a notebook, but dependency issues tend to bubble up when you build in a bare environment often)

Cons:
 - extra steps to getting your work changes and results to host (copying files from container, I added some a script for this)
 - slower than running in a virtual environment on your machine

## How to use (if you are confused these are basic steps)
1. Copy your project files to the /src folder
2. Copy your `requirements.txt` file to /
3. Run the `run.sh` script
    - check the port setup in the docker-compose file if you have other services running - it is `9999` by default
4. Connect to your jupyter notebook
5. Customize the `copy.sh` script to pull your work out of the container when you're done
6. Stop the container with the `stop.sh` script
    - you can also remove the container with `remove.sh`