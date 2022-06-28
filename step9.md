<div class="top">

# Design query Q5
### [◂](command:katapod.loadPage?step8){.steps} Step 9 of 13 [▸](command:katapod.loadPage?step10){.steps}
</div>

Find albums from genre `Classical`; order by year (desc):

<details>
  <summary>Solution</summary>

```
SELECT *
FROM albums_by_genre
WHERE genre = 'Classical'; 
```

</details>

[continue](command:katapod.loadPage?step10){.orange_bar}
