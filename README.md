# Disk Usage Monitor Script

This shell script is designed to monitor disk usage on a system and free up space if the usage exceeds a specified threshold. It uses Docker's system prune command to clean up unnecessary resources.

## How It Works

The script does the following:

1. Retrieves the current disk usage percentage.
2. Checks if the usage is above a specified threshold.
3. If above the threshold, it runs `sudo docker system prune -a -f` to free up space.

## Usage

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/yourusername/your-repo.git
   cd your-repo

2. **Edit the Cron Job:**
   Open the crontab file for editing:
   
    ```bash
   crontab -e

3. **Add the Cron Job Entry:**
   Add the following line to run the script every day at a specific time (e.g., 2:30 AM). Adjust the path accordingly.

   ```bash
   30 2 * * * /path/to/your-repo/task.sh

  Save and exit the editor.

  *Note*: You can customize the cron schedule based on your needs. The example above runs the script every day at 2:30 AM.

4. **Verify the Cron Job:**
   To verify that your cron job has been added, list the current crontab entries:

   ```bash
   crontab -l

  You should see your newly added cron job.

  Now, the script will run automatically based on the specified schedule to monitor and manage disk usage.
