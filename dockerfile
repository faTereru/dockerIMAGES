FROM alpine AS builder
WORKDIR /app
RUN apk add --update npm
COPY . .
RUN npm install --include=dev
RUN npm audit fix
RUN npm run build

FROM alpine AS runner
EXPOSE 80
WORKDIR /app/
COPY --from=builder /app/dist /app/
RUN npm start
