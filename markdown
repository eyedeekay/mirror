#! /usr/bin/env sh

echo "<!DOCTYPE html>"
echo "<html>"
echo "<head>"
echo "  <title>idk's home page - I2P Mirror</title>"
echo "  <link rel=\"stylesheet\" type=\"text/css\" href =\"/style.css\" />"
echo "</head>"
echo "<body>"
markdown $1
echo "  <script src=\"/script.js\" type=\"text/javascript\"></script>"
echo "</body>"
echo "</html>"