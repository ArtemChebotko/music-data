<div class="top">

# Design query Q2
### [◂](command:katapod.loadPage?step6){.steps} Step 7 of 13 [▸](command:katapod.loadPage?step8){.steps}
</div>

Find an album with title `Magical Mystery Tour` and year `1967`:

<details>
  <summary>Solution</summary>

```
SELECT *
FROM albums_by_title
WHERE title = 'Magical Mystery Tour'
  AND year  = 1967;
```

</details>

[continue](command:katapod.loadPage?step8){.orange_bar}
