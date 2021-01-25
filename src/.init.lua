local function set_texture(entry, entity)
    local prefix = init_path:match("/$") and init_path:sub(1, -2) or init_path
    if not prefix then
        return
    end
    if entry.platform_string == prefix .. "/compute/instance/get" then
        texture.download("https://icon-library.com/images/vm-icon/vm-icon-23.jpg", true,
            "9mine-yandex-cloud-fs.png", "9mine-yandex-cloud-fs")
        entity:set_properties({
            visual = "cube",
            textures = {"9mine-yandex-cloud-fs.png", "9mine-yandex-cloud-fs.png", "9mine-yandex-cloud-fs.png",
                        "9mine-yandex-cloud-fs.png", "9mine-yandex-cloud-fs.png", "9mine-yandex-cloud-fs.png"}
        })
    end
end
register.add_texture_handler(init_path .. "9mine-yandex-cloud-fs-set-texture", set_texture)