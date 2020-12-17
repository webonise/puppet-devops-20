# puppet-devops
## Devops Assignment

### TODO:

Modify the manifest environments/test/manifests/site.pp to - 

1. Create below directory structure using puppet.
```
/var/www/
└── test-app
    ├── current
    │   └── index.html
    ├── releases
    └── shared
```
2. Create a self signed certificate and add it to modules/nginx/files/ as example.com.crt and example.com.key

3. Fix the nginx configuration to match the config file testapi.example.com.conf (Additional location blocks in ssl server). Refer the Readme in nginx module for syntaxes.

4. Change the number of worker_processes to 2 in nginx.conf.

5. Test the puppet code using vagrant and resolve issues if any (Vagrantfile is present in the repo).

6. Write a script for the below problem statement, and include that script file in scripts folder/directory. 

   Problem Statement : 
	
	Find file 'new_image.json' under the folder/directory 'scripts', use that file as supplied JSON file, write a script in a language of your choice that takes 3 parameters from the user:

        1. A number that represents how long the file should stay in the bucket, after which it is deleted. Let’s call this the number of “retention_days”
        2. A prefix string for object name
        3. Path to json file
	
	Problem - Given the above inputs, your script should find
 
        -a. the total number of images which are older than the given retention_days are due for deletion. 
        -b. the total number of images( which matched Prefix String) that are older than given retention days are due for deletion

	Note:  (todays date - image creation date ) > = retention days

	For ex. -The script should take three inputs:Path to the JSON file e.g: /Downloads/images.jsonRetention days	e.g: 30Prefix String		e.g: cc-r 

	In Shell -./jsonParser.sh new_image.json 100 cc-opsTotal no. of images - ?Total no. of images with Prefix cc-ops - ?


