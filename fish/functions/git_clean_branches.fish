# Defined in - @ line 0
function git_clean_branches --description alias\ git_clean_branches=git\ branch\ -D\ \(git\ branch\ -vv\ \|\ grep\ \'origin/.\*:\ gone\]\'\ \|\ awk\ \'\{print\ \}\'\)
	git branch -D (git branch -vv | grep 'origin/.*: gone]' | awk '{print }') $argv;
end
