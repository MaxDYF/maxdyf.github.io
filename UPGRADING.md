# Upgrading from the Previous Template

If you're already using the old version of this template, follow these steps to migrate.

## 1. Update _config.yml

The new config uses a simplified format. Move these fields:

**Old format (remove):**

```yaml
title: Your Name
affiliation: >
  Your Name<br/>
  Your Role<br/>
  Your Institution
location: >
  ...
contact: >
  ...
```

**New format (add):**

```yaml
name: "Your Name"
title: "Your Role"
institution: "Your Institution"
email: you@university.edu
photo: headshot.png
links:
  google_scholar: "..."
  github: "..."
accent_color: "#2563eb"
dark_mode: true
analytics:
  google_id: ""
```

## 2. Update _data/pi.yml

Basic PI info (name, photo, email, links) now lives in `_config.yml`. The `pi.yml` file only needs education data:

```yaml
- education:
    - "(2023) Degree, Your University"
  educationshort:
    - "(2023) Degree, Your University"
```

## 3. Organize Images (Optional)

New subdirectories are available:

- `images/team/` — team member photos
- `images/research/` — research thumbnails
- `images/banner/` — banner images

Your existing flat `images/` structure still works.

## 4. Data Files

Field names in `team_members.yml`, `alumni.yml`, `news.yml`, etc. are unchanged. Your existing data files should work as-is.

## 5. Publications

`assets/ref.bib` format is unchanged. Jekyll Scholar config stays in `_config.yml`. Update the `scholar.last_name` and `scholar.first_name` fields.

## 6. Custom CSS

If you added custom CSS to `SHB_css.scss`, move it to a new file in `_sass/` and import it in `assets/main.scss`.

## 7. Install & Test

```bash
bundle install
npm install        # only if you want to modify JS
bundle exec jekyll serve
```
