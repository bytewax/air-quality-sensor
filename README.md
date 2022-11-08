# Current Code

## To Run

#### install prereqs

```sh
pip install -r requirements.txt
```

#### Run redpanda in docker

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

#### After running through the notebook, to start the scaled dataflow in another terminal

```sh
python dataflow.py
```

#### Deploying to AWS

Assuming you have waxctl installed, your AWS cli configured and you have modified the script with your broker address. You can run your dataflow remotely on AWS with the following command.

```sh
waxctl aws deploy dataflow.py -r requirements.txt --name air-quality
```
