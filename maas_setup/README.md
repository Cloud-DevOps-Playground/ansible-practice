# Files to modify
update following files:
  - id_ed25519_aws.pem
    Update the file with the pem/privte id_ed25519 file contents used to connect to the server.
    In case of AWS it is the downloaded pem file contents.
  - inventory.yaml
    update
      ```
      all:
        children:
          maas-server:
            vars:
              maas_host: <update with maas server IP address>
            hosts:
              maas-host:
                ansible_host: <update with maas server IP address or FQDN>
      ```