<div class="top">

# Design query Q3
### [◂](command:katapod.loadPage?step7){.steps} Step 8 of 13 [▸](command:katapod.loadPage?step9){.steps}
</div>

Find albums with title `20 Greatest Hits`; order by year (desc):

<details>
  <summary>Solution</summary>

```
SELECT *
FROM albums_by_title
WHERE title = '20 Greatest Hits'; 
```

</details>

[continue](command:katapod.loadPage?step9){.orange_bar}
