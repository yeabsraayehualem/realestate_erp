FROM odoo:18

USER root

RUN mkdir -p /etc/odoo/addons /etc/odoo/custom_addons

COPY addons /etc/odoo/addons
COPY custom_addons /etc/odoo/custom_addons
COPY etc/odoo.conf /etc/odoo/odoo.conf


EXPOSE 8069

ENTRYPOINT ["odoo", "-c", "/etc/odoo/odoo.conf"]
