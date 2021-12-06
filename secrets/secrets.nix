let
  pk = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPNqjP6yTmuIdpTDAx6ZF/LcJNuIXWh/HwrCg8zpA90A piotr.krawiec23@gmail.com";
  acer = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPMoHkA/v5xfXxSgOWWq7Cdn2VvOi+5CJwyyabfo1w7Z";

  users = [ pk ];
  systems = [ acer ];
in
{
  "rclone.age".publicKeys = [ pk acer ];
  "restic.age".publicKeys = [ pk acer ];
}
