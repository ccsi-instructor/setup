

# noVNC起動バッチの名前を変更することで、noVNCが起動されるのを防止する
# 80/443ポート重複を回避する
Rename-Item -Path "C:\Setup\noVNC\schtasks\Start-noVNC.cmd" -NewName "C:\Setup\noVNC\schtasks\DontExecute_Start-noVNC.cmd"


