# Sometimes it's a README fix, or something like that - which isn't relevant for
# including in a project's CHANGELOG for example
declared_trivial = github.pr_title.include? "#trivial"

# Make it more obvious that a PR is a work in progress and shouldn't be merged yet
warn("PR is classed as Work in Progress") if github.pr_title.include? "[WIP]"

# Warn when there is a big PR
warn("Big PR") if git.lines_of_code > 500

# This is for testing that the Dangerfile is actually displaying a message
#if github.pr_body.length < 5
#  fail "Please provide a summary in the Pull Request description"
#end

# Fail if [Finishes #xxxxxx] does not exist
#if git.commits.any? { |c| c.message !~ /^\[Finishes #\d+\]/ }
#  fail "Must close ticket out by providing pivotaltracker tracking info"
#end

# Make sure commits are being written for changes
#changes_exist_to_app = !git.modified_files.grep(/myapp.rb/).empty?
#unit_tests_not_updated = git.modified_files.grep(/specs/).empty?
#if changes_exist && unit_tests_not_updated
#  warn("Update unit tests please")
#end

# Commit linter
#commit_lint.check