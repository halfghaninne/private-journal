# README

## Installation and viewing instructions

This project is built in **Rails 5.2** and uses **Ruby 2.5.1**

**To install the project locally,** fork and clone this repo.
> [This video tutorial](https://egghead.io/lessons/javascript-how-to-fork-and-clone-a-github-repository) gives a good step-by-step on that process if you are unfamiliar.

**To set up your local version of the project:**

- Run `bundle install` to install dependencies for the application -- some that I added are [Devise](https://rubygems.org/gems/devise) and [Pry](https://rubygems.org/gems/pry)
- Then run `rake db:migrate` to build your local database
- Followed by `rake db:seed` to populate it with seed data
- You can run `rails s` from the project directory to spin up the local server and view the project at **localhost:3000** -- it shouldn't be too interesting without logging in, though.

Once you've followed those steps, you can log in as these users:

- `shuri@wakanda.gov` _password:_ `wakandaforever`
- `hermione@magic.gov` _password:_`verysafepassword`

Experiment moving through the application signed in as each of these users, or create your own.

## My approach to the coding challenge

I decided to approach this problem by focusing on the main models and their associations because I felt that gave me the quickest path to a minimally-viable proof-of-concept. I also knew I could work quickly in this domain by making use of Rails' `scaffold` and user authentication with the Devise gem. 

### Biggest issue I encountered

One of the harder issues for me was scope creep. I generally considered the steps of my approach to be:

- Create journal entries that have a title and body, MVP functionality is CR of CRUD
- Create users that have to log in to the application
- Associate entries with users who create them
- Ensure users can only see their own entries

It's been a long time since I worked on a project that didn't have defined feature specs, and as I worked I found myself having to adjust as I went, write down ideas to come back to at a later time, and reprioritize work.

For example, I set out thinking that the only actions I needed to associate with entries for an MVP were "create" and "read", but because I used `rails scaffold` in effort to save time, I realized that it was simpler to leave the default CRUD functionality that it provides, rather than scaling back to just two actions. 

I also got distracted by some visual concerns with the application but had to set those thoughts aside as "nice-to-haves" given the steps I committed to above.

### What I learned

This project definitely reminded me about how much I love a good PM and having story definition! It also illuminated to me that I've gotten in a habit of end-to-end development, and it felt hard to put front-end and deployment concerns aside for the sake of time management. 

Practically, I had a cool moment where I forgot an important validation, wrote it in a commit and wanted to fix that commit up to a previous one and rebase. I just recently set up my personal machine using a generic setup script from thoughtbot and the editor defaults to vim, which I have avoided as my editor for git commits in the past! So, I re-learned how to cut, paste, insert, and write-quit text in vim on the fly, which felt like an accomplishment.


### What I would have done differently

When I started out, I felt that because I was spinning up from scratch, it didn't make sense to focus on TDD, and wasn't quite seeing the opportunity for testing at all -- no need to test functionality already build by Rails and Devise, right?

Once I reached the point in the application where I had multiple users, each with their own entries, I realized I had a test case that could have been TDDed, and felt a little foolish for not taking that approach or at least allocating extra time for testing after the fact. 

If I were to start over, I would have tried to determine the points in my development plan where I was introducing something akin to custom business logic, and made a point to introduce TDD there. 

I also made the schema decision that entries could have default title and body values of `""` in the case of null input, in the anticipation of future features like draft saving. I have a tendency to develop with the future in mind instead of the here-and-now, and realize there are trade-offs for different approaches.