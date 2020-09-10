#crumb=$(curl -u "jenkins:1234" -s 'http://jenkins.local:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
#curl -u "jenkins:1234" -H "$crumb" -X POST http://jenkins.local:8080/job/ENV/build?delay=0sec
#curl -u "jenkins:1234" -H "$crumb" -X POST  http://jenkins.local:8080/job/backup-db-to-aws/buildWithParameters?DB_HOST=db_host&DB_NAME=testdb&BUCKET_NAME=jenkins-udemy

CRUMB=$(curl -s 'jenkins.local:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)' -u jenkins:1ffb8250a970e2c6b4feaaef1089b73c)

#curl -s -XPOST 'http://jenkins.local:8080/job/ENV/build?delay=0sec' -u jenkins:1ffb8250a970e2c6b4feaaef1089b73c -H "$CRUMB" -H "Content-Type:text/xml"

curl -s -XPOST 'http://jenkins.local:8080/job/backup-db-to-aws/buildWithParameters?DB_HOST=db_host&DB_NAME=testdb&BUCKET_NAME=jlferrete-jenkins-udemy' -u jenkins:1ffb8250a970e2c6b4feaaef1089b73c -H "$CRUMB" -H "Content-Type:text/xml"
