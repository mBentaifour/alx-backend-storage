#!/usr/bin/env python3

'''
inserts a new document in a collection based on kwargs
Prototype: def insert_school(mongo_collection, **kwargs):
mongo_collection will be the pymongo collection object
Returns the new _id

'''


def insert_school(mongo_collection, **kwargs):
    '''Insert a new document in the given MongoDB collection
    based on keyword arguments'''
    new_document = kwargs
    result = mongo_collection.insert_one(new_document)
    return result.inserted_id
