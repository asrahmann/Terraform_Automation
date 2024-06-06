# Terraform
This is a script written to create a EC2 inside a VPC and have all ip routings to access the instance
It also installs a copy of apache2

Diagram
+---------------------------------------------------------+
|                         VPC                             |
|                                                         |
|  +-------------------+                                  |
|  |     Subnet        |                                  |
|  |                   |                                  |
|  |   +---------+     |   +------------------+           |
|  |   |  EC2    |<------->|  Route Table     |           |
|  |   | Instance|     |   +-------^----------+           |
|  |   +----^----+     |           |                      |
|  |        |          |           |                      |
|  +-------------------+           |                      |
|           |                      |                      |
|  +--------+-------------+        |                      |
|  |  Internet Gateway    |<-------+                      |
|  +----------------------+                               |
|                                                         |
|  DynamoDB: For state-locking                            |
|  +------------------+                                   |
|  |   DynamoDB       |                                   |
|  +--------|---------+                                   |
|           |                                             |
|  +--------V---------+                                   |
|  |     S3 Bucket    |                                   |
|  +------------------+                                   |
|  S3 Bucket for version control                          |
+---------------------------------------------------------+
