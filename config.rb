# Add dummy formats
[:css, :html, :txt].each do |format|
  Gollum::Markup.register(format, format.to_s) do |content|
    content
  end
end

Gollum::Hook.register(:post_commit, :hook_id) do |committer, sha1|
  `/usr/bin/make` # regenerate the output html/pdf on each commit
  committer.wiki.repo.git.pull # pull from github repo
  committer.wiki.repo.git.push # push to github repo
end
