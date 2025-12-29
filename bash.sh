python3 -m pip install sphinxcontrib-chapeldomain
git clone https://github.com/Web4application/locallhost-dev-guide.git
cd locallhost.dev
cd localhosts.mobi
cd localhost.co
cd localhost.com
cd localhost:80
chmod +x scripts/*.sh
./scripts/push-to-github.sh

python3 -m venv venv
source venv/bin/activate
pip install -r backend/requirements.txt


lsof -i :PORT            # (Mac/Linux) find what's using a port
netstat -ano | findstr :PORT # (Windows) find what's using a port
kill -9 PID                  # (Mac/Linux) kill a process by PID
taskkill /PID PID /F         # (Windows) kill a process by PID
nc -zv localhost PORT        # (Mac/Linux) check if port is open
telnet localhost PORT        # (Windows/Linux) check if port is open
python -m http.server PORT   # start a simple HTTP server (python)
npx http-server -p PORT      # start simple static server (node)
          
python -m http.server PORT
chmod +x dev-launcher.sh && ./dev-launcher.sh

# Check OS
OS=$(uname 2>/dev/null || echo Windows)

# Ask for port
if [ "$OS" = "Windows" ]; then
  powershell -Command "$PORT = Read-Host 'Enter port to use'; Write-Output $PORT"
  PORT=$(powershell -Command "$PORT = Read-Host 'Enter port to use'; Write-Output $PORT")
else
  read -p "Enter port to use: " PORT
fi

echo "Checking port $PORT..."

# Kill existing process on the port
npx kill-port $PORT

# Detect LAN IP
if [ "$OS" = "Darwin" ]; then
  LAN=$(ipconfig getifaddr en0 2>/dev/null)
elif [ "$OS" = "Linux" ]; then
  LAN=$(hostname -I | awk '{print $1}')
else
  # Windows PowerShell
  LAN=$(powershell -Command "(Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -notlike '*Loopback*' }).IPAddress")
fi

# Start HTTP server
npx http-server -p $PORT &

# Output URLs
echo "Server running at: http://localhost:8888"
echo "LAN URL: http:/102.89.34.50:8081"


# React (Vite)
npm create vite@latest my-app --template react
cd my-app
npm install
npm run dev # opens on 5173 by default

         
spring.application.name=user-service - Service naming
server.port=8081 - Service port
eureka.client.service-url.defaultZone=http://localhost:8761/eureka/ - Service discovery
management.endpoints.web.exposure.include=health,info - Health checks
spring.cloud.config.uri=http://localhost:1111 - Config server
Docker Configuration

EXPOSE 8089 - Docker port exposure
docker run -p 8080:8000 app - Port mapping
docker-compose.yml - Multi-service orchestration
healthcheck: curl -f http://localhost:8081/actuator/health - Health monitoring
environment: - SERVER_PORT=8081 8888 1111 5959 5454  - Environment variables

Maven: mvn spring-boot:run -Dspring-boot.run.arguments=--server.port=8081
Gradle: ./gradlew bootRun --args='--server.port=8089'
npm scripts: "dev:8080": "PORT=8080 npm start"
Docker build with port 8080
CI/CD pipeline configuration

curl \
    --cert path_to_key_and_cert.pem \
    --header "content-type: application/json" \
    --data-binary "@table.json" \
    https://rst-api-ote.icann.org/v1/table

Current IP Address: 102.89.34.50


telnet khml 80.
GET / HTTP/1.1 HOST: web4 
Aura api
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


import { OpenRouter } from '@openrouter/sdk';

const openRouter = new OpenRouter({
  apiKey: '<64a9dec7eb74658cc22265c172f53e345d43241f703f0ce3e1d721ae474a67bf>',
  defaultHeaders: {
    'HTTP-Referer': '<
web4app.net
>', // Optional. Site URL for rankings on 
OpenRouter
.
    'X-Title': '<web4app>', // Optional. Site title for rankings on 
OpenRouter
.
  },
});

const completion = await openRouter.chat.send({
  model: 'web4/aura',
  messages: [
    {
      role: 'user',
      content: 'What is the meaning of life?',
    },
  ],
  stream: false,
});

console.log(completion.choices[0].message.content);


git config --global user.name 'web4'
git config --global user.email 'Kubulee.kl@gmail.com'
localuser@localhost/1.0.0.127.in-addr.arpa domain name pointer localhost.

Whois-RWS


https://datatracker.ietf.org/accounts/confirmnewemail/WyJrdWJ1bGVlLmtsQGdtYWlsLmNvbSIsIkt1YnVjb2luQHByb3Rvbi5tZSJd:1vHP34:fcqgT2JqX5OT5ixInj3kEmSHkaGSMrvhlRZVCvSsOiI/
