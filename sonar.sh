SONAR_USER="admin"
SONAR_PASS="mustafa123"
SONAR_HOST_URL="http://localhost:9000"
SONAR_PROJECT_NAME="example-project"
dotnet restore --packages .nuget
dotnet-sonarscanner begin \
      /k:$SONAR_PROJECT_NAME \
      /n:$SONAR_PROJECT_NAME \
      /d:sonar.host.url=$SONAR_HOST_URL \
      /d:sonar.login=$SONAR_USER \
      /d:sonar.password=$SONAR_PASS \
      /d:sonar.cs.opencover.reportsPaths="./tests/coverage.opencover.xml" 
dotnet build -nologo -consoleLoggerParameters:NoSummary -verbosity:quiet --no-restore
dotnet-sonarscanner end \
      /d:sonar.login=$SONAR_USER \
      /d:sonar.password=$SONAR_PASS 
