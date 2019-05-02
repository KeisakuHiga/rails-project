# README

## This file should contain,

1. A link (URL) to your published/App/
2. A link to your GitHub repository
	* Ensure the repo is accessible by your Educators
3. Description of your project, including,
	* Problem definition / purpose
	* Functionality / features
	* Screenshots
	* Tech stack (e.g. html, css, deployment platform, etc)
	* Instructions on how to setup, configure and use your/App/.
4. Design documentation including,
	* Design process
	* User stories
	* A workflow diagram of the user journey/s.
	* Wireframes
	* Database Entity Relationship Diagrams
5. Details of planning process including,
	* Project plan & timeline
	* Screenshots of Trello board(s)


## 23 Short Questions
1. What is the need (i.e. challenge) that you will be addressing in your project?
	
Answer: 
	The problem we are addressing is for people who want quick loans in a competitive markertplace where loans sharks compete against each other for the lowest interest rate to offer the loan requester.


2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?

Answer: 
	The problem is that users can't get decent interest rates on there loans sometimes due to going to a single place for a loan. This solves that issue as they can get multiple loan offers and review them.


3. Describe the project will you be conducting and how. your App will address the needs.

Answer: 
	The way the project works is there will be two user accounts, loan requesters and loan offereres. The loan requester puts up a "listing" of the amouunt they require, a financer will then offer there rates on the page against the other offerers. The requester then selects their favourite offer, pays the interest as a down payment then recieves the money.


4. Describe the network infrastructure the App may be based on.

Answer: 
	It will be deployed on heroku and created on ruby on rails. /NEED TO CHECK

5. *REVIST THIS AT END* Identify and describe the software to be used in your App.

Answer: 
	We are using ruby on rails with the devise gem to authenticate users, the cancancan gem for authorization. Stripe for the down payments on the interest. Faker to help seed the data as well. Bootstrap for the design.

6. Identify the database to be used in your App and provide a justification for your choice.

Answer: 
	Postgresql works well with heroku unlike other databases such as sqlite.


7. Identify and describe the production database setup (i.e. postgres instance).

Answer: 


8. Describe the architecture of your App.

Answer: 


9. Explain the different high-level components (abstractions) in your App.

Answer: 


10. Detail any third party services that your App will use.

Answer: Heroku is a ruby on rails supported hosting site that we will be using for deployment of our project. The image uploading will use AWS S3 which is amazons cloud service. For the payment structure we will be using stripe which both validates and takes credit card payments. For emailing a confirmation for sign up we will use Mailgun.


11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).

Answer: ratesetter.com.au is quite similar in that it is peer to peer lending, as does societyone.com.au and a few other p2p lenders exist as well. As far as the technology goes fiverr.com is quite similar as it also uses ruby on rails for a double sided marketplace.


12. Discuss the database relations to be implemented.

Answer: We have 3 tables. Users, Listings, offers. There are two user types, one that can post listings and one that post offers. Offers are in the listings.
Listings table has a foreign key user_id which can connect users table where offers table has two foreign keys user_id and listing_id These two keys can connect to both users tables and listings tables. 

13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.

Answer: A user has many listings and offers. Listings belongs to users. Listings have many offers. Offers belong to both a user and a listing. 


14. Provide your database schema design.

Answer: 


15. Provide User stories for your App.

Answer: On the landing page there is an option to sign up with short details about how to use. The user signs up (two options,Borrowers and Lenders that they pick) then they have the option to create a new listing and to check and update the user profile. Borrowers can only post/edit/delete listings while Lenders can post/edit/delete offers in those listings. When a borrower is satisfied with a certian offer they can select that offer, pay the interest up front then they will recieve the money from the lender who will be notified that their offer was selected.


16. Provide Wireframes for your App.

Answer: 


17. Describe the way tasks are allocated and tracked in your project.

Answer: 


18. Discuss how Agile methodology is being implemented in your project.

Answer: 


19. Provide an overview and description of your Source control process.

Answer: 


20. Provide an overview and description of your Testing process.

Answer: 


21. Discuss and analyse requirements related to information system security.

Answer: 


22. Discuss methods you will use to protect information and data.

Answer: 


23. Research what your legal obligations are in relation to handling user data.

Answer: 
