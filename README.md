# The Webhook experience on Slack
An example of how to send logs from a file using the Slack Webhook whenever it has succeed or failed based on a string.

It gets a lot of errors when you use a variable inside the curl, that's why making the replace with `printf` before passing it to the curl, doesn't make it explode.

Using the colors you can add an awesome effect for the messages. For example:
 
Search in the last ten lines of the "important.log" the word `midichlorians` 

![imagen2](img/succeed.png)

Search in the last ten lines of the "important.log" the word `gundam` 

![imagen1](img/failed.png) 

