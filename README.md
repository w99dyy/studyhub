<img width="800" height="200" alt="📔 StudyHub" src="https://github.com/user-attachments/assets/a5c60fba-a813-465c-a9ce-ce0ff8177e17" />

# Introduction
Study Hub is a forum website specifically for students to ask questions about their studies and get answered.
# Key Features

<ul>
  <li>Easy to use</li>
  <li>Tags for every study subject</li>
  <li>Show all study subject posts with tags search</li>
  <li>Comments to share opinions and discuss study subjects</li>
    <li>User can create/delete/edit Post</li>
</ul>

# Screenshots
![image_alt](https://github.com/w99dyy/studyhub/blob/180fdcadd60b87890b3b0bbf1dc083cae7b4887d/metadata/images/1.png)
![image_alt](https://github.com/w99dyy/studyhub/blob/180fdcadd60b87890b3b0bbf1dc083cae7b4887d/metadata/images/2.png)
![image_alt](https://github.com/w99dyy/studyhub/blob/180fdcadd60b87890b3b0bbf1dc083cae7b4887d/metadata/images/3.png)
![image_alt](https://github.com/w99dyy/studyhub/blob/180fdcadd60b87890b3b0bbf1dc083cae7b4887d/metadata/images/4.png)

# Development
 StudyHub is built with Ruby and it's framework Ruby on Rails.
 Frontend: **HTML, CSS (Tailwind CSS)**

 ## USED GEMS

 <ul>
   <li>Devise</li>
   <li>Act-as-taggable-on</li>
   <li>shoulda-matchers, "~> 6.0"</li>
   <li>FactoryBot</li>
   <li>Rspec</li>
 </ul>

 # Requirement
Before you begin, ensure you have installed:
```
Rails 8.1.1
Ruby 3.4.7
Yarn
```

# Installation
1. Clone Repo
```
git clone https://github.com/w99dyy/studyhub
cd studyhub
```
2. Install Dependencies
```
bundle install
yarn install
```
3. Set Up Database
```
rails db:create
rails db:migrate
```
3. Add seed for testing and development `Optional`
```
rails db:seed
```

5. Start the Development Server
```
./bin/dev
```
Then visit `http://localhost:3000` in your browser.

## For testing
```
rails test
```

# Database Configuration
The project uses SQLite by default. To change databases, update `config/database.yml`.

