
copy s3_copy.users from 's3://awssampledbuswest2/tickit/allusers_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::818675077966:role/myRedshiftRole' 
delimiter '|' region 'us-west-2';

copy s3_copy.venue from 's3://awssampledbuswest2/tickit/venue_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::818675077966:role/myRedshiftRole' 
delimiter '|' region 'us-west-2';

copy s3_copy.category from 's3://awssampledbuswest2/tickit/category_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::818675077966:role/myRedshiftRole' 
delimiter '|' region 'us-west-2';

copy s3_copy.date from 's3://awssampledbuswest2/tickit/date2008_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::818675077966:role/myRedshiftRole' 
delimiter '|' region 'us-west-2';

copy s3_copy.event from 's3://awssampledbuswest2/tickit/allevents_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::818675077966:role/myRedshiftRole' 
delimiter '|' timeformat 'YYYY-MM-DD HH:MI:SS' region 'us-west-2';

copy s3_copy.listing from 's3://awssampledbuswest2/tickit/listings_pipe.txt' 
credentials 'aws_iam_role=arn:aws:iam::818675077966:role/myRedshiftRole' 
delimiter '|' region 'us-west-2';

copy s3_copy.sales from 's3://awssampledbuswest2/tickit/sales_tab.txt'
credentials 'aws_iam_role=arn:aws:iam::818675077966:role/myRedshiftRole'
delimiter '\t' timeformat 'MM/DD/YYYY HH:MI:SS' region 'us-west-2';
