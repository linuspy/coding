#!/usr/bin/python
#-*- coding:utf-8 -*-
from pyspark import SparkConf, SparkContext

#conf = SparkConf().setMaster("local").setAppName("My App")
conf = SparkConf().setMaster("spark://master1:7077").setAppName("My App")
sc = SparkContext(conf = conf)

lines = sc.textFile("hdfs://master1:9000/zhwiki-20170801-pages-meta-history1.xml")
pythonLines = lines.filter(lambda line: u"<title>中国" in line)
print pythonLines.count()
for line in pythonLines.take(100):
    print line
#print pythonLines.first()
