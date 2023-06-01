library(hexSticker)
imgurl <- here::here("inst", "image1.png")
sticker(imgurl, package="MAR1", 
        p_size=30, p_color = "blue", p_y = .5,
        s_x=1, s_y=1, s_width=.75, s_height=.75,
        h_fill="white", h_color="blue",
        spotlight = TRUE,
        filename = here::here("inst", "logo.png"))
