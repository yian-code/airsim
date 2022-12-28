gitbook build

cd _book

git init
git add .
git commit -m "gitbook submit"
git branch -M main 
git remote add origin git@github.com:yian-code/airsim.git
git push -f origin main:gh-pages

cd -

rm -rf _book