#!/usr/bin/bash
#ejecutar el jar que encola en PTF
for archivo in $( ls -p /appsintdev/digitel/applications/MQQueueXMLSender/recibidos | grep -v sh | grep -v sql | grep -v / ) 
do
	/servintdev/jdk1.6.0_25/bin/java -jar /appsintdev/digitel/applications/MQQueueXMLSender/MQQueueXMLSender.jar $archivo
	mv /appsintdev/digitel/applications/MQQueueXMLSender/recibidos/$archivo /appsintdev/digitel/applications/MQQueueXMLSender/procesados/
done
