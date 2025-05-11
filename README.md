## Make home feel like work.

Build docker command:

docker build -t mio-terraform-container .

General jist on how to run it :

docker run -it --name mio-terraform-container \
    -e AWS_ACCESS_KEY_ID="YOUR_AWS_ACCESS_KEY_ID" \
    -e AWS_SECRET_ACCESS_KEY="YOUR_AWS_SECRET_ACCESS_KEY" \
    mio-terraform-image:tag

Keep your credentials safe!
