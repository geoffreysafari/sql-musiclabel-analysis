
--creation of Table query
CREATE TABLE MusicLabelData(
song_id INT,
Artist_Name TEXT,
Revenue INT);

--inserting value one at a time query (tiresome haha)
INSERT INTO MusicLabelData
VALUES(1, 'Artist A', 65000);

INSERT INTO musiclabeldata
VALUES (2, 'Artist B', 59800);

--inserting all values at once query
INSERT INTO musiclabeldata
VALUES 
(3, 'Artist C', 292500),
(4, 'Artist D', 149500),
(5, 'Artist E', 650),
(6, 'Artist F', 65),
(7, 'Artist G', 52000),
(8, 'Artist H', 65000),
(9, 'Artist I', 6500000);

--this query selects and shows everything in the table
select * from MusicLabelData;

-- filter query using where to show Artist A
select * from MusicLabelData
where Artist_Name = 'Artist A';

-- FILTER showing revenues greator than 60000
select * from MusicLabelData 
where Revenue > 60000;

-- filter by selecting specific song id using where
select * from MusicLabelData
where song_id = 8;

--Sorting by using Order by
select * from MusicLabelData
order by revenue;

-- by default it orders ascending...from small to big

--sort by desc
select * from MusicLabelData
order by revenue desc;

-- lets combine filtering and sorting
select * from MusicLabelData
where revenue > 60000
order by revenue desc;


--selecting specific columns for cleaner output
select artist_name, revenue
From MusicLabelData
Order by revenue desc;

-- selecting specific columns, filtering and sorting
select artist_name,revenue 
from musiclabeldata
where revenue > 60000
order by revenue desc;

-- grouping data rows and suming up
-- real data analysis
-- like a pivot table
select artist_name, sum(revenue)
from musiclabeldata
group by artist_name;

--changinging sum to revenue
select artist_name, sum(revenue) as Total_revenue
from musiclabeldata
group by artist_name;

-- lets sort to see top earning artist
SELECT artist_name, SUM(revenue) AS total_revenue
FROM musiclabeldata
GROUP BY artist_name
ORDER BY total_revenue DESC;

-- number of songs per arstist using count
select artist_name, count (*)
from musiclabeldata
group by artist_name;

--lets find total revenue per song id

select song_id, sum(revenue) as totalsongrevenue
from musiclabeldata
group by song_id
order by totalsongrevenue desc;


-- business question
-- who is the biggest artist
SELECT artist_name, revenue
FROM musiclabeldata
ORDER BY revenue DESC;

--done done
