# Theme configuration file
# ========================
# This file is used for all theme configuration.
# It's where you define everything that's editable in Spina CMS.

Spina::Theme.register do |theme|
  # All views are namespaced based on the theme's name
  theme.name = "default"
  theme.title = "Default theme"

  # Parts
  # Define all editable parts you want to use in your view templates
  #
  # Built-in part types:
  # - Line
  # - MultiLine
  # - Text (Rich text editor)
  # - Image
  # - ImageCollection
  # - Attachment
  # - Option
  # - Repeater
  theme.parts = [
    {name: "text", title: "Long Text", hint: "Your main content", part_type: "Spina::Parts::Text"},
    {name: "image", title: "Image", part_type: "Spina::Parts::Image"},
    {name: "header_image", title: "Header Image", part_type: "Spina::Parts::Image"},
    # Add new parts for the sport event page
    {name: "title", title: "Title", part_type: "Spina::Parts::Text"},
    {name: "subtitle", title: "Subtitle", part_type: "Spina::Parts::Text"},
    {name: "location", title: "Location", part_type: "Spina::Parts::Line"},
    {name: "event_link", title: "Event Link", part_type: "Spina::Parts::Line"},
    {name: "start_date", title: "Start Date", part_type: "Spina::Parts::Line"},
    {name: "end_date", title: "End Date", part_type: "Spina::Parts::Line"},
    {name: "footer", title: "Footer", part_type: "Spina::Parts::Text"}
  ]

  # View templates
  # Every page has a view template stored in app/views/my_theme/pages/*
  # You define which parts you want to enable for every view template
  # by referencing them from the theme.parts configuration above.
  theme.view_templates = [
    {name: "homepage", title: "Homepage", parts: %w[text]},
    {name: "show", title: "Page", parts: %w[text]},
    {name: "sport_event", title: "Sport Event Page", parts: %w[title subtitle text location event_link start_date end_date text footer]}
  ]

  # Custom pages
  # Some pages should not be created by the user, but generated automatically.
  # By naming them you can reference them in your code.
  theme.custom_pages = [
    {name: "homepage", title: "Homepage", deletable: false, view_template: "homepage"}
  ]

  # Navigations (optional)
  # If your project has multiple navigations, it can be useful to configure multiple
  # navigations.
  theme.navigations = [
    {name: "main", label: "Main navigation"}
  ]

  # Layout parts (optional)
  # You can create global content that doesn't belong to one specific page. We call these layout parts.
  # You only have to reference the name of the parts you want to have here.
  theme.layout_parts = []

  # Resources (optional)
  # Think of resources as a collection of pages. They are managed separately in Spina
  # allowing you to separate these pages from the 'main' collection of pages.
  theme.resources = []

  # Plugins (optional)
  theme.plugins = ['blog']

  # Embeds (optional)
  theme.embeds = []
end
