$pluginFile = "~\AppData\Local\nvim\autoload\plug.vim"
$initFile = "~\AppData\Local\nvim\init.vim"
$ginitFile = "~\AppData\Local\nvim\ginit.vim"
If (Test-Path $pluginFile)
{
  Write-Output "Vim-Plug already installed.. Skip to the next step."
}
Else
{
  md ~\AppData\Local\nvim\autoload
  $uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  (New-Object Net.WebClient).DownloadFile(
    $uri,
    $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
      $pluginFile
    )
  )
}

If (Test-Path "~\vimconfig")
{
  Write-Output "Configuration Path is already sym-linked."
}
Else
{
  New-Item -ItemType SymbolicLink -Path ~\vimconfig -Value '..\..\config'
}

If (Test-Path $initFile)
{
  Write-Output "init.vim is already sym-linked"
}
Else
{
  New-Item -ItemType SymbolicLink -Path ~\AppData\Local\nvim -Name init.vim -Value ~\vimconfig\init.vim
}

If (Test-Path $ginitFile)
{
  Write-Output "ginit.vim is already sym-linked"
}
Else
{
  New-Item -ItemType SymbolicLink -Path ~\AppData\Local\nvim -Name ginit.vim -Value ~\vimconfig\ginit.vim
}


