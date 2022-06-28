<div class="top">

# Populate tables
### [◂](command:katapod.loadPage?step2){.steps} Step 3 of 13 [▸](command:katapod.loadPage?step4){.steps}
</div>

Load data into table `performers`:
```
dsbulk load -url assets/performers.csv    \
            -k music_data          \
            -t performers          \
            -header true           \
            -logDir /tmp/logs
```

Retrieve some rows from table `performers`:
```
cqlsh -e "SELECT * FROM music_data.performers LIMIT 10;"      
```

Load data into tables `albums_by_performer`, `albums_by_title` and `albums_by_genre`:
```
dsbulk load -url assets/albums.csv        \
            -k music_data          \
            -t albums_by_performer \
            -header true           \
            -logDir /tmp/logs
            
dsbulk load -url assets/albums.csv        \
            -k music_data          \
            -t albums_by_title     \
            -header true           \
            -logDir /tmp/logs     
            
dsbulk load -url assets/albums.csv        \
            -k music_data          \
            -t albums_by_genre     \
            -header true           \
            -logDir /tmp/logs                     
```

Retrieve some rows from tables `albums_by_performer`, `albums_by_title` and `albums_by_genre`:
```
cqlsh -e "SELECT * FROM music_data.albums_by_performer LIMIT 5;"   
cqlsh -e "SELECT * FROM music_data.albums_by_title LIMIT 5;"   
cqlsh -e "SELECT * FROM music_data.albums_by_genre LIMIT 5;"                                       
```

Load data into tables `tracks_by_title` and `tracks_by_album`:
```
dsbulk load -url assets/tracks.csv        \
            -k music_data          \
            -t tracks_by_title     \
            -header true           \
            -m "0=album_title,     \
                1=album_year,      \
                2=genre,           \
                3=number,          \
                4=title"           \
            -logDir /tmp/logs
            
dsbulk load -url assets/tracks.csv        \
            -k music_data          \
            -t tracks_by_album     \
            -header true           \
            -m "0=album_title,     \
                1=album_year,      \
                2=genre,           \
                3=number,          \
                4=title"           \
            -logDir /tmp/logs
```

Retrieve some rows from tables `tracks_by_title` and `tracks_by_album`:
```
cqlsh -e "SELECT * FROM music_data.tracks_by_title LIMIT 5;"   
cqlsh -e "SELECT * FROM music_data.tracks_by_album LIMIT 5;"      
```

[continue](command:katapod.loadPage?step4){.orange_bar}