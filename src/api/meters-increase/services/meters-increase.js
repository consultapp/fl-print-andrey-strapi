'use strict';

/**
 * meters-increase service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::meters-increase.meters-increase');
