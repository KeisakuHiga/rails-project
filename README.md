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

<a name="3-1"></a>

### 3.1 Problem definition / purpose

<a name="3-2"></a>

### 3.2 Functionality / features

<a name="3-3"></a>

### 3.3 Screenshots

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
11. [imgur](https://imgur.com)


<a name="3-5"></a>

### 3.5 Instructions on how to setup, configure and use the App

<a name="4"></a>

## 4. Design documentation

<a name="4-1"></a>

### 4.1 Design process

<a name="4-2"></a>

### 4.2 User stories

<a name="4-3"></a>

### 4.3 A workflow diagram of the user journey/s

<a name="4-4"></a>

### 4.4 Wireframes

<a name="4-5"></a>

### 4.5 Database Entity Relationship Diagrams

<a name="5"></a>

## 5. Details of planning process

<a name="5-1"></a>

### 5.1 Project plan & timeline

<a name="5-2"></a>

### 5.2 Screenshots of Trello board(s)

![Screenshot of Trello board(Apr 29)](https://i.imgur.com/PacJrFM.png | width=50)


## 6. Answers to the Short Answer questions
### Q1. What is the need (i.e. challenge) that you will be addressing in your project?
	
&nbsp;&nbsp;&nbsp;The problem we are addressing is for people who want quick loans in a competitive markertplace where loans sharks compete against each other for the lowest interest rate to offer the loan requester.


### Q2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?

&nbsp;&nbsp;&nbsp;The problem is that users can't get decent interest rates on there loans sometimes due to going to a single place for a loan. This solves that issue as they can get multiple loan offers and review them.


### Q3. Describe the project will you be conducting and how. your App will address the needs.

&nbsp;&nbsp;&nbsp;The way the project works is there will be two user accounts, loan requesters and loan offereres. The loan requester puts up a "listing" of the amouunt they require, a financer will then offer there rates on the page against the other offerers. The requester then selects their favourite offer, pays the interest as a down payment then recieves the money.


### Q4. Describe the network infrastructure the App may be based on.
*NEED TO CHECK*

&nbsp;&nbsp;&nbsp;It will be deployed on heroku and created on ruby on rails. 

### Q5. Identify and describe the software to be used in your App.
*REVIST THIS AT END* 

&nbsp;&nbsp;&nbsp;We are using ruby on rails with the devise gem to authenticate users, the cancancan gem for authorization. Stripe for the down payments on the interest. Faker to help seed the data as well. Bootstrap for the design.

### Q6. Identify the database to be used in your App and provide a justification for your choice.

&nbsp;&nbsp;&nbsp;Postgresql works well with heroku unlike other databases such as sqlite.


### Q7. Identify and describe the production database setup (i.e. postgres instance).

&nbsp;&nbsp;&nbsp;


### Q8. Describe the architecture of your App.

&nbsp;&nbsp;&nbsp;


### Q9. Explain the different high-level components (abstractions) in your App.

&nbsp;&nbsp;&nbsp;


### Q10. Detail any third party services that your App will use.

&nbsp;&nbsp;&nbsp;Heroku is a ruby on rails supported hosting site that we will be using for deployment of our project. The image uploading will use AWS S3 which is amazons cloud service. For the payment structure we will be using stripe which both validates and takes credit card payments. For emailing a confirmation for sign up we will use Mailgun.


### Q11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).

&nbsp;&nbsp;&nbsp;ratesetter.com.au is quite similar in that it is peer to peer lending, as does societyone.com.au and a few other p2p lenders exist as well. As far as the technology goes fiverr.com is quite similar as it also uses ruby on rails for a double sided marketplace.


### Q12. Discuss the database relations to be implemented.

&nbsp;&nbsp;&nbsp;We have 3 tables. Users, Listings, offers. There are two user types, one that can post listings and one that post offers. Offers are in the listings.
&nbsp;&nbsp;&nbsp;Listings table has a foreign key user_id which can connect users table where offers table has two foreign keys user_id and listing_id These two keys can connect to both users tables and listings tables. 

### Q13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.

&nbsp;&nbsp;&nbsp;A user has many listings and offers. Listings belongs to users. Listings have many offers. Offers belong to both a user and a listing. 


### Q14. Provide your database schema design.

&nbsp;&nbsp;&nbsp;


### Q15. Provide User stories for your App.

&nbsp;&nbsp;&nbsp;On the landing page there is an option to sign up with short details about how to use. The user signs up (two options,Borrowers and Lenders that they pick) then they have the option to create a new listing and to check and update the user profile. Borrowers can only post/edit/delete listings while Lenders can post/edit/delete offers in those listings. When a borrower is satisfied with a certian offer they can select that offer, pay the interest up front then they will recieve the money from the lender who will be notified that their offer was selected.


### Q16. Provide Wireframes for your App.

&nbsp;&nbsp;&nbsp;


### Q17. Describe the way tasks are allocated and tracked in your project.

&nbsp;&nbsp;&nbsp;We are using trello. The way it works is we have multiple tables of what to do, what we are working on and when we have done a task we move it to a table called done. Before working we have a discussion and decide what functionality to implement next.


### Q18. Discuss how Agile methodology is being implemented in your project.

&nbsp;&nbsp;&nbsp;We are using agile every day by having a stand up in the morning to discuss what we did the day before, what the problems were and what we are doing today. We then write code quickly and test it, then upload it to github for the other person to access then we review the code and upload to heroku to do the final test to make sure it works.


### Q19. Provide an overview and description of your Source control process.

&nbsp;&nbsp;&nbsp;We are using github for the Source control process. The way we use it is that after one of us makes a change we make a push request to github in our own branches. We then create a pull request to merge it with the master branch which the other person then reviews the code changes and goes over why they made those changes. We then merge the code and pull to our local machines.


### Q20. Provide an overview and description of your Testing process.

&nbsp;&nbsp;&nbsp;We have created different listings and user types in the seeds.rb file. After resetting the database after major changes we can then check manually that all the listing types work correctly.


### Q21. Discuss and analyse requirements related to information system security.

&nbsp;&nbsp;&nbsp;Since our application uses user accounts with there own permissions based off what type they are we have used devise for setting them up and protecting their info. For permissions on what certain users can access we have used cancan.


### Q22. Discuss methods you will use to protect information and data.

&nbsp;&nbsp;&nbsp;We have put all the private keys on the heroku database which is secure and made sure to not upload those keys to github or anywhere public.

### Q23. Research what your legal obligations are in relation to handling user data.

&nbsp;&nbsp;&nbsp;We need to comply with Australian data privacy laws which means thats users cannot see others user information. Passwords can also not be visible to either users or us as well and needs proper encrytion so only the user can know the password.
