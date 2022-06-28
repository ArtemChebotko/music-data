<div class="top">

# Design update U1
### [◂](command:katapod.loadPage?step10){.steps} Step 11 of 13 [▸](command:katapod.loadPage?step12){.steps}
</div>

Find tracks from album `Magical Mystery Tour` of `1967`; order by track number (asc):

<details>
  <summary>Solution</summary>

```
SELECT *
FROM tracks_by_album
WHERE album_title = 'Magical Mystery Tour'
  AND album_year  = 1967; 
```

</details>

[continue](command:katapod.loadPage?step12){.orange_bar}
