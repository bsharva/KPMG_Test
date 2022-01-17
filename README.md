# KPMG_TEST

1) Challenge 1 : 
A 3-tier environment is a common setup. Use a tool of your choosing/familiarity create these resources. Please remember we will not be judged on the outcome but more focusing on the approach, style and reproducibility.

Solution : Its a terroform code under folders 'module' and 'packages' in repo

Approach :

THe 3-tier environment I used is build on GCP plaform. It consists of a nginx webserver, a GCP VM instance to host nginx and Cloud SQL as a database. The code is build using terraform.

Certain assumtions : 

First we will create a boot disk image where we will define starup sript to start nginx webserver when vm is spinned up. The nginx webserver installation kit and all the required confirgiration are copied from GCS bucket and initiallize via startup script when a GCP VM is spined up.

Now coming to terrorm code : It contains modules compute-instance and cloud-sql instance. Both will have corresponding files in packages. THe packages contains .tfvar files which contain variable of dev and prod, so that help to spin up VM and sql instnaces.

The terrform apply can run manually or we have also placed jenkinsfile in repo, so that Jenkins can also be used to run the terraform code in automated manner or easy for differnet to teams to operate in case multiple VMs need to run

2) Challenge 2 :
We need to write code that will query the meta data of an instance within AWS and provide a json formatted output. The choice of language and implementation is up to you.
Bonus Points
The code allows for a particular data key to be retrieved individually

Solution :

The code is placed under challenge 2 folder and shell script 'metadata-fetch.sh' is used to get the results.

3) Challenge 3:
We have a nested object, we would like a function that you pass in the object and a key and get back the value. How this is implemented is up to you.

Solution :

The code is placed under challenge 3 folder and pyhton code 'nested.py' is used to get the results.
