# Pig Latin Translator

## About

A short coding exercise that converts text into Pig Latin.

## Instructions to Run Test Suite

From the command line, inside a directory that contains both `translator.rb` and `translator_test.rb` execute:

        ruby translator_test.rb

## Instructions to Run Application

At the bottom of the application, below the Translator class, add the following line:

      puts Translator.to_pig_latin('<THING YOU WANT TRANSLATED>')

Then, from the command line, inside a directory that contains both `translator.rb` and `translator_test.rb` execute:

      ruby translator.rb

Your output will appear on the command line.

## Design

The application is invoked calling the class method `self.to_pig_latin` on the Translator class.  This creates a new Translator object which immediately invokes the `to_pig_latin` method.  This setup is designed to make the translator class potentially reusable for other types of translation besides pig latin.

The `to_pig_latin` method first checks to make sure that the input is valid for translation.  If it doesn't throw a TypeError, then the method turns the input into an array of lower case strings, and maps over each string effectively converting each word into pig latin.  The resulting array is joined together as a string to produce the translation.


## Assumptions

* The application is designed only to handle alphabetic characters and spaces.  Any non-alphabetic characters will cause the application to throw a type error.

* The application converts any input to lowercase and returns a lowercase output.
