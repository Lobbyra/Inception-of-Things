DEBIAN_DISK := iotdebian-12.2.0-amd64-netinst.iso.qcow2
DEBIAN_URL := https://random-public-tools.s3.eu-west-3.amazonaws.com/debian-12.2.0.qcow2.tar.gz
NPROC := ${shell nproc}

.PHONY: all
all: ${DEBIAN_DISK}
	qemu-system-x86_64											\
		-m 6G													\
		-cpu host												\
		-net nic												\
		-vga virtio												\
		-enable-kvm												\
		-machine q35											\
		-smp ${NPROC}											\
		-hda ${DEBIAN_DISK}										\
		-display sdl,gl=on										\
		-net user,hostfwd=tcp::5000-:22,hostfwd=tcp::8080-:80 &


${DEBIAN_DISK}: SHELL:=/bin/bash
${DEBIAN_DISK}:
	@bash ./downloadArchive.sh
	@echo "📦 Decompressing..."
	@pv debian-12.2.0.qcow2.tar.gz | tar -zxf -

clean :
	rm -rf ${DEBIAN_DISK} debian-12.2.0.qcow2.tar.gz
	@echo "🗑️  Disk image and archive removed"

re : clean all
