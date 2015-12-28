#Family Christmas Lists
###CodeClimate link goes above
Welcome to Family Christmas Lists app, the everything present application to
keep track of gifting at the Holidays.

- A website for families who need to track purchases: vendors, expenses,
shipping information, item descriptions, recipients, and to view statistics
- Users can create a new account to access the app, enter
Receiver information: shipping address, age, likes and dislikes, sizes
- Allow other users read-only access to your lists
- Check out the live site at [FamilyChristmasList](https://familychristmaslist.herokuapp.com/).
Please use `some email here` and `password` to use the demo data.
- Please see the github repo [wiki](https://github.com/mmdotz/christmaslists/wiki) for this site for anticipated changes

<!-- photo of front page
![loginpage](/docs/frontpage.png?raw=true "Thriftory") -->

##Libraries, software and other tools used
- Ruby (2.2.1)
- Rails (4.2.4)
- Bootstrap for styling and javascript
- Web hosting by Heroku
- Postgresql Database
- Sass
- React for dynamic recipient search - todo
- Bcrypt for password encryption
- CSV for exporting data - todo
- Chartkick for graphing - todo

More information in the Gemfile

##Installation Steps
- Fork this Repo
- Clone this Repo
- Run `bundle install`
- Run `rake db:create`
- `rails s` to start server

##More information
- original [UMLs](/docs/UMLchristmaslists.pdf) - done
- wireframes - todo
	- [login](/docs/login.png)
	- [stats](/docs/stats.png)
   - [items by recipient](/docs/items_by_recipient.png)
   - [homepage](/docs/home.png)
   - [recipient search](/docs/search_recipients.png)
   - [add_new_item](/docs/add_item.png)
