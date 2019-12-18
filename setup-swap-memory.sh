#HOW MUCH SWAP MEMORY DO YOU WANT TO CREATE          
SWAP_SIZE="1G"

#HOW OFTEN DO YOU WANT THIS MACHINE TO USE THE SWAPFILE?
SWAPPINESS="80"


sudo fallocate -l ${SWAP_SIZE} /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
sudo sysctl vm.swappiness=${SWAPPINESS}
echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.conf
sudo sysctl vm.vfs_cache_pressure=50
echo 'vm.vfs_cache_pressure=50' | sudo tee -a /etc/sysctl.conf
