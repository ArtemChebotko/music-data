<div class="top">

# Design query Q9
### [◂](command:katapod.loadPage?step12){.steps} Step 13 of 13 [▸](command:katapod.loadPage?finish){.steps}
</div>

Find all tracks played by a user in `September 2020`; order by timestamp (desc):

<details>
  <summary>Solution</summary>

```
SELECT timestamp, album_title, album_year, number, title
FROM tracks_by_user
WHERE id = 12345678-aaaa-bbbb-cccc-123456789abc 
  AND month = '2020-09-01';
```

</details>

[continue](command:katapod.loadPage?finish){.orange_bar}
