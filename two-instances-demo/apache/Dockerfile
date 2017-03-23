FROM microsoft/windowsservercore:latest

ADD vc_redist.x64.exe /vc_redist.x64.exe
RUN /vc_redist.x64.exe /q

ADD httpd-2.4.25-x64-vc14-r1.zip /
RUN powershell -executionpolicy bypass -Command "expand-archive -Path 'c:\httpd-2.4.25-x64-vc14-r1.zip' -DestinationPath 'c:\'"

COPY conf /conf

RUN del c:\Apache24\conf\httpd.conf
RUN del c:\Apache24\conf\extra\httpd-vhosts.conf

RUN copy "c:\conf\httpd.conf" "c:\Apache24\conf\"
RUN copy "c:\conf\extra\httpd-vhosts.conf" "c:\Apache24\conf\extra\"

ENTRYPOINT ["C:\\Apache24\\bin\\httpd.exe"]
