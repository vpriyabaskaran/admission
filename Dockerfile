
FROM odoo:18.0

# Install any extra Python packages if needed
USER root
RUN pip3 install --upgrade pip

# Copy your config and addons
COPY ./odoo.conf /etc/odoo/odoo.conf
COPY ./addons /mnt/extra-addons

RUN chown -R odoo /mnt/extra-addons /etc/odoo/odoo.conf

USER odoo
