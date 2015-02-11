#' @description
#' This function converts an \linkS4class{obkData} object to a json object storing outbreak data.
#'
#'
#'
#'
##################
## obkData2json ##
##################
obkData2json <- function(x){
  ## CHECK PRESENCE OF INDIVIDUAL INFORMATION ##
  if(){
    ## generate empty object ##
    warning("No individual information - returning empty object")
    return()
  }
  
  ## SHAPE DATA INTO LIST: ##
  ## $indiv1:
  ## $id
  ## $attributes
  ## $name1 $type $value
  ## $name2
  ## $name3
  ## $records
  ## $record1
  ## $id
  ## $name
  ## $date
  ## $location
  ## $attributes
  ## $attribute1
  ## $attribute2
  ## $record2
  ## $id
  ## $name
  ## $date
  ## $location
  ## $attributes
  ## $attribute1
  ## $attribute2
  ## $attribute3
  
  ##Example below


{ 
  metadata: [
      {"name": "owner", "type": "string", "value": "hackout2 team"},
      {"name": "version", "type": "int", "value": 1}
            ],
      individuals: [
          {
            "id": "person1",
            "attributes": [
                    {"name": "age", "type": "int", "value": 10},
                    {"name": "gender", "type": "string", "value": "male"},
                    {"name": "dob", "type": "date", "value": "2004-11-23"}
                          ],
            "records":[
                        {
                          "id": 1,
                          "name": "disease onset",
                          "date": "2014-12-12 00:00:00+Z",
                          "location": "",
                          "attributes":{"name":"gps_accuracy", "type":"float", "value":5.7}
                        },
                        {
                          "id": 2,
                          "name": "Hospital Admission",
                          "date": "2014-12-14 00:00:00+Z",
                          "location": {     
                          "type": "Point",
                          "coordinates": [100.1,50],
                              "crs":      {
                                            "type": "link", 
                                            "properties": {
                                            "href": "http://example.com/crs/42",
                                            "type": "proj4"
                                                          }
                                          }
                                      },
                          "attributes":{"name":"gps_accuracy", "type":"float", "value":5.7}
                        },
                        {
                          "id": 3,
                          "name": "swab",
                          "date": "2014-12-15 00:00:00+Z",
                          "location": "",
                          "attributes":{"name":"gps_accuracy", "type":"float", "value":5.7},
                                       {"name": "antibodytitre", "type": "int", "value": "345.32"}
                        },
                        {
                          "id": 4,
                          "name": "swab",
                          "date": "2014-12-16 00:00:00+Z",
                          "location": "",
                          "descriptiveLocation": "",
                        }
                    ]
      }
      {
        "id": "person2",
        "attributes": [
                  {"name": "age", "type": "int", "value": 9},
                  {"name": "sexual orientation", "type": "int", "value": "Heterosexual"},
                  {"name": "gender", "type": "string", "value": "male"}
                      ],
        "records":[
                    {
                      "id": 1,
                      "name": "disease onset",
                      "date": "2014-12-15 00:00:00+Z",
                      "location": "",
                      "attributes":{"name":"gps_accuracy", "type":"float", "value":5.3}
                    },
                    {
                      "id": 2,
                      "name": "Hospital Admission",
                      "date": "2014-12-16 00:00:00+Z",
                      "location": "",
                      "attributes":{"name":"gps_accuracy", "type":"float", "value":5.8}
                    },
                    {
                      "id": 3,
                      "name": "swab",
                      "date": "2014-12-16 04:00:00+Z",
                      "location": "",
                      "attributes":{"name":"gps_accuracy", "type":"float", "value":5.7}
                    },
                    {
                      "id": 4,
                      "name": "outcome",
                      "date": "2014-12-18 08:00:00+Z",
                      "location": "",
                      "descriptiveLocation": "",
                      "attributes":{"name":"outcome", "type":"int", "value":"died"}
                    }
                  ]
      }

      {
        "id": "person3",
        "attributes": [
                  {"name": "age", "type": "int", "value": 9},
                  {"name": "sexual orientation", "type": "string", "value": "Heterosexual"},
                  {"name": "gender", "type": "string", "value": "male"},
                  {"name": "ethnicity", "type": "string", "value": "white"}
                      ],
        "records":[
                    {
                      "id": 1,
                      "name": "disease onset",
                      "date": "2014-12-30 00:00:00+Z",
                      "location": "",
                      "attributes":{"name":"gps_accuracy", "type":"float", "value":5.3},
                                   {"name":"contacts", "type":"int", "value":4}
                    },
                    {
                      "id": 2,
                      "name": "Hospital Admission",
                      "date": "2014-12-31 08:00:00+Z",
                      "location": "",
                      "attributes":{"name":"gps_accuracy", "type":"float", "value":5.8},
                                   {"name":"contacts", "type":"int", "value":6},
                                   {"name":"duration", "type":"int", "value":3}
                    },
                    {
                      "id": 3,
                      "name": "swab",
                      "date": "2015-01-01 04:00:00+Z",
                      "location": "",
                      "attributes":{"name":"gps_accuracy", "type":"float", "value":5.7},
                                   {"name":"contacts", "type":"int", "value":1},
                                   {"name":"reinfection", "type":"int", "value":no}
                    },
                    {
                      "id": 4,
                      "name": "swab",
                      "date": "2015-01-01 16:00:00+Z",
                      "location": "",
                      "descriptiveLocation": "",
                      "attributes":{"name":"gps_accuracy", "type":"int", "value":"5.4"}
                    },
                    {
                      "id": 5,
                      "name": "outcome",
                      "date": "2014-12-18 08:00:00+Z",
                      "location": "",
                      "descriptiveLocation": "",
                      "attributes":{"name":"outcome", "type":"int", "value":"died"}
                    }
                  ]
        } 
]

## AUXIL FUNCTION TO PROCESS ONE INDIVIDUAL ##
## x: obkData
## id: individual id
getInfoOneIndiv <- function(x, id){
  ## get meta info on individual ##
  ## get list of records for this individual ##
  ## build output list ##
  ## return result ##
}
## AUXIL FUNCTION TO GENERATE ATTRIBUTES FROM NAMED VALUES ##
f1 <- function(x) toJSON(list(name=names(x), type=typeof(x), value=x))
## PROCESS INDIVIDUALS ##
## GET LIST TO BE CONVERTED ##
## CONVERT TO JSON ##
}