# GCP Billing and BigQuery Audit

This repository contains a Looker block for analyzing **BigQuery data access logs**. The model sits on top of a Stackdriver Logging export of BigQuery queries and data access. This allows you to effectively monitor BigQuery performance and cost at a per user level. It can be used to set up alerts to long running or high cost queries. Below we also detail a method to analyse these logs across several projects, allowing you to visualise your BigQuery organization in one place.

## Getting Started

Let's run through the steps in both the Google Cloud Platform, and in Looker, to setup the logging exports and the Looker block.

### GCP Setup

Create a BigQuery dataset for the BigQuery audit logs. Go to the Google Cloud Platform console, and select **BigQuery**, or go to https://bigquery.cloud.google.com/. Click the drop down next to the project name and select **Create New Dataset**, set a location and click **OK**.

*Optional:* We recommend setting up a new GCP Project, purely for this purpose.

### Setting up BigQuery audit logs export

To set up the BigQuery log export do the following in a project that contains BigQuery:

1. Go to the Google Cloud Platform console and select **Stackdriver Logging**
2. Click **Exports** and then **Create Export**
3. Add a **Sink Name** and select **Custom Destination** as the **Sink Service**. The **Sink Destination** should be set to ```bigquery.googleapis.com/projects/<project-name>/datasets/<dataset-name>```, adding the project and dataset names you created earlier.
4. Click **Create Sink**

If you got a permission error then that is perfectly normal. It is because the project you have set up the export to is different to the project you have set up the logging export in. In this case the **Service Account** which writes the logs into the **BigQuery** dataset you have created will not have permission to do so. Follow the steps below to complete the setup:

1. Go to **BigQuery** in the project the logs are exported to and click on the dropdown next to the dataset you have chosen. Click **Share Dataset**
2. Get the name of the service account by going to **Stackdriver Logging** in the project where you set up the logging export, then **Exports**, and copy the **Writer Identity**
3. Add this **Writer Identity** into the **Share Dataset** window in **BigQuery** from Step 1
4. Give the account **Can edit** access, and click **Add**, and then **Save Changes**

The BigQuery audit log export should now be set up. The table will be updated throughout the day. The BigQuery audit log table is date sharded rather than date partitioned.

If you have more than one project using BigQuery, repeat the steps above. All logs from different projects will be added to the same table, allowing easy querying across projects.

#### Using the Google Cloud SDK

Alternatively, if you have the Google Cloud SDK installed, you can set up the BigQuery logging using the following command (make sure you in the project you want to set up the logging for by running ```gcloud config set project <project-name>```)
```
gcloud beta logging sinks create <sink_name> bigquery.googleapis.com/projects/<project-name>/datasets/<dataset-name> --log-filter='resource.type="bigquery_resource"'
```
