#!/usr/bin/env python3

'''
a Python function that lists all documents in a collection
Prototype: def list_all(mongo_collection):
    Return an empty list if no document in the collection
    mongo_collection will be the pymongo collection object
'''


def list_all(mongo_collection):
    '''Lists all documents in the given MongoDB
    collection'''
    documents = list(mongo_collection.find({}))
    return documents
