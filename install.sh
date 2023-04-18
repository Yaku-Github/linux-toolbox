if [ -d "/home/$USER/.LinuXTweaks" ]; then
    echo -e 'LinuXTweaks detected, deleting in 5 seconds. Ctrl+C to deny'
    sleep 5
    echo 'Deleting..'
    sudo rm -rf /home/$USER/.LinuXTweaks
    sudo rm /bin/linux-tweaks
else
    echo -e 'LinuXTweaks isn`t detected so installing in 5 seconds. Ctrl+C to deny'
    sleep 5
    echo 'Making LinuXTweaks directory.'
    sudo mkdir ~/.LinuXTweaks
    sleep 0.1

    echo 'Copying java19switch module'
    sudo cp j19sw.sh ~/.LinuXTweaks
    sleep 0.1

    echo 'Copying java17switch module'
    sudo cp j17sw.sh ~/.LinuXTweaks
    sleep 0.1

    echo 'Copying java8switch module'
    sudo cp j8sw.sh ~/.LinuXTweaks
    sleep 0.1

    echo 'Copying networkrepair module'
    sudo cp ntrep.sh ~/.LinuXTweaks
    sleep 0.1

    echo 'Copying LinuXTweaks console app'
    sudo cp linux-tweaks /bin/linux-tweaks
    sudo chmod 777 /bin/linux-tweaks
fi

