@echo off

echo function success(){ >%~n0.ps1
echo	Write-Host "Password found! " $pwFuenwer$pwVierer$pwDreier$pwZweier$pwEiner >>%~n0.ps1
echo	$date = Get-Date >>%~n0.ps1
echo	$hash = Get-FileHash $zipFile -Algorithm MD5 ^| Format-List >>%~n0.ps1
echo	echo $date $hash "###PASSWORD### $pwFuenwer$pwVierer$pwDreier$pwZweier$pwEiner" ^>^>ZipPasswords.txt >>%~n0.ps1
echo	echo ------------------------------ ^>^>ZipPasswords.txt >>%~n0.ps1
echo	pause >>%~n0.ps1
echo	exit >>%~n0.ps1
echo } >>%~n0.ps1

echo function entpacken(){ >>%~n0.ps1
echo	Write-Host "trying: " $pwFuenwer$pwVierer$pwDreier$pwZweier$pwEiner >>%~n0.ps1
echo	$command = "& '$unzip' e -o$dir\ -y -tzip -p$pwFuenwer$pwVierer$pwDreier$pwZweier$pwEiner $zipFile" >>%~n0.ps1
echo	iex $command ^2^>^&1^>$null >>%~n0.ps1
echo } >>%~n0.ps1

echo function oneletter(){ >>%~n0.ps1
echo	for ($i=0; $i -lt $array.length; $i++){ >>%~n0.ps1
echo		$pwEiner = $array[$i] >>%~n0.ps1
echo		entpacken >>%~n0.ps1
echo		if ($LastExitCode -eq 0 ) {success} >>%~n0.ps1
echo	} >>%~n0.ps1
echo	twoletter >>%~n0.ps1
echo } >>%~n0.ps1

echo function twoletter(){ >>%~n0.ps1
echo	for ($j=0; $j -lt $array.length; $j++){ >>%~n0.ps1
echo		$pwZweier = $array[$j] >>%~n0.ps1
echo		for ($i=0; $i -lt $array.length; $i++){ >>%~n0.ps1
echo			$pwEiner = $array[$i] >>%~n0.ps1
echo			entpacken >>%~n0.ps1
echo			if ($LastExitCode -eq 0 ) {success} >>%~n0.ps1
echo		} >>%~n0.ps1
echo		if ($LastExitCode -eq 0 ) {success} >>%~n0.ps1
echo	} >>%~n0.ps1
echo	threeletter >>%~n0.ps1
echo } >>%~n0.ps1

echo function threeletter(){ >>%~n0.ps1
echo	for ($k=0; $k -lt $array.length; $k++){ >>%~n0.ps1
echo		$pwDreier = $array[$k] >>%~n0.ps1
echo		for ($j=0; $j -lt $array.length; $j++){ >>%~n0.ps1
echo			$pwZweier = $array[$j] >>%~n0.ps1
echo			for ($i=0; $i -lt $array.length; $i++){ >>%~n0.ps1
echo				$pwEiner = $array[$i] >>%~n0.ps1
echo				entpacken >>%~n0.ps1
echo				if ($LastExitCode -eq 0 ) {success} >>%~n0.ps1
echo			} >>%~n0.ps1
echo			if ($LastExitCode -eq 0 ) {success} >>%~n0.ps1
echo		} >>%~n0.ps1
echo		if ($LastExitCode -eq 0 ) {success} >>%~n0.ps1
echo	} >>%~n0.ps1
echo	fourletter >>%~n0.ps1
echo } >>%~n0.ps1

echo function fourletter(){ >>%~n0.ps1
echo	for ($l=0; $l -lt $array.length; $l++){ >>%~n0.ps1
echo		$pwVierer = $array[$l] >>%~n0.ps1
echo		for ($k=0; $k -lt $array.length; $k++){ >>%~n0.ps1
echo			$pwDreier = $array[$k] >>%~n0.ps1
echo			for ($j=0; $j -lt $array.length; $j++){ >>%~n0.ps1
echo				$pwZweier = $array[$j] >>%~n0.ps1
echo				for ($i=0; $i -lt $array.length; $i++){ >>%~n0.ps1
echo					$pwEiner = $array[$i] >>%~n0.ps1
echo					entpacken >>%~n0.ps1
echo					if ($LastExitCode -eq 0 ) {success} >>%~n0.ps1
echo				} >>%~n0.ps1
echo				if ($LastExitCode -eq 0 ) {success} >>%~n0.ps1
echo			} >>%~n0.ps1
echo			if ($LastExitCode -eq 0 ) {success} >>%~n0.ps1
echo		} >>%~n0.ps1
echo		if ($LastExitCode -eq 0 ) {success} >>%~n0.ps1
echo	} >>%~n0.ps1
echo	fiveletter >>%~n0.ps1
echo } >>%~n0.ps1

echo function fiveletter(){ >>%~n0.ps1
echo	for ($m=0; $m -lt $array.length; $m++){ >>%~n0.ps1
echo		$pwFuenwer = $array[$m] >>%~n0.ps1
echo		for ($l=0; $l -lt $array.length; $l++){ >>%~n0.ps1
echo			$pwVierer = $array[$l] >>%~n0.ps1
echo			for ($k=0; $k -lt $array.length; $k++){ >>%~n0.ps1
echo				$pwDreier = $array[$k] >>%~n0.ps1
echo				for ($j=0; $j -lt $array.length; $j++){ >>%~n0.ps1
echo					$pwZweier = $array[$j] >>%~n0.ps1
echo					for ($i=0; $i -lt $array.length; $i++){ >>%~n0.ps1
echo						$pwEiner = $array[$i] >>%~n0.ps1
echo						entpacken >>%~n0.ps1
echo						if ($LastExitCode -eq 0 ) {success} >>%~n0.ps1
echo					} >>%~n0.ps1
echo					if ($LastExitCode -eq 0 ) {success} >>%~n0.ps1
echo				} >>%~n0.ps1
echo				if ($LastExitCode -eq 0 ) {success} >>%~n0.ps1
echo			} >>%~n0.ps1
echo		 	if ($LastExitCode -eq 0 ) {success} >>%~n0.ps1
echo		 } >>%~n0.ps1
echo		if ($LastExitCode -eq 0 ) {success} >>%~n0.ps1
echo	} >>%~n0.ps1
echo } >>%~n0.ps1

echo $path1 = "C:\Program Files (x86)\7-Zip\7z.exe" >>%~n0.ps1
echo $validp1 = Test-Path $path1 >>%~n0.ps1
echo $path2 = "C:\Program Files\7-Zip\7z.exe" >>%~n0.ps1
echo $validp2 = Test-Path $path2 >>%~n0.ps1
echo $path3 = "C:\ProgramData\7-Zip\7z.exe" >>%~n0.ps1
echo $validp3 = Test-Path $path3 >>%~n0.ps1

echo if ($validp3 -eq $true) {$unzip = $path3} >>%~n0.ps1
echo elseif ($validp2 -eq $true) {$unzip = $path2} >>%~n0.ps1
echo elseif ($validp1 -eq $true) {$unzip = $path1} >>%~n0.ps1
echo else {Write-Host "ERROR: Cant find 7z path"; pause; exit} >>%~n0.ps1


echo $dir = (Get-Location).tostring() >>%~n0.ps1

echo Write-Host "ZIP Bruteforce cracker fuer bis zu 5-Stellige Passwoerter" >>%~n0.ps1
echo $zipFile = Read-Host -Prompt "Pfad der ZIP Datei (DRAG N DROP) " >>%~n0.ps1
echo $validZipFile = Test-Path $zipFile >>%~n0.ps1
echo if ($validZipFile -ne $true) {cls; Write-Host "ERROR: ZipDatei nicht Gefunden"; pause; exit} >>%~n0.ps1

echo $extension = (Get-Item $zipFile ).Extension >>%~n0.ps1

echo if ($extension -ne ".zip" -and $extension -ne ".7z" -and $extension -ne ".gzip" -and $extension -ne ".tar" -and $extension -ne ".wim" -and $extension -ne ".xz"){ >>%~n0.ps1
echo 	cls; Write-Host "Dateiformat wird nicht Unterstuetzt!"; pause; exit >>%~n0.ps1
echo } >>%~n0.ps1

echo Write-Host "1) abc          4) abc123" >>%~n0.ps1
echo Write-Host "2) ABC          5) ABC123" >>%~n0.ps1
echo Write-Host "3) 123          6) abcABC123" >>%~n0.ps1
echo $methode = Read-Host -Prompt "Waehle eine Methode (1-6)" >>%~n0.ps1

echo if ($methode -eq 1) {$array = @("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z")} >>%~n0.ps1
echo elseif ($methode -eq 2) {$array = @("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z")} >>%~n0.ps1
echo elseif ($methode -eq 3) {$array = @("0","1","2","3","4","5","6","7","8","9")} >>%~n0.ps1
echo elseif ($methode -eq 4) {$array = @("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9")} >>%~n0.ps1
echo elseif ($methode -eq 5) {$array = @("A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9")} >>%~n0.ps1
echo elseif ($methode -eq 6) {$array = @("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","0","1","2","3","4","5","6","7","8","9")} >>%~n0.ps1
echo else {cls; Write-Host "ERROR: Ungueltige Eingabe!"; pause; exit} >>%~n0.ps1

echo $pwEiner = "" >>%~n0.ps1
echo $pwZweier ="" >>%~n0.ps1
echo $pwDreier ="" >>%~n0.ps1
echo $pwVierer ="" >>%~n0.ps1
echo $pwFuenwer ="" >>%~n0.ps1


echo $minlen = Read-Host -Prompt "Minimale laenge des Passworts (1-5) " >>%~n0.ps1
echo if ($minlen -eq 1) {oneletter} >>%~n0.ps1
echo elseif ($minlen -eq 2) {twoletter} >>%~n0.ps1
echo elseif ($minlen -eq 3) {threeletter} >>%~n0.ps1
echo elseif ($minlen -eq 4) {fourletter} >>%~n0.ps1
echo elseif ($minlen -eq 5) {fiveletter} >>%~n0.ps1
echo else {cls; Write-Host "Ungueltige Eingabe!"; pause; exit} >>%~n0.ps1


echo Write-Host "Cant find Password" >>%~n0.ps1
echo pause >>%~n0.ps1
echo exit >>%~n0.ps1

PowerShell.exe -ExecutionPolicy Bypass -Command "& '%~dpn0.ps1'"

