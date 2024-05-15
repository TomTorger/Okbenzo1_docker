# Use the official Node.js image as a base
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Clone the Next.js repository
ARG NEXTJS_REPO=https://github.com/silasklaveness/Okbenzo1.git
RUN apk add --no-cache git && \
    git clone $NEXTJS_REPO . && \
    rm -rf .git

# Install dependencies
RUN yarn install --frozen-lockfile

# Build the Next.js application
RUN yarn build

# Expose the port the app runs on
EXPOSE 3000

# Start the Next.js application
CMD ["yarn", "start"]
