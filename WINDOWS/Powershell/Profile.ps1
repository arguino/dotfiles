$thoughts_folder = "D:\alone\Documents\thoughts"

function Go-To-Thoughts { cd D:\alone\Documents\thoughts } 
Set-Alias tho Go-To-Thoughts

# GIT

function Git-Pull { git pull } 
Set-Alias gpl Git-Pull

function Git-Push { git push } 
Set-Alias gpush Git-Push

function Git-Push-FWL { git push --force-with-lease } 
Set-Alias gpfwl Git-Push-FWL

function Git-Add-All { git add . } 
Set-Alias gad Git-Add-All

function Git-Commit-Amend { git commit --amend }
Set-Alias gca Git-Commit-Amend

function Git-Log { git log }
Set-Alias gcl Git-Log

function Git-Status { git status }
Set-Alias gs Git-Status

function Git-Commit-Today { 
	$Today = Get-Date -Format "yyyy-MM-dd"
	git commit -m $Today
}
Set-Alias gct Git-Commit-Today


function New-Daily-Entry-Template {
	$Today = Get-Date -Format "yyyy-MM-dd"
	$TargetPath = -join($thoughts_folder,"\template.md")
	$DestinationPath = -join($thoughts_folder,"\lifelogs\", $Today, ".md")
	if(-not (test-path $DestinationPath))
	{
		cp -Path $TargetPath -Destination $DestinationPath
	}
	nvim $DestinationPath
}
Set-Alias llt New-Daily-Entry-Template

function New-Daily-Entry {
	$Today = Get-Date -Format "yyyy-MM-dd"
	nvim "$thoughts_folder\lifelogs\$Today.md"
}
Set-Alias ll New-Daily-Entry

