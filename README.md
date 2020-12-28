# GCP Billing and BigQuery Audit


This repository contains a Looker block for analyzing **BigQuery data access logs**. The model sits on top of a Stackdriver Logging export of BigQuery queries and data access. This allows you to effectively monitor BigQuery performance and cost at a per user level. It can be used to set up alerts to long running or high cost queries. Below we also detail a method to analyse these logs across several projects, allowing you to visualise your BigQuery organization in one place.

## Getting Started

Let's run through the steps in both the Google Cloud Platform, and in Looker, to setup the logging exports and the Looker block.

### GCP Setup

Create a BigQuery dataset for the BigQuery audit logs. Go to the Google Cloud Platform console, and select **BigQuery**, or go to [https://bigquery.cloud.google.com/](https://bigquery.cloud.google.com/). Click the drop down next to the project name and select **Create New Dataset**, set a location and click **OK**.

*Optional:* We recommend setting up a new GCP Project, purely for this purpose.

### Setting up BigQuery audit logs export

To set up the BigQuery log export do the following in a project that contains BigQuery:

1. First, you need to add an empty dataset on BigQuery where the log will be exported. Go to the Google Cloud Platform console and select **BigQuery**
2. Select your project and click on **Create Dataset**. Enter a name under "Dataset ID" (e.g. ```gcp_logs```) and click on Create Dataset
3. You will now configure the BigQuery log to be explorted into that dataset. Go to the Google Cloud Platform console and select **Logging** (in the Operations suite)
4. Click on **Logs Router** and then on **Create Sink**
5. Click on the arrow on the right of the search box, and then on **"Convert to advanced filter"**
6. In the new text box, type ```resource.type = bigquery_resource OR resource.type = bigquery_project OR resource.type = bigquery_dataset```
7. Under "Edit Sink":
  a. Under "Edit Name", enter a name (e.g. ```bigquery-sink-v1```)
  b. Under "Sink Service", select **BigQuery Sink** and click the **Use Partitioned Tables** tickbox
  c. Under "Sink Destination", select the BigQuery Dataset **that you created in step 2**
  d. Click on **Create sink**

If you got a permission error then that is perfectly normal. It is because the project you have set up the export to is different to the project you have set up the logging export in. In this case the **Service Account** which writes the logs into the **BigQuery** dataset you have created will not have permission to do so. Follow the steps below to complete the setup:

1. Go to **BigQuery** in the project the logs are exported to and click on the dropdown next to the dataset you have chosen. Click **Share Dataset**
2. Get the name of the service account by going to **Logs Router** under **Logging** in the project where you set up the logging export, and copy the **Writer Identity**
3. Add this **Writer Identity** into the **Share Dataset** window in **BigQuery** from Step 1
4. Give the account **Can edit** access, and click **Add**, and then **Save Changes**

The BigQuery audit log export should now be set up. The table will be updated throughout the day. The BigQuery audit log table is partitioned rather than date sharded.

If you have more than one project using BigQuery, repeat the steps above. All logs from different projects will be added to the same table, allowing easy querying across projects.

### !IMPORTANT!
The BigQuery Audit Logs export pulls in both the AuditData and BigQueryAuditMetadata logs. AuditData is the older version of the logs, and BigQueryAuditMetadata is the new which ADDS new columns. These are therefore unioned in the table. The lookml model pulls from the older version, but you have the ability to model the new columns into the model should you wish.
You should only use ROW COUNT with Method Name filter applied.

#### Using the Google Cloud SDK

Alternatively, if you have the Google Cloud SDK installed, you can set up the BigQuery logging using the following command (make sure you in the project you want to set up the logging for by running ```gcloud config set project <project-name>```)
```
gcloud beta logging sinks create <sink_name> bigquery.googleapis.com/projects/<project-name>/datasets/<dataset-name> --log-filter='resource.type="bigquery_resource OR resource.type = bigquery_project OR resource.type = bigquery_dataset"'
```

Note: In order to make use of this block, you must create or have a connection to the GCP Project that holds your BigQuery audit logs. Details on how to create a new BigQuery connection in Looker can be found at [here](https://docs.looker.com/setup-and-management/database-config/google-bigquery).


### What if I find an error? Suggestions for improvements?

Great! Blocks were designed for continuous improvement through the help of the entire Looker community and we'd love your input. To report an error or improvement recommendation, please reach out to Looker support via email to support@looker.com or via chat to submit a request. Please be as detailed as possible in your explanation and we'll address it as quick as we can.
