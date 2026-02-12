use Playstore;
--1.display the entire dataset
select * from google_playstore_cleaned;

--2.Show Category and Size column from the database.
select Category , Size from google_playstore_cleaned;

--3.Show data where Genres is Art design and Content Rating is Everyone.
select * from google_playstore_cleaned where Genres='Art & Design' and Content_Rating='Everyone';

--4.Show different types of dataset.
select Type from google_playstore_cleaned group by Type ;

--1.Which genres have the highest total ratings in the Google Play Store?
select  Genres,sum(Rating) as Total_Ratings from google_playstore_cleaned group by Genres order by Total_Ratings;

--2.Which genres have the highest total ratings in the Google Play Store?
select App from google_playstore_cleaned where Rating = 5;

--3.What are the top 5 apps with the highest number of reviews?
select top 5 App, max(Reviews) as Maximum_Review from google_playstore_cleaned group by App order by Maximum_Review desc;

--4.Which are the top 5 most installed apps on the Google Play Store?
select top 5 App, max(Installs) as Maximum_Installs from google_playstore_cleaned group by App order by Maximum_Installs desc;

--5.Which apps are available for free on the Google Play Store?
select App from google_playstore_cleaned where Type = 'Free';

--6.In which months were apps last updated?
select datename(month,Last_Updated) as month_name from google_playstore_cleaned group by datename(month,Last_Updated) 
order by datename(month,Last_Updated) desc;

--7.Which apps are available for free on the Google Play Store?
select App , price from google_playstore_cleaned where Type = 'Paid' order by price desc;

--8.In which months were apps last updated?
select  Content_Rating from google_playstore_cleaned group by Content_Rating ;

--9.Show App and Installs column from database and sort in ascending order.
select App, Installs from google_playstore_cleaned order by Installs;

--10.Show different Apps in the dataset.
select App from google_playstore_cleaned group by App ;

