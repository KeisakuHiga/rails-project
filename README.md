# README

## Table of contents
1. [A link (URL) to the published App](#1)
2. [A link to the GitHub repository](#2)
3. [Description of the project](#3)
	* [Problem definition / purpose](#3-1)
	* [Functionality / features](#3-2)
	* [Screenshots](#3-3)
	* [Tech stack (e.g. html, css, deployment platform, etc)](#3-4)
	* [Instructions on how to setup, configure and use the App](#3-5)
4. [Design documentation](#4)
	* [Design process](#4-1)
	* [User stories](#4-2)
	* [A workflow diagram of the user journey/s](#4-3)
	* [Wireframes](#4-4)
	* [Database Entity Relationship Diagrams](#4-5)
5. [Details of planning process](#5)
	* [Project plan & timeline](#5-1)
	* [Screenshots of Trello board(s)](#5-2)
6. [Answers to the Short Answer questions](#6)

<a name="1"></a>

## 1. A link (URL) to the published App
<a href="https://sleepy-island-78175.herokuapp.com/" target="_blank">App link</a>

<a name="2"></a>

## 2. A link to the GitHub repository
<a href="https://github.com/KeisakuHiga/rails-project/tree/master" target="_blank">Github link</a>

<a name="3"></a>

## 3. Description of the project
GiveMeMoney is a loan requesting application where users can post requests for loans and other users that are lenders compete with each other to offer the best loan option which leads to lower interest rates.
<a name="3-1"></a>

### 3.1 Problem definition / purpose
The problem we are addressing is for people who want quick loans in a competitive marketplace where loans sharks compete against each other for the lowest interest rate to offer the loan requester.
<a name="3-2"></a>

### 3.2 Functionality / features
The way the project works is there will be two user accounts, loan requesters and loan offereres. The loan requester puts up a "listing" of the amouunt they require, a financer will then offer there rates on the page against the other offerers. The requester then selects their favourite offer, pays the interest as a down payment then recieves the money.
<a name="3-3"></a>

### 3.3 Screenshots
1. Hero image<br>
<img src="https://i.imgur.com/owpw4Rd.png" width="500"><br>
2. Sign up page<br>
<img src="https://i.imgur.com/WV3lZnv.png" width="500"><br>
<img src="https://i.imgur.com/O3KUgn1.png" width="500"><br>
3. Log in page<br>
<img src="https://i.imgur.com/33Wt8vc.png" width="500"><br>
4. Personal info page<br>
<img src="https://i.imgur.com/kJJR6Ff.png" width="500"><br>
<img src="https://i.imgur.com/baUazi8.png" width="500"><br>
5. Update personal info page<br>
<img src="https://i.imgur.com/sxFKD5N.png" width="500"><br>
<img src="https://i.imgur.com/Amud3nw.png" width="500"><br>
6. All loan requests page<br>
<img src="https://i.imgur.com/99RnZf2.png" width="500"><br>
7. One request page<br>
<img src="https://i.imgur.com/oAyiClO.png" width="500"><br>
<img src="https://i.imgur.com/y3XkBsu.png" width="500"><br>
(payment page)<br>
<img src="https://i.imgur.com/nVHhnhN.png" width="500"><br>
(adding offer sectoin)<br>
<img src="https://i.imgur.com/qIVOATC.png" width="500"><br>
8. Create new request page<br>
<img src="https://i.imgur.com/WGQpWJn.png" width="500"><br>
9. Update offer page<br>
<img src="https://i.imgur.com/SxKbLHo.png" width="500"><br>
10. My requests/offers page<br>
(Borrower side)<br>
<img src="https://i.imgur.com/br7FE5B.png" width="500"><br>
(Lender side)<br>
<img src="https://i.imgur.com/mP45o7l.png" width="500"><br>


<a name="3-4"></a>

### 3.4 Tech stack (e.g. html, css, deployment platform, etc)
1. HTML(ERB)
2. CSS(SCSS)
3. Bootstrap
4. Ruby
5. Ruby on rails
6. GitHub
7. [Heroku](https://www.heroku.com/)
8. [Stripe](https://stripe.com/au)
9. [AWS S3](https://aws.amazon.com/s3/)
10. [Postgresql](https://www.postgresql.org/)


<a name="3-5"></a>

### 3.5 Instructions on how to setup, configure and use the App
First the user signs up as a borrower, posts a listing and waits for offers. The other user signs up as a lender and then goes to the listing the first user made and makes an offer. The borrower user then goes back to that page and can pay the interest amount upfront to accept the loan.
<a name="4"></a>

## 4. Design documentation

<a name="4-1"></a>

### 4.1 Design process
1. Reserching the two sided-market application design
3. Choosing some design features based on the research done
2. Drawing the wireframes and deciding the app design
4. Researching useful gems and bootstrap designs to implement

<a name="4-2"></a>

### 4.2 User stories
Bob is a hardcore gambler. He went out Tuesday night to the casino. He lost all his money, his mortagage payment is due next week and he can't look his wife in the eyes. He knows this could be it for his marriage and he doesn't want to go down the same dark path his father did. He sees a google advert for a cheap loan, he knows he won't be able to pay it back but who is he to care, he needs money now or he's done for. He signs up for an account on GiveMeMoney and puts up a loan request for $3000. The amount for his mortgage payment and a bit more to gamble at the casino. Within minutes he has multiple offers for highly competive interest rates. He takes the option with the longest repayment option. He needs as long as he can to get the monkey off his back; and be able to pay back his debts. Bobs wife was none the wiser, his mortgage payment was in on time. Bob had just bought himself an extra month of relief, all thanks to GiveMeMoney.
<a name="4-3"></a>

### 4.3 A workflow diagram of the user journey/s
User clicks Sign up, enters details and decides whether to be a borrower or a lender. If they are a borrrower they then are able to post a listing and view other listings. If they are a lender they are able to then view all listings and post offers competing with other offers. Once the borrower is happy with one of the offers posted on their listing they can select that offer by paying for the interest upfront. The lender can see their offer got accepted on their offers page then they can contact the borrower to organise the transfer of funds.
<img src="https://i.imgur.com/2OdTlJH.jpg"><br>
<a name="4-4"></a>

### 4.4 Wireframes
<Hero image><br>
<img src="https://i.imgur.com/8NGc8QY.jpg" width="500"><br>

<Sign up & update user info.><br>
<img src="https://i.imgur.com/ZTyYEW6.jpg" width="500"><br>

<Log in><br>
<img src="https://i.imgur.com/IC3J2pD.jpg"  width="500"><br>

<User information><br>
<img src="https://i.imgur.com/KpTUmho.jpg"  width="500"><br>

<Requesting page><br>
<img src="https://i.imgur.com/rCssCih.jpg"  width="500"><br>



<a name="4-5"></a>

### 4.5 Database Entity Relationship Diagrams
<img src="https://i.imgur.com/MglJNx6.png" width="500"><br>

<a name="5"></a>

## 5. Details of planning process

<a name="5-1"></a>

### 5.1 Project plan & timeline
#### Week 1st
* Day 1<br>
&nbsp;&nbsp;&nbsp; - Discussing and sharing the project(application) ideas each other<br>
&nbsp;&nbsp;&nbsp; - Deciding the theme -> “Peer to Peer loan app”<br>
&nbsp;&nbsp;&nbsp; - Setting up the devolopment environment (Github, ruby version)<br>
&nbsp;&nbsp;&nbsp; - Drawing the app's wireframe roughly by handwriting<br>
* Day 2<br>
&nbsp;&nbsp;&nbsp; - Setting up the Trello boad and filling out the tasks to build a MVP for the project<br>
&nbsp;&nbsp;&nbsp; - Starting the Ruby on rails app and deploying it to Heroku with the basic contents<br>
&nbsp;&nbsp;&nbsp; - Getting the approval for the database ERD<br>
&nbsp;&nbsp;&nbsp; - Creating the application foundations ('Model', 'View', and 'Controller')<br>
* Day 3<br>
&nbsp;&nbsp;&nbsp; - Implementing the authentication feature for 'Devise' gem along with the 'cancan' gem for authorization<br>
* Day 4<br>
&nbsp;&nbsp;&nbsp; - Implementing bootstrap for design. <br>
&nbsp;&nbsp;&nbsp; - Implementing more complex functions such as 'update' and 'delete' of data<br>
* Day 5<br>
&nbsp;&nbsp;&nbsp; - Adding the payment feature 'Stripe' gem<br>
&nbsp;&nbsp;&nbsp; - Adding the image uploading feature 'AWS S3'<br>


#### Week 2nd
* Day6<br>
&nbsp;&nbsp;&nbsp; - Debugging for the payment feature function<br>
&nbsp;&nbsp;&nbsp; - Debugging for the image uploading function(part1)<br>
* Day7<br>
&nbsp;&nbsp;&nbsp; - Adding some new pages depending on user types<br>
&nbsp;&nbsp;&nbsp; - Designing the app pages with Bootstrap<br>
&nbsp;&nbsp;&nbsp; - Starting refactoring codes<br>
* Day8<br>
&nbsp;&nbsp;&nbsp; - Going through the app and finding the bugs<br>
&nbsp;&nbsp;&nbsp; - Debugging the bugs
* Day9<br>
&nbsp;&nbsp;&nbsp; - Debugging for the image uploading function(part2)<br>
&nbsp;&nbsp;&nbsp; - Using more bootstrap<br>
&nbsp;&nbsp;&nbsp; - Starting to write README.md<br>
* Day10<br>
&nbsp;&nbsp;&nbsp; - Debugging and designing more<br>
&nbsp;&nbsp;&nbsp; - Finishing README.md<br>
&nbsp;&nbsp;&nbsp; - Submitting the assignment<br>

<a name="5-2"></a>

### 5.2 Screenshots of Trello board(s)
[Link of the project Trello board](https://trello.com/b/Gi97qS4B/givememoney)<br><br>
<Apr.29><br>
<img src="https://i.imgur.com/PacJrFM.png" width="500"><br>
<Apr.30><br>
<img src="https://i.imgur.com/ek8Ix2I.png" width="500"><br>
<May.01><br>
<img src="https://i.imgur.com/CLFw5p8.png" width="500"><br>
<May.02><br>
<img src="https://i.imgur.com/3opvYZf.png" width="500"><br>
<May.03><br>
<img src="https://i.imgur.com/xwGG2ky.png" width="500"><br>
<May.06><br>
<img src="https://i.imgur.com/IDyvJKy.png" width="500"><br>
<May.07><br>
<img src="https://i.imgur.com/E0uycaT.png" width="500"><br>
<May.08><br>
<img src="https://i.imgur.com/7jEQhVe.png" width="500"><br>
<May.09><br>
<img src="https://i.imgur.com/OcPrbYX.png" width="500"><br>



## 6. Answers to the Short Answer questions
### Q1. What is the need (i.e. challenge) that you will be addressing in your project?
	
&nbsp;&nbsp;&nbsp;People need loans for various reasons. The need we are addressing is for those people to get loans at the best possible terms that work for them.

### Q2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?

&nbsp;&nbsp;&nbsp;When it comes to getting a loan it is hard to pick who to choose as there are so many options and they often don't have to give you the best rate as they are not in direct competition so you have to do your own research which can take ages. With GiveMeMoney lenders have to directly compete with each other to offer you the best rate. Borrowers can quickly and clearly see what the best option is for them and pick that rate making it a superior option to picking loans then what the current marketplace offers.


### Q3. Describe the project will you be conducting and how. your App will address the needs.

&nbsp;&nbsp;&nbsp;When it comes to getting a loan it is hard to pick who to choose as there are so many options and they often don't have to give you the best rate as they are not in direct competition so you have to do your own research which can take ages. With GiveMeMoney lenders have to directly compete with each other to offer you the best rate. Borrowers can quickly and clearly see what the best option is for them and pick that rate making it a superior option to picking loans then what the current marketplace offers.


### Q4. Describe the network infrastructure the App may be based on.

&nbsp;&nbsp;&nbsp;The network infrastructure we are using is heroku. Ruby on rais natively works with heroku so there is nothing we need to set up in the backend for the network infrastructure.

### Q5. Identify and describe the software to be used in your App.

&nbsp;&nbsp;&nbsp;We are using ruby on rails with the devise gem to authenticate users, the cancancan gem for authorization. Stripe for the payment system we will use when users pay the down payment for interest. Faker to help seed the data which helps us create test conditions. Bootstrap for the actual design of the website.

### Q6. Identify the database to be used in your App and provide a justification for your choice.

&nbsp;&nbsp;&nbsp;PostgreSQL is a powerful, open source object-relational database system that uses and extends the SQL language combined with many features that safely store and scale the most complicated data workloads. Postgresql works natively with heroku. It means we don't have to do anything additional to get our site deployed to heroku so to keep things simple we used Postgresql.


### Q7. Identify and describe the production database setup (i.e. postgres instance).

&nbsp;&nbsp;&nbsp; PostgreSQL is a powerful, open source object-relational database system that uses and extends the SQL language combined with many features that safely store and scale the most complicated data workloads. Postgresql works natively with heroku.

### Q8. Describe the architecture of your App.

&nbsp;&nbsp;&nbsp; Our app is based on ruby on rails which incorporates the MVC model. MVC stands for Model - View - Controller. They stand for the following:

Model - Handles the object data. An exmaple of this in our app is the loan request object under the name "Listing" under the file "listing.rb" Each individual listing is created based off this model class.

View - The actual pages the user sees. An example of this is the new.html.erb in the views/users/registrations folder. That contains the actual html and css styling that the user will see when creating their account.

Controller - Handles the functions that the user clicks on to create, update and delete data. An example of this is when the user creates a loan request on the loan requests page it calls the "def new" function in the listings_controller.rb


### Q9. Explain the different high-level components (abstractions) in your App.

&nbsp;&nbsp;&nbsp; Active record is a very useful abstraction as it doesn't require you to understand lower-level based sql archiecture and instead means you can write it almost in english. Form helpers also make a huge help with options like "link_to" and the like meaning you don't have to write out lots of html and css code for your view pages.


### Q10. Detail any third party services that your App will use.

&nbsp;&nbsp;&nbsp;Heroku is a ruby on rails supported hosting site that we will be using for deployment of our project. The image uploading will use AWS S3 which is amazons cloud service. For the payment structure we will be using stripe which both validates and takes credit card payments. 


### Q11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).

&nbsp;&nbsp;&nbsp;ratesetter.com.au is quite similar in that it is peer to peer lending, as does societyone.com.au and a few other p2p lenders exist as well. As far as the technology goes fiverr.com is quite similar as it also uses ruby on rails for a double-sided marketplace.


### Q12. Discuss the database relations to be implemented.

&nbsp;&nbsp;&nbsp;We have 3 tables. Users, Listings, offers. There are two user types, one that can post listings and one that post offers. Offers are in the listings.
&nbsp;&nbsp;&nbsp;Listings table has a foreign key user_id which can connect users table where offers table has two foreign keys user_id and listing_id These two keys can connect to both users tables and listings tables. 

### Q13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.

&nbsp;&nbsp;&nbsp;A user has many listings and offers. Listings belongs to users. Listings have many offers. Offers belong to both a user and a listing. 


### Q14. Provide your database schema design.

<img src="https://i.imgur.com/MglJNx6.png" width="500"><br>



### Q15. Provide User stories for your App.

&nbsp;&nbsp;&nbsp;On the landing page there is an option to sign up with short details about how to use. The user signs up (two options,Borrowers and Lenders that they pick) then they have the option to create a new listing and to check and update the user profile. Borrowers can only post/edit/delete listings while Lenders can post/edit/delete offers in those listings. When a borrower is satisfied with a certian offer they can select that offer, pay the interest up front then they will recieve the money from the lender who will be notified that their offer was selected.


### Q16. Provide Wireframes for your App.

<Hero image><br>
<img src="https://i.imgur.com/8NGc8QY.jpg" width="500"><br>

<Sign up & update user info.><br>
<img src="https://i.imgur.com/ZTyYEW6.jpg" width="500"><br>

<Log in><br>
<img src="https://i.imgur.com/IC3J2pD.jpg"  width="500"><br>

<User information><br>
<img src="https://i.imgur.com/KpTUmho.jpg"  width="500"><br>

<Requesting page><br>
<img src="https://i.imgur.com/rCssCih.jpg"  width="500"><br>


### Q17. Describe the way tasks are allocated and tracked in your project.

&nbsp;&nbsp;&nbsp;We are using trello. The way it works is we have multiple tables of what to do, what we are working on and when we have done a task we move it to a table called done. Before working we have a discussion and decide what functionality to implement next.


### Q18. Discuss how Agile methodology is being implemented in your project.

&nbsp;&nbsp;&nbsp;We are using agile every day by having a stand up in the morning to discuss what we did the day before, what the problems were and what we are doing today. We then write code quickly and test it, then upload it to github for the other person to access. We then review the code and upload to heroku to do the final test to make sure it works.


### Q19. Provide an overview and description of your Source control process.

&nbsp;&nbsp;&nbsp;We are using github for the Source control process. The way we use it is that after one of us makes a change we make a push request to github in our own branches. We then create a pull request to merge it with the master branch which the other person then reviews the code changes and goes over why they made those changes. We then merge the code and pull to our local machines.

This is the best way to do it as there is no risk to damaging the working code as we have multiple checks and balances as outlined above. This also has the benefit of keeping both of us informed to the others code changes so we are always on the same page.


### Q20. Provide an overview and description of your Testing process.

&nbsp;&nbsp;&nbsp;We have created different listings and user types in the seeds.rb file. After resetting the database after major changes we can then check manually that all the listing types work correctly and all the calculations are correct. In hindsight it would of been beneficial to include some minitests in as well to save some time as manual testing can be quite slow and tedious. 


### Q21. Discuss and analyse requirements related to information system security.

&nbsp;&nbsp;&nbsp;Since our application uses user accounts with there own permissions based off what type they are we have used devise for setting them up and protecting their info. For permissions on what certain users can access we have used cancan and if and else statements.


### Q22. Discuss methods you will use to protect information and data.

&nbsp;&nbsp;&nbsp;We have put all the private keys on the heroku database which is secure and made sure to not upload those keys to github or anywhere public using .git ignore.

### Q23. Research what your legal obligations are in relation to handling user data.

&nbsp;&nbsp;&nbsp;We need to comply with Australian data privacy laws which means thats users cannot see others user information. Passwords can also not be visible to either users or us as well and needs proper encrytion so only the user can know the password. We also can not share/sell the user data we have access to viewing without a proper legal write up which we can't afford.
