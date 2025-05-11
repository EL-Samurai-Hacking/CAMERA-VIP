## What is EL_SAMURAI_CAM ?

EL_SAMURAI_CAM is a Tool that can grab cam shots of targeted phone's of front camera or PC's webcam by just sending a link.

## EL_SAMURAI_CAM latest Version

v3.0 is the latest version of EL_SAMURAI_CAM.

## How EL_SAMURAI_CAM Works ?

First of all SAMURAI-CAM-VIP tool host a phishing site on attacker local network. This tool works on localhost, for wan access you have to use ngrok manually to take website over the internet. Now come to the main Point, attacker simply open the tool by using terminal and generate a link, when Link is generated attacker send that link to the target. If target open the link, target ip will transfer to the attacker. After Website load, the website ask for Camera access and when target give the permission the website will take cam shots one by one and send it to the Attacker.

## Features

* Localhost and for WAN you have o setup ngrok manually
* Live target image.
* Easy to use
* Gives anonymity
* It gives you Responsive Website.
* Auto Installation (Termux).

## The Tool is for :

* Kali Linux
* Termux
* MacOS
* Ubuntu
* Perrot Sec OS
* Garuda Linux

## Requirements :

* Better Internet Connection
* 300 Storage

## Installation

To install EL_SAMURAI_CAM Tool you have to open termux :

```bash
https://github.com/EL-Samurai-Hacking/CAMERA-VIP
cd CAMERA-VIP
bash installmad.sh
bash EL_SAMURAI_CAM.sh
```

Note : installmad.sh will automatically start SAMURAI-CAM-VIP. after successfully installation and if you starting 2nd time then you have to type `SAMURAI-CAM-VIP.sh`.

## In another tab

### 1. Download ngrok 

```bash
$ curl https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -o ngrok-stable-linux-amd64.zip
```

**For other versions of ngrok visit https://ngrok.com/download**

### 2. Unzip ngrok

```bash
$ unzip ngrok-stable-linux-amd64.zip
```

### 3. Use ngrok token
As oper ngrok site. `Running this command will add your account's authtoken to your ngrok.yml file. This will give you more features and all open tunnels will be listed here in the dashboard.`

```bash
$ ./ngrok authtoken My_Token_from_ngrok.com
```

### 4. Start ngrok

**Make sure to on hotspot for android only**

```bash
$ ./ngrok http 3333
```

**Note: second time just use step 4 to start ngrok server**

## How To view The Inage?

To view to image, You have to type.

* `ls`
* `mv [image_name.png] ~/storage`

Note : You can see the image in Internal Storage.

## Language is used to Make this tool

* Bash Script
* HTML
* PHP
* JavaScript
* CSS

## Warning

**EL_SAMURAI_CAM tool is only for Educational Purpose. EL_SAMURAI_CAM Tool is the responsibility of the person uing it. There is no responsibility of the owner of EL_SAMURAI_CAM tool**

<h1 align="center">
Happy Coding
</h1>
