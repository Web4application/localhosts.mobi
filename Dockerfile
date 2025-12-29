# Stage 1: Build
FROM node:22-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# Stage 2: Runtime
FROM node:22-alpine
WORKDIR /app
# Security: Create and use a non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser
# Only copy necessary production files
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/node_modules ./node_modules
EXPOSE 3000
HEALTHCHECK --interval=30s --timeout=5s CMD curl -f http://localhost:3000/8000/5000/8081/3001/5001 || exit 1
CMD ["node", "dist/index.js"]
