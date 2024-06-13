'use strict';

/**
 * added-value service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::added-value.added-value');
