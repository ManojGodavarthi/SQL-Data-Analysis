# SQL Data Analysis on a Local MySQL Database

This guide provides step-by-step instructions for setting up a local MySQL database and performing SQL data analysis on sample sales data obtained from Kaggle.

---

## Prerequisites

- Basic knowledge of SQL
- MySQL installed on your Windows machine
- Familiarity with MySQL Workbench for executing queries

## Downloading the Dataset from Kaggle

1. Open Kaggle and navigate to [Kaggle Sales Data Dataset](https://www.kaggle.com/datasets/kyanyoga/sample-sales-data/data).
2. Click **Download**.
3. Select **Download as Zip**.
4. Once downloaded, extract the `archive.zip` folder to access the data files.

---

## MySQL Installation and Setup (Windows)

1. Open a browser and go to the [MySQL Downloads](https://www.mysql.com/downloads/) page.
2. Select **MySQL Community (GPL) Downloads**.
3. Choose **MySQL Installer for Windows** and download the desired installer.
4. Open the downloaded installer and, if prompted, click **Yes** to allow permissions.
5. In the setup type selection, choose **Custom**.
6. Click **Next**. Install **MySQL server**, **MySQL Workbench**, and **MySQL shell**:
   - Expand **MySQL Servers** and select the server version to install.
   - Move it to **Products/Features to be installed**.
   - Expand **Applications** and choose **MySQL Workbench** and **MySQL shell**.
   - Move both to **Products/Features to be installed**.
7. Click **Next**, then **Execute** to download and install the MySQL server, MySQL Workbench, and MySQL shell.
8. Once ready to configure, click **Next**. Under **Type and Networking**, use the default settings and click **Next**.
9. For authentication, use **recommended strong password encryption**.
10. Set a **MySQL Root password** and click **Next**.
11. Use default **Windows service settings** and, under **Apply Configuration**, click **Execute**. When complete, click **Finish**.
12. Complete the installation. MySQL Workbench and MySQL Shell will launch.
13. In MySQL Workbench, select the **Local instance** and enter your password to access the query tab for writing SQL queries.
