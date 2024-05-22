                                                        consistency
                                                --------------------------
                                                |                        |
                                             eventual                  strong

assume we have one DB and some servers and these servers are pulling and pushing data with db.
some time we must scale out this system for more users
copy this db and these servers and use the copied new system instead on one db and three servers(for example)

assume an admin deletes a post from main db, this main db must warn other dbs to delete post.
inconsistency here means we as a client try to see that deleted post from a copied db, this db warns us the post was deleted, we send new request to anotherone, because of pressure and traffic problems it takes differently to sync this changes in all dbs.
secod db shows the deleted post to us.
when we click on the post, it tells us the post was deleted beacuase the request was send to a server that be changed.

eventual consistency for example changing picture in github that may takes 5 minutes.
strong consistency is related to network .
for example push a tweet to our followers in 1 second.
