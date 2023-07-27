> The p0 is not a real phase, it is a phase to start the host VM and prepare it

If we need to set a login, set it as `joe`, and for a password, set it as `L3et!42`.

1. Run the `Makefile_debian` to download an ISO image, create the virtual disk and start the VM.
2. Once it is started, install debian
3. Add the created user to sudoers by login as root and run this command : `usermod -aG sudo joe`
3. Run the install-requirements.sh script to install required packets for the rest of the project.  
