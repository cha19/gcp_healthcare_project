# Technology - GCP Data Engineering Stack

Domain - Healthcare Revenue Cycle Management (RCM)

RCM is the process that hospitals use to manage the financial aspects, from the time the patient schedules an appointment till the time the provider gets paid..

Here is a simplified breakdown:

1. It starts with a patient visit:
	- patient details are collected, Insurance details..
	- This ensures provider knows who will pay for the services
	- insurance, the patient, or both 

2. Services are provided
	- daily checkups
	- treatments
	- surgeries
	- insurance

3. Billing happens: 
	- The hospital will create a bill.


4. Claims are reviewed: 
	- Insurance company review the bill
	- they might accept it, pay in full, or partial or decline.

5. Payments and followups
	- if partial payment is done by insurance company,
	- then some portion or complete thing is given by the patient...
	- and the providers will followup for the payment

6. Tracking and improvement: 
	- RCM ensures the hospital can provide quality care while also staying financially healthy.


what do we have to do as a Data Engineering

we will have data in various Sources

we need to create a pipeline, the result of this pipeline will be fact tables and dimension tables, will help the reporting team to generate the KPI



## Data Sources:

1. EMR Data source - Electronic Medical Records (Cloud SQL DB)
	- Patients
	- Providers
	- Department
	- Transactions
	- Encounter

	- take simple scenario where 1 hospital two braches
		Hospital a - hospital_a_db
		Hospital b - hospital_b_db


2. Claims Data source
	- Insurance company (Flat files)
	- folder in Datalake - Landing (monthly once)

3. CPT (Current Procedural Terminology) codes
	- standardized system used to describe medical, surgical, and diagnostic procedures and services performed by healthcare professionals


3. NPI Data - National Provider Identifier (Public API)

4. ICD Data - ICD codes are a standardized system used by health care providers map diagnosis code and description. (API)


one notes link: [link](https://onedrive.live.com/:o:/g/personal/282d1ff2e727ca8c/IgCraJudOFu_SbPElOah0ARDARQP3wjQCInzJWTOjAo_TV8?rtime=4CIN9Rt33kg&redeem=aHR0cHM6Ly8xZHJ2Lm1zL28vYy8yODJkMWZmMmU3MjdjYThjL0VxdG9tNTA0Vzc5SnM4U1U1cUhRQkVNQkZBX2ZDTkFJaWZNbFpNNk1DajlOWHc_ZT1Kd3dubHI)


	--zone="us-east1-b" \
	--network=default \

CLUSTER_NAME="dpcluster" 
REGION="us-east1" 
gcloud dataproc clusters create ${CLUSTER_NAME} \
    --region ${REGION} \
    --num-workers=2 \
    --worker-machine-type=n1-standard-2 \
    --worker-boot-disk-size=150 \
    --master-machine-type=n1-standard-2 \
    --master-boot-disk-size=150 \
    --image-version=2.0-debian10 \
	--subnet=default \
    --enable-component-gateway \
    --optional-components=JUPYTER \
    --initialization-actions=gs://goog-dataproc-initialization-actions-${REGION}/connectors/connectors.sh \
    --metadata bigquery-connector-version=1.2.0 \
    --metadata spark-bigquery-connector-version=0.21.0 

