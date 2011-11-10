# Like sands through the hourglass, so are the days of our lives.
window.atom = {}

App = require 'app'
Event = require 'event'
ExtensionManager = require 'extension-manager'
KeyBinder = require 'key-binder'
Native = require 'native'
Settings = require 'settings'
Storage = require 'storage'

atom.native = new Native
atom.storage = new Storage
atom.event = new Event

# atom.on, atom.off, etc.
for name, method of atom.event
  atom[name] = atom.event[name]

atom.keybinder = new KeyBinder
atom.settings = new Settings
atom.extensions = new ExtensionManager
atom.app = new App

require 'window'
window.startup()