'use strict';

/**
 * nds service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::nds.nds');
