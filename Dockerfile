FROM jupyter/pyspark-notebook

COPY requirements.txt requirements.txt
COPY src/wallmart_sales.csv /home/jovyan/work/wallmart_sales.csv
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN $SPARK_HOME/bin/pyspark --packages com.databricks:spark-csv_2.11:1.5.0

RUN conda install -c conda-forge fbprophet