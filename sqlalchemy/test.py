#!/usr/bin/env python

import os
from sqlalchemy import *

db = "postgres://pzekkwfnaktdyb:aUbP-WhqRy9YE0gEQ7MDZlEPkY@ec2-107-20-234-127.compute-1.amazonaws.com/d5abcgv0i62jdi"

engine = create_engine(db)

print(repr(engine))
