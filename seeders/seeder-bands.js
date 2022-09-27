'use strict';

const band = require("../models/band");

module.exports = {
  async up (queryInterface, Sequelize) {
    await queryInterface.bulkInsert('bands', [
      {
        name: 'Five Finger Death Punch',
        genre: 'Heavy Metal',
        available_start_time: '18:00:00',
        band_end_time: '21:00:00'
      },
      {
        name: 'The Hu',
        genre: 'Metal',
        available_start_time: '12:00:00',
        band_end_time: '14:00:00'
      },
      {
        name: 'Avenged Sevenfold',
        genre: 'Metal',
        available_start_time: '14:00:00',
        band_end_time: '16:00:00'
      },
      {
        name: 'Megadeth',
        genre: 'Heavy Metal',
        available_start_time: '16:00:00',
        band_end_time: '18:00:00'
      }
    ])
  },
  
  async down (queryInterface, Sequelize) {
    await queryInterface.bulkDelete('bands', {});
  }
};
