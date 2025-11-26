# Use official Chatwoot image as base
FROM chatwoot/chatwoot:latest

# Verify assets exist (for debugging)
RUN ls -la /app/public/vite/ || echo "WARNING: Vite assets not found in base image"

# Copy only our custom business logic files
COPY config/features.yml /app/config/features.yml
COPY enterprise/app/services/internal/reconcile_plan_config_service.rb /app/enterprise/app/services/internal/reconcile_plan_config_service.rb

# Verify assets still exist after copy (for debugging)
RUN ls -la /app/public/vite/ || echo "WARNING: Vite assets missing after COPY"

# Set working directory
WORKDIR /app

# Expose port
EXPOSE 3000
