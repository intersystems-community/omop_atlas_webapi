# omop_atlas_webapi

## Getting started

1. Download a project using command:
   ```
   git clone https://github.com/intersystems-community/omop_atlas_webapi.git
   ```
2. Merge parts of compressed IRIS.DAT archives and CSV files:
   ```
   cd omop_atlas_webapi/iris/
   cat data.tar.gz.parta* > data.tar.gz
   cat db/irisapp.tar.gz.parta* > db/irisapp.tar.gz
   ```
3. In the following files, replace the IP address `192.168.1.8` with the IP adress of the PC where you launch this container. _DO NOT use localhost or 127.0.0.1!_

   - [ ] /webapi/pom.xml
   - [ ] /atlas/docker/config-local.js
   - [ ] /atlas/js/config/app.js

4. Build the container and launch it:

   ```
   docker-compose build --no-cache
   docker-compose up
   ```

   > Building may take long time and it depends on the performance of host computer. Wait for a couple of minutes after the launch for the initialisation of container.

5. Atlas will be available here `http://<your.ip.address>:8081/atlas/`. _Once again, DO NOT use localhost or 127.0.0.1!_
