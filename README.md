# Hell Triangle

----
## What it does?

This is a console application responsible to
solve a Hell triangle challenge.

I decided to use ruby not just because of my familiarity with the language, but also for their facility, documentation and built-in methods ready for situations like this.

----
## Dependencies

Well, I used **ruby 2.3.3** version and also I used a gem called **rspec** in order to create the necessary specs for it.

##How to use?

You can run in a command line calling the method class **HellTriangle.resolve** with the parameter to compose the triangle, as the following example:

    ruby -r "/hell_triangle.rb" -e "HellTriangle.resolve([[6],[3,5],[9,7,1],[4,6,8,4]])"

To run the tests, you can run:

    rspec spec/hell_triangle_spec.rb
    rspec spec/hell_triangle_validator_spec.rb
