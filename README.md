# Current Code

## To Run

#### install prereqs

```sh
pip install -r requirements.txt
```

#### Run redpanda in docker

```sh
docker-compose up
```

#### Start the load data dataflow in one terminal

```sh
python load_data_ordered.py
```

#### Start the dataflow in another terminal

```sh
python dataflow.py
```
