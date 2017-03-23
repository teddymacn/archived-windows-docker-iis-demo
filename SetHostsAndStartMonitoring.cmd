powershell -executionpolicy bypass -Command "If ($env:HOSTS) { $hosts = $env:HOSTS.Replace(':', ' ').Replace(',', '`n'); $hosts | Set-Content 'C:\Windows\System32\drivers\etc\hosts'; 'Applied hosts: ' + $hosts" }

powershell -executionpolicy bypass -Command "if ($env:env1) { (Get-Content 'c:\inetpub\wwwroot\iis-demo\web.config').replace('Dev', $env:env1) | Set-Content 'c:\inetpub\wwwroot\iis-demo\web.config' };

c:\ServiceMonitor.exe w3svc
