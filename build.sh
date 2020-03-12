#rm -r node_modules/@sap
npm search sap --registry https://npm.sap.com --json | jq > npm.sap.com.json
cat npm.sap.com.json | jq 'reduce .[] as $i ({}; .[$i.name] = $i.version)' > packages.json
cat npm.sap.com.json | jq '.[] | .name' | sort > packages.txt
rpl -q '"' '' packages.txt
echo "@sap/audit-logging" >> packages.txt
echo "sap/portal-cf-content-deployer" >> packages.txt
echo "@sap/cds-odata-v2-adapter-proxy" >> packages.txt
echo "@sap/cds-compiler" >> packages.txt
echo "@sap/cds-hana" >> packages.txt
echo "@sap/generator-cds" >> packages.txt
echo "@sap/cds-dk" >> packages.txt
echo "@sap/cds-messaging" >> packages.txt
echo "@sap/cds-mtx" >> packages.txt
echo "@sap/cds-reflect" >> packages.txt
echo "@sap/cds-rest" >> packages.txt
echo "@sap/cds-services" >> packages.txt
echo "@sap/cds-ql" >> packages.txt
echo "@sap/cds-sql" >> packages.txt
echo "@sap/cds-sqlite" >> packages.txt
echo "@sap/dwf-core" >> packages.txt
echo "@sap/edm-converters" >> packages.txt
echo "@sap/fibers" >> packages.txt
echo "@sap/cloud-sdk-core" >> packages.txt
echo "@sap/cloud-sdk-generator" >> packages.txt
echo "@sap/cloud-sdk-util" >> packages.txt
echo "@sap/xsenv" >> packages.txt
echo "@sap/edmx2csn" >> packages.txt
echo "@sap/site-entry" >> packages.txt
echo "@sap/logging" >> packages.txt
echo "@sap/node-jwt" >> packages.txt
echo "@sap/odata-server" >> packages.txt
echo "@sap/hana-client" >> packages.txt
echo "@sap/faas" >> packages.txt
echo "@sap/xb-msg-amqp-v091" >> packages.txt
echo "@sap/xb-msg-env" >> packages.txt
echo "@sap/xb-msg-mqtt-v311" >> packages.txt
echo "@sap/xb-msg-amqp-v100" >> packages.txt
echo "@sap/xsodata" >> packages.txt
echo "@sap/xsjs" >> packages.txt
node update-package-json.js
jq '.' new-package.json > package.json
rm new-package.json
rm packages.json
npm install

while read package; do
  packageNoPrefix=`echo $package | sed 's/@sap//g'`
  mkdir "apis$packageNoPrefix"
  cp node_modules/$package/*.md apis$packageNoPrefix
  cp -r node_modules/$package/doc apis$packageNoPrefix/doc
done <packages.txt
