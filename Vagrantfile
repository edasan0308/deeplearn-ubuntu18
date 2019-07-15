# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # box名。
  config.vm.box = "deeplern/ubuntu18"

  # 仮想マシンのネットワーク環境設定。
  # "private_network"を指定するとホストOSからのみアクセス可
  config.vm.network "private_network", ip: "172.16.16.1"
  # "forwarded_port"を指定するとhostの8080ポートへのアクセスがguestの80ポートへ転送されます。
  # http://[ホストのIPアドレス]:8080でアクセスできるってこと。
  config.vm.network "forwarded_port", guest: 80, host: 8080

  # ホスト側とゲスト側で共有するフォルダ。この場合syncが/var/syncに対応
  config.vm.synced_folder "./sync", "/var/sync"

  # プロバイダの指定
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--uartmode1", "disconnected"]
    # GUIのONOFFはこちらから必要ない人はOFFにしてOK
    vb.gui = true    # 仮想マシンの名前
    vb.name = "Deeplern_ubuntu"
    # 仮想マシンが使うメモリ(MB)
    vb.memory = "2048"
  end
end
