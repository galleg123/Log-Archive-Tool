# Log-Archive-Tool
Script to archive logs to keep it clean while keeping older logs archived in a compressed fashion


# Usage
Run the script with:
./log-archive.sh <log-directory>
When executed it will rename the logs folder to logs-archive-DATE-TIME.
It will then compress the renamed folder with tar and delete the folder.
It will then create a new logs folder in its stead.

# Reacurring compression
If you want the tool to run indefinetly every e.g. 10 minutes you can set up a CRON JOB
Simply go running crontab -e and entering the line:
*/10 * * * * /path/to/script/log-archive.sh /path/to/log/directory/


## Roadmap Project
https://roadmap.sh/projects/log-archive-tool
