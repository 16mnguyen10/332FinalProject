"""
    Michael Nguyen
    December 8, 2020

    Project 3 - Gallery
"""

# Write an application that allows a user to:
#
#       Print records from the DB
#       Access any record based on attribute values
#       Sort a report according to art style
#
#    Produce a second report showing customers whose art preference is the same
#    as shown in any given art show. Include customer name and phone in report.

import mysql.connector

gallery = mysql.connector.connect(host="localhost", user="root",
                                  passwd="TigerRawr1", database="gallery")

# Main Menu for User(s)
print("Welcome to Michael's Gallery Database.")
print(" 1. Records of Database")
print(" 2. Specific Attributes of Attendees")
print(" 3. All Art Styles Sorted")
print(" 0. Exit")

userInput = int(input("Option: "))
galleryDB = gallery.cursor()

# Allows user to keep selecting information until user exits
# If the user selects option 1, prints out all databases
# If the user selects option 2, prints out
# If the user selects option 3, prints out all art style sorted
# If the user selects option 0, exit program
while userInput != 0:

    # This option shows all my databases to the user
    if userInput == 1:
        galleryDB.execute("show databases")
        print("Databases: ")

        for i in galleryDB:
            print(i)

        print('\n')
        print(" 1. Records of Database")
        print(" 2. Specific Attributes of Attendees")
        print(" 3. All Art Styles Sorted")
        print(" 0. Exit")

        userInput = int(input("Option: "))

    # This option displays all information based on attribute values
    elif userInput == 2:
        print('\n')
        print("Select attributes: ")
        print(" 1. Art Shows ")
        print(" 2. Art Works ")
        print(" 3. Artists ")
        # print(" 0. Return to main menu ")
        userInput2 = int(input("Option: "))

        # This option shows what art shows are available
        # Has to display a second report of customers whose preference are the same
        # Prints out the customers' ID and phone in second report
        if userInput2 == 1:
            print('\n')
            sql = "SELECT * FROM art_shows"
            galleryDB.execute(sql)

            print("Available Art Shows: ")

            for i in galleryDB:
                print(" " + i[0] + " on " + i[2] + " --- Hosted by: " + i[1])
                print("Attendees: ")

                sculpture = "Sculpture"
                pop_art = "Pop Art"
                surrealism = "Surrealism"
                conceptual_art = "Conceptual Art"

                sql = "SELECT * FROM customer"
                galleryDB.execute(sql)

                # Display those who prefer Sculptures
                print(" Sculpture Preference: ")

                for x in galleryDB:
                    if x[2] == sculpture:
                        print(" Customer ID: " + x[0] + " Telephone #: " + x[1])

                print('\n')

                # Display those who prefer Pop Art
                galleryDB.execute(sql)
                print(" Pop Art Preference: ")

                for x in galleryDB:
                    if x[2] == pop_art:
                        print(" Customer ID: " + x[0] + " Telephone #: " + x[1])

                print('\n')

                # Display those who prefer Surrealism
                galleryDB.execute(sql)
                print(" Surrealism Preference: ")

                for x in galleryDB:
                    if x[2] == surrealism:
                        print(" Customer ID: " + x[0] + " Telephone #: " + x[1])

                print('\n')

                # Display those who prefer Conceptual Art
                galleryDB.execute(sql)
                print(" Conceptual Art Preference: ")

                for x in galleryDB:
                    if x[2] == conceptual_art:
                        print(" Customer ID: " + x[0] + " Telephone #: " + x[1])

        # This option displays all the art work and information about it
        elif userInput2 == 2:
            print('\n')
            sql = "SELECT * FROM art_work"
            galleryDB.execute(sql)

            for i in galleryDB:
                print(" Art Work: " + "'" + i[0] + "' " +
                      " Created by Artist: " + i[1] +
                      " on " + i[3] +
                      " Value at: $" + str(i[5]))

        # Information about the artists
        elif userInput2 == 3:
            print('\n')
            sql = "SELECT * FROM artist"
            galleryDB.execute(sql)

            print("Artists: ")

            for i in galleryDB:
                print(" Name: " + i[0] +
                      " Telephone #: " + i[1] +
                      " Address: " + i[2] +
                      " Birthplace: " + i[3] +
                      " Age: " + str(i[4]) +
                      " Style of Art: " + i[5])

        print('\n')
        print(" 1. Records of Database")
        print(" 2. Specific Attributes of Attendees")
        print(" 3. All Art Styles Sorted")
        print(" 0. Exit")

        userInput = int(input("Option: "))

    # This option displays every art type along with the title and artist
    # in alphabetical order for the types of art
    elif userInput == 3:
        print('\n')
        sql = "SELECT * FROM art_work ORDER BY Type_of_Art"

        galleryDB.execute(sql)
        print("Art Types, Art Works, and Artist:")

        for i in galleryDB:
            print(" " + i[2] + ": --- " + "'" + i[0] +
                  "'" + " --- By Artist: " + i[1])

        print('\n')
        print(" 1. Records of Database")
        print(" 2. Specific Attributes of Attendees")
        print(" 3. All Art Styles Sorted")
        print(" 0. Exit")

        userInput = int(input("Option: "))
