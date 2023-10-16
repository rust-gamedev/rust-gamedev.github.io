#!/bin/sh

# This scripts parses existing news, and copies the newsletter template
# alongside the others, with its incremented id number.
# This script also replaces the TODOs related to the news id number.

read -r -d '\n' -a news <<< `find content/news/ -type d -printf "%f\n"`

last_news=`echo ${news[-1]} | sed -r s/0//`
echo $last_news
news_to_create_simple=$((last_news+1))
news_to_create=`printf "%#03s" $news_to_create_simple`

read -e -p "Do you want to create issue $news_to_create? (y/n): " choice

[[ "$choice" != [Yy]* ]] && exit

echo "accepted"

new_file="content/news/$news_to_create/index.md"

mkdir -p content/news/$news_to_create && cp -r newsletter-template.md $new_file

sed -i 's/{TODO_id}/'$news_to_create_simple'/g' $new_file