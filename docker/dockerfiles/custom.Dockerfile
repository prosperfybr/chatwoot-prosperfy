# Use official Chatwoot image as base
FROM chatwoot/chatwoot:latest

# Copy customized files
COPY config/features.yml /app/config/features.yml
COPY enterprise/app/services/internal/reconcile_plan_config_service.rb /app/enterprise/app/services/internal/reconcile_plan_config_service.rb

# Set working directory
WORKDIR /app

# Expose port
EXPOSE 3000
