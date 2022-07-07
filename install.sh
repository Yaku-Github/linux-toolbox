if [ -d "/home/$USER/.LinuXTweaks" ]; then
    echo -e 'LinuXTweaks detected, deleting in 5 seconds. Ctrl+C to deny'
    sleep 5
    echo 'Deleting..'
    rm -rf /home/$USER/.LinuXTweaks
    rm /home/$USER/.local/bin/linux-tweaks
else
    echo -e 'LinuXTweaks isn`t detected so installing in 5 seconds. Ctrl+C to deny'
    sleep 5
    echo 'Making LinuXTweaks directory.'
    mkdir ~/.LinuXTweaks
    sleep 0.5

    echo 'Copying java18switch module'
    cp j18sw.sh ~/.LinuXTweaks
    sleep 0.5

    echo 'Copying java17switch module'
    cp j17sw.sh ~/.LinuXTweaks
    sleep 0.5

    echo 'Copying java8switch module'
    cp j8sw.sh ~/.LinuXTweaks
    sleep 0.5

    echo 'Copying networkrepair module'
    cp ntrep.sh ~/.LinuXTweaks
    sleep 0.5

    echo 'Copying LinuXTweaks console app'
    cp linux-tweaks ~/.local/bin
    chmod 777 /home/$USER/.local/bin/linux-tweaks
fi

