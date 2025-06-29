# Use Maven with OpenJDK image
FROM maven:3.9.4-eclipse-temurin-17 AS build

# Set workdir inside container
WORKDIR /app

# Copy source code
COPY . .

# Build and run tests (pass deviceIndex=0 by default)
RUN mvn clean test -DdeviceIndex=0
