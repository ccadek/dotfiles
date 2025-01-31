function gtp
	set tag $argv[1]
	git tag $tag
	git push origin $tag
end
