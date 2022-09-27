'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Meet_Greet extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Meet_Greet.init({
    band_id: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    name: {
        type: DataTypes.STRING,
        allowNull: false
    },
    genre: {
        type: DataTypes.TEXT,
        allowNull: false
    },
    available_start_time: {
        type: DataTypes.DATE,
        allowNull: false
    },
    band_end_time: {
        type: DataTypes.DATE,
        allowNull: false
    },
    event_id: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    event_name: {
      type: DataTypes.STRING,
      allowNull: false
    },
    date: {
      type: DataTypes.DATE,
      allowNull: false
    },
    event_start_time: {
      type: DataTypes.DATE, 
      allowNull: false
    },
    event_end_time: {
      type: DataTypes.DATE,
      allowNull: false
    },
    meet_greet_id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    meet_start_time: {
      type: DataTypes.DATE,
      allowNull: false
    },
    meet_end_time: {
      type: DataTypes.DATE,
      allowNull: true
    }
  }, {
    sequelize,
    modelName: 'Meet_Greet',
    tableName: 'meet_greets',
    timestamps: false
  });
  return Meet_Greet;
};