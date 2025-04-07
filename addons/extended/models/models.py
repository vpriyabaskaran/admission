# -*- coding: utf-8 -*-
###################################################################################
#
#    Shorepointsystem Private Limited
#    Author: Priyadharshini (28-10-2022)
#                        
#
###################################################################################
import pytz
from datetime import datetime,timedelta,date
from dateutil.relativedelta import relativedelta
import datetime
from dateutil.tz import tzutc, tzlocal

import logging
import sys
import base64
import threading
import pytz
from datetime import datetime

from odoo import models, fields, api, _
from odoo.exceptions import UserError
from odoo.http import request
import base64
import xlrd
import logging
from odoo.exceptions import UserError, ValidationError
from xlrd import xlsx

from odoo import models, fields, api, _
from odoo.exceptions import UserError

_logger = logging.getLogger(__name__)

class Inherit(models.Model):
    _inherit = 'hr.applicant'

    community = fields.Char(string="Community")



