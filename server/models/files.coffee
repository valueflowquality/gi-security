module.exports = (mongoose, crudModelFactory) ->
  require('mongoose-long')(mongoose)

  Schema = mongoose.Schema

  modelName = 'File'

  schema =
    systemId: Schema.Types.ObjectId
    parentId: Schema.Types.ObjectId
    parentType: 'String'
    name: 'String'
    sequence: 'Number'
    primary: 'Boolean'
    exclude: 'Boolean'
    order: 'Number'
    title: 'String'
    description: 'String'
    size: Schema.Types.Long

  fileSchema = new Schema schema

  mongoose.model modelName, fileSchema
  exports = crudModelFactory mongoose.model(modelName)
  exports.name = modelName
  exports