# Scout GMC

This is the implementation of scout to be used at GMC Norr. The scout repo is forked separately from Clinical Genomics and can pull updates from there. This repo is separate and contains all the docker related things.

# Documentation

For documentation regarding running scout, see [Clinical Genomics version]('www.clinicalgenomics.se/scout').

# Installation and Setup

Make sure to have MongoDB running as a docker image.

## On server with internet connection
```
git clone https://ninanorgren@bitbucket.org/gmcnorr/scout-gmc.git
cd scout-gmc 
make build     # build all images
make setup     # setup database 
```

## On server without internet connection

1. Make sure to complete steps 1-7 from above first
2. Export the following images:  
    - scout v0.1
    - scout-setup v1.0 
    - scout-import v1.0
    - scout-adduser v1.0
    - scout-remove v1.0
    - scout-removeuser v1-0 
    - mongo v4.0.10  
    - python v3.6.9
3. Package the following, together with all images, into tar archive:
   - database/
   - docker-compose.yml 
   - case-handler.py
   - user-handler.py
   - Makefile
   - vault/
4. Set up images on new server
5. Change in docker-compose files to mount other folders if neccessary 

# Running scout

```
make run       # start the scout server
```

The scout interface can be found at localhost:5000 on the server (Or tunnel to localhost on computer).

## Adding/Removing users
```
Add user:
python3 user-handler.py --add --username <name> --instid <institute id> --usermail <mail> --admin <True/False>

Remove user:
python3 user-handler.py --remove --usermail <mail>
```

## Adding/Removing cases
```
Add case:
python3 case-handler.py --add --folder <path> --yaml <yamlfile>

Remove case:
python3 case-handler.py --remove --sampleid <sampleid> --instid <institute id>
```

For more details about running Scout see [Clinical Genomics documentation]('www.clinicalgenomics.se/scout')
