Get-Service | Where-Object {$_.status -eq "running"} | Where-Object{$_.name -eq "fit2cloud-service"} | measure-object |  Select-Object -ExpandProperty Count
