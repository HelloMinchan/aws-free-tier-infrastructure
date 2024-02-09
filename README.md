# aws-free-tier-infrastructure

this is my aws free tier terraform code :)  
author : [hellominchan](https://github.com/HelloMinchan)

## create key pair

    1. ssh-keygen -t rsa -b 4096 -C "" -f "$HOME/.ssh/my-key-pair" -N ""
    2. cp "$HOME/.ssh/my-key-pair" "$HOME/.ssh/my-key-pair.pem"
    3. cd modules/key_pair
    4. tf init
    5. tf apply

## create infrastructure

    1. cd infrastructure
    2. tf init
    3. tf apply
