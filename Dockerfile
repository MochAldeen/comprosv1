# Gunakan image Node.js sebagai base image
FROM node:18-alpine

# Set working directory di dalam container
WORKDIR /app

# Copy package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy semua file proyek ke working directory
COPY . .

# Build aplikasi Svelte
RUN npm run build

# Expose port yang digunakan aplikasi (biasanya port 5173 untuk Svelte dev server)
EXPOSE 5173

# Jalankan aplikasi
CMD ["npm", "run", "dev", "--", "--host"]