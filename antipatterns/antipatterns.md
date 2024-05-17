there are some famous patterns which used by developers while they dont know they are reducing permormance...

1-chatty io ---> chatty means talkative and chatty io is a model that is talking to another services a lot.
i/o for example can be behaivior between DB ad server
io uses cpu and enhance time for computing and using files is io but using RAM is not related to io
tip: being slow in DB is cause of using io by DB.

tip about i/o, it may we have 10 i/o so its not heavy but when 10 users use it concurrently in fact we have 100 i/o and it has overhead for us.

we have a db in io.sql
bad state: I requested to db and get 10 posta from that, now we set a for loop for this 10 posts and recieve author_id
its 11 i/o to db.
its high and may increase latency
we can use a join and one io, its better for performance.

so its better use one io query for db, we should combine our requests and call it batch(bunch)
another example we want to edit username, phone number and Id of an user, its better use one batch instead of 3 io query.

