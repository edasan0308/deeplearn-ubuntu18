#ここからubuntu環境の操作 Update & Upgrade
sudo apt -y upgrade
sudo apt -y update
#対話型の処理を自動化するためのパッケージ
sudo apt -y install expect
#実行権限付加
chmod +x /var/sync/pass.sh
#パスワード変更
bash /var/sync/pass.sh
