{
 hardware.nvidia.modesetting.enable = true;
 services.xserver.videoDrivers = ["amdgpu" "nvidia"];

 
 hardware.nvidia.prime = {
   sync.enable = true;

   # Bus ID of AMD GPU from lspci in decimal format 
   amdgpuBusId = "PCI:6:0:0";

   # Bus ID of NVIDIA GPU from lspci in decimal format
   nvidiaBusId = "PCI:1:0:0";
 };
}
