local function set_texture(entry, entity)
    local prefix = init_path:match("/$") and init_path:sub(1, -2) or init_path
    if not prefix then
        return
    end
    if entry.platform_string == prefix .. "/compute/instance/get" then
        texture.download("https://images.squarespace-cdn.com/content/5500a991e4b0ed07e64029e1/1515880162534-4I8AD4SJG9LFBO5SX5D5/image-asset.png?content-type=image%2Fpng", true,
            "9mine-yandex-cloud-fs.png", "9mine-yandex-cloud-fs")
        entity:set_properties({
            visual = "cube",
            textures = {"9mine-yandex-cloud-fs.png", "9mine-yandex-cloud-fs.png", "9mine-yandex-cloud-fs.png",
                        "9mine-yandex-cloud-fs.png", "9mine-yandex-cloud-fs.png", "9mine-yandex-cloud-fs.png"}
        })
    end
end
register.add_texture_handler(init_path .. "9mine-yandex-cloud-fs-set-texture", set_texture)

{% include '.cmdchan.lua'%}
platform.cmdchan = yandex_cmdchan(platform.connection, core_conf:get("cmdchan_path"))
