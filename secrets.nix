let
  users = {
    mschuwalow = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJyyh8V4XE0LWQMMALbrMmyo+LqcmyXEQw6dtoVeo6PK";
  };

  systems = {
    LI-RCXM3K0F7V-MacBookPro = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPczi/LWE5s1dYKbcO1AtieP1ak8rpD1zQm34yVdwxIv";
  };
in
{
  "secrets/gpg-subkeys.age".publicKeys = [ users.mschuwalow ];
  "secrets/ssh/github_rsa.age".publicKeys = [ users.mschuwalow ];
  "secrets/ssh/truenas_rsa.age".publicKeys = [ users.mschuwalow ];
  "secrets/ssh/pihole_rsa.age".publicKeys = [ users.mschuwalow ];
}
