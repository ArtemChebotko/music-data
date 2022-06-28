<div class="top">

# Create a keyspace
### [◂](command:katapod.loadPage?intro){.steps} Step 1 of 13 [▸](command:katapod.loadPage?step2){.steps}
</div>

Create the `music_data` keyspace:
```
cqlsh -e "

CREATE KEYSPACE music_data
WITH replication = {
  'class': 'NetworkTopologyStrategy', 
  'DC-Houston': 1 };"
```

[continue](command:katapod.loadPage?step2){.orange_bar}