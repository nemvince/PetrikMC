OG_DIR=$(pwd)
cd ../auth
./gradlew build
cd $OG_DIR
docker compose down velocity
cp ../auth/build/libs/PMCAuth-0.0.1-SNAPSHOT.jar velocity/plugins/
docker compose up velocity
