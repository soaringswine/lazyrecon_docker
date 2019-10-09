# lazyrecon_docker
Containerized version of my fork of Nahamsec's Lazyrecon.

I'm sure I can optimize the build process and I'm willing to bet I'm not following best practices. I also still need to work out the volume mount and see if its a permission problem or if its because I have a .gitignore in the lazyrecon_results folder and Docker doesn't know how to handle a non-empty folder or if it's because of all my RUN statements in the build process that happen before the volume mount.

# How to run
1) Clone the repo
2) docker build -t lazyrecon .
3) docker run -v lazyrecon_results:/home/lazyrecon_user/tools/lazyrecon/ lazyrecon -d DOMAIN.TLD
4) ???
5) Hopefully profit?!
