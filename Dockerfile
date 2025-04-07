FROM odoo:18.0

LABEL maintainer="you@example.com"

# Install dependencies
USER root
RUN apt-get update && apt-get install -y \
    git \
    nano \
    vim \
    wget \
    python3-dev \
    libpq-dev \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /odoo

# Copy configuration file
COPY ./odoo.conf /etc/odoo/odoo.conf

# Set permissions
RUN chown -R odoo /etc/odoo && chmod 640 /etc/odoo/odoo.conf

# Custom addons (if any)
COPY ./addons /mnt/extra-addons
RUN chown -R odoo /mnt/extra-addons

USER odoo

# Expose port
EXPOSE 8069

CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]
