--- simple object used for identifying entries within registries. this object does not contain any methods.
-- @module[kind=objects] registry_entry

local doc = {}

--- fields stored by the registry_entry object
local fields = {}

--- an uuid4 actually defining this entries position within the registry
fields.id = {}
--- actual readable name assigned to this entries ID
fields.name = {}

doc.fields = fields

return doc