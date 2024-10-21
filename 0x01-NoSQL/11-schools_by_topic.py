#!/usr/bin/env python3

'''
Where can I learn Python?
a Python function that returns the list of school
Prototype: def schools_by_topic(mongo_collection, topic):
mongo_collection will be the pymongo collection object
topic (string) will be topic searched

'''


def schools_by_topic(mongo_collection, topic):
    '''returns a list of schools having a specific topic'''
    matching_sch = []

    for school in mongo_collection.find():
        if 'topics' in school and topic in school['topics']:
            matching_sch.append(school)

    return matching_sch
