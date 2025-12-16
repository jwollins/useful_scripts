library(magick)

# Path to folder with PNGs
img_dir <- "~/jcollins@earthroverprogram.org - Google Drive/My Drive/1_ha_survey_plot/plot_by_date/plots_by_date/"

# Read images (ensure correct order!)
imgs <- image_read(list.files(img_dir, pattern = "\\.png$", full.names = TRUE))

# Create animation
anim <- image_animate(imgs, fps = 4)  # frames per second

# Save
image_write(anim, "~/jcollins@earthroverprogram.org - Google Drive/My Drive/1_ha_survey_plot/plot_by_date/plots_by_date/animation.gif")
