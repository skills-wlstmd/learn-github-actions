# /etc/systemd/system/myflaskapp.service
[Unit]
Description=My Flask Application
After=network.target

[Service]
User=ec2-user
WorkingDirectory=/home/ec2-user/learn-github-actions
ExecStart=/home/ec2-user/.local/bin/flask run --host=0.0.0.0
Restart=on-failure
RestartSec=5
Environment="FLASK_APP=app.py"
Environment="FLASK_ENV=production"
Environment="PATH=/home/ec2-user/.local/bin:/usr/local/bin:/usr/bin:/bin"

[Install]
WantedBy=multi-user.target

sudo systemctl daemon-reload
sudo systemctl restart myflaskapp.service

sudo systemctl status myflaskapp.service

sudo journalctl -u myflaskapp.service -f