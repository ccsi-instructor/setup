
# 管理接続作業用NWのメトリックを悪化させることで、演習用NWを優先する
# デフォルトはすべてのAdapterがMetric 10
Get-NetAdapter -Name "管理接続作業用NW" | Set-NetIPInterface -InterfaceMetric 100

