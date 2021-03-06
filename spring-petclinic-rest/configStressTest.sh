version=2.3.1;

wget https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/$version/gatling-charts-highcharts-bundle-$version-bundle.zip;
unzip gatling-charts-highcharts-bundle-$version-bundle.zip;
cp -a stressTest/. gatling-charts-highcharts-bundle-$version/user-files/simulations/computerdatabase/;
cd gatling-charts-highcharts-bundle-$version/bin/;
./gatling.sh -s computerdatabase.PetClinicOwnerStressTest;
./gatling.sh -s computerdatabase.PetClinicVetsStressTest;
./gatling.sh -s computerdatabase.PetClinicSpecialtiesStressTest;
./gatling.sh -s computerdatabase.PetClinicVisitsStressTest;
./gatling.sh -s computerdatabase.PetClinicPetsStressTest;
./gatling.sh -s computerdatabase.PetClinicPetTypesStressTest;
