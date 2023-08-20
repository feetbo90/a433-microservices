# Gunakan image Node.js versi 14 di atas Alpine Linux sebagai dasar
FROM node:14-alpine

# Tentukan working directory di dalam container
WORKDIR /app

# Salin seluruh source code ke working directory di container
COPY . .

# Tentukan environment variables
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Install dependencies untuk production dan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port yang digunakan oleh aplikasi
EXPOSE 8080

# Jalankan server saat container diluncurkan
CMD ["npm", "start"]
