1. download postgresql helm chart
helm dependency up 

2. create pv and pvc
postgresql volume
airflow dags volume
airflow logs volume

3. helm install
helm install --namespace airflow --name airflow -f values2.yaml .

