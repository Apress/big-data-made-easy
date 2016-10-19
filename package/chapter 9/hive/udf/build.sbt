name := "DateConv"

version := "0.1"

organization := "nz.co.semtechsolutions"

scalaVersion := "2.10.4"

resolvers += "CDH4" at "https://repository.cloudera.com/artifactory/cloudera-repos/"

libraryDependencies += "org.apache.hadoop" %  "hadoop-core"        % "0.20.2"      % "provided"

libraryDependencies += "org.apache.hive"   %  "hive-exec"          % "0.10.0"       % "provided"
