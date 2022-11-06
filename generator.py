#!/usr/bin/env python3

import random
import string
import sys
from faker import Faker
import datetime


def people_data( full_name, age, passport, sex ):
    return f"('{full_name}', {age}, '{passport}', '{sex}')";

if __name__ == "__main__":
    Faker.seed(0)
    faker = Faker()
    hotel_order_num = 20
    people_num = 20
    room_num = 20
    people_names = ['Джотаро', 'Джозеф', 'Джонатан', 'Джорно', 'Джолин', 'Даниил', 'Константин', 'Илья', 'Сайтама', 'Шигео'];
    people_second_names = ['Токийский', 'Куджо', 'Мухаммед', 'Джостар']
    sexes = ['Not known', 'Male', 'Female', 'Not applicable']
    if len( sys.argv ) == 1:
        output_file_name = "gen_data.sql"
    else:
        output_file_name = sys.argv[ 1 ]

    real_names = False

    room_class = ['vip', 'standart', 'half vip']
    passports = []
    passport = 0
    with open( output_file_name, "w" ) as output_file:
        output_file.write( "insert into People (Full_name, Age, Passport, Sex) values\n" )
        for i in range( people_num ):
            if not real_names:
                cur_name = f"{random.choice( people_names )} {random.choice( people_second_names )}"
            else:
                cur_name = faker.name()
            while passports.count( ( passport := random.randint( 1000000000, 10000000000 ) ) ):
                pass
            output_file.write(
                people_data(
                    cur_name, random.randint( 1, 101 ),
                    passport, random.choice( sexes )
                )
            )
            if i != people_num - 1:
                output_file.write(",\n")
        output_file.write( ";\ninsert into Room ( Floor, `Number`, `Class`, Capacity ) values\n" )
        for i in range( room_num ):
            output_file.write(
                f"({random.randint( 1, 20 )}, {random.randint( 1, 20 )}, "
                + f"'{random.choice( room_class )}', {random.randint( 1, 4 )})"
            )
            if i != room_num - 1:
                output_file.write(",\n")
        output_file.write(";\ninsert into HotelOrder ( DateInfo, Price, Stars, person_id, room_id ) values\n")
        for i in range( hotel_order_num ):
            output_file.write(
                f"('{faker.date_time_between( '-50y', 'now' ).strftime('%Y-%m-%d %H:%M:%S')}', "
                + f"{random.randint( 1000, 1000000 )}, {random.randint( 0, 5 )}, {random.randint( 1, people_num )}, "
                + f"{random.randint( 1, room_num )})"
            )
            if i != hotel_order_num - 1:
                output_file.write(",\n")
        output_file.write( ";\n" )
