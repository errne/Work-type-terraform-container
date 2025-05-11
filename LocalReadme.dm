Build docker command:


Run Container with:
docker run `
    -it `
    --name my-terraform-container `
    -v "$HOME\.aws\credentials:/root/.aws/credentials" `
    -v "$HOME\.aws\config:/root/.aws/config" `
    rhel8-terraform-python2