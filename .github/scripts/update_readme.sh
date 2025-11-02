FREQ_RESULT=$1        # The vowel frequency result (passed from Python)
GITHUB_USER=$2        # GitHub username (passed from workflow)
TIMESTAMP=$(date)     # Current date and time

echo -e "\n[$GITHUB_USER - $FREQ_RESULT - $TIMESTAMP]" >> README.md

git config --global user.name "github-actions"
git config --global user.email "github-actions@users.noreply.github.com"

git add README.md
git commit -m "Update README with vowel frequency results"
git push
