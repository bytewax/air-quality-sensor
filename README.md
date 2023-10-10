# Current Code

:warning: This example uses bytewax **v0.15.0**, there been a few releases after, and some of the things has changed

## To Run

#### install prereqs

```sh
pip install -r requirements.txt
```

#### Run kafka in docker

```sh
cd kafka
docker-compose up -d
```

#### Start the load data dataflow in one terminal

```sh
python load_data_ordered.py
```

#### Start the notebook

```sh
jupyter notebook
```

:warning: The jupyter kernel should have access to the same libraries which you installed earlier. If you're using virtualenv, you probably would need to install jupyter in the same virtualenv, and install matplotlib as well

Run the notebook `Dataflow-plot.ipynb`


#### After running through the notebook, to start the scaled dataflow in another terminal

```sh
python dataflow.py
```

#### Deploying to AWS

Assuming you have waxctl installed, your AWS cli configured and you have modified the script with your broker address. You can run your dataflow remotely on AWS with the following command.

```sh
waxctl aws deploy dataflow.py -r requirements.txt --name air-quality
```
