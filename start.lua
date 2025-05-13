----------------------------------
-- Author:      Zineddine SAIBI
-- Software:    Auzia Conky
-- Type:        Conky Theme
-- Version:     0.4
-- License:     GPL-3.0
-- repository:  https://www.github.com/SZinedine/auzia-conky
----------------------------------

local to_draw_titles = true

local S = {
    mem = {
        x                 = 1020,
        y                 = 200,
        radius            = 160,
        text = {
            indicators    = { x = 950, y = 40 },
            process_title = { x = 930, y = 150 },
            processes     = { x = 945, y = 170 },
            ring_title    = { x = 990, y = 320 },
        }
    },


    battery = {
        x              = 610,
        y              = -900,
        radius         = 1600,
        width          = 3,
        begin          = -160,
        end_           = -200,
        text = {
            perc  = { x = 1160, y = 608 },
            title = { x = 570, y = 720 },
        },
    },


    clock = {
        x              = 600,
        y              = 300,
        width          = 10,
        radius         = 140,
        font_height    = 110,
        font_m         = 84,
        font_s         = 41,
        hr             = { x = 510, y = 290 },
        mn             = { x = 550, y = 380 },
        sc             = { x = 650, y = 380 },
        dt             = { x = 550, y = 310 },
        ut             = { x = 550, y = 410 },
        greeting       = { x = 450, y = 80 },
    },


    disk = {
        x              = 840,
        y              = 500,
        radius         = 120,
        thickness      = 18,
        begin_angle    = 20,
        end_angle      = -260,
        text = {

        }
    },

    net = {
        x              = 360,
        y              = 500,
        width          = 10,
        radius         = 120,
        begin_angle    = 0,
        end_angle      = 320,
        indicators = {
            down       = {x = 295, y = 405},
            up         = {x = 295, y = 385},
        },
        total = {
            down       = {x = 360, y = 510},
            up         = {x = 360, y = 490},
        },
        list = {x = 10, y = 440},
    },

    weather = {
        x              = 1350,      -- 天気リングのX座標中心
        y              = 500,       -- 天気リングのY座標中心
        radius         = 120,       -- 基本リング半径（大きくして内部にテキストを表示）
        thickness      = 15,        -- リングの太さ（少し薄く）
        begin_angle    = 0,
        end_angle      = 300,       -- 300度の円弧
        text = {
            title      = { x = 1290, y = 550 },   -- リングの中央上部
            city       = { x = 1290, y = 460 },   -- 都市名（中央近く）
            desc       = { x = 1290, y = 490 },   -- 天気説明（中央）
            icon       = { x = 1290, y = 550 },   -- アイコン（大きく表示）
            update     = { x = 1290, y = 520 },   -- 更新時間（中央下部）
            temp       = { x = 1200, y = 345 },   -- 気温表示
            feels      = { x = 1200, y = 366 },   -- 体感温度
            humidity   = { x = 1200, y = 408 },   -- 湿度
            wind       = { x = 1200, y = 387 }    -- 風速（外側）
        }
    },

    cpu = {
        x = 200,
        y = 200,
        begin_angle = 0,
        end_angle = -260,

        cores = {
            _0cores = {     -- display only total cpu usage
                total = {
                    number = 0,
                    radius = 130,
                    thickness = 35,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 75,
                        post_particle = "%"
                    }
                },
                temperature = {
                    number = -1,
                    radius = 163,
                    thickness = 10,
                    max_value = 95,
                    begin_angle = 45,
                    end_angle = -300,
                    text = {
                        x = 315,
                        y = 110,
                        post_particle = "°C"
                    }
                },

            },


            _12cores = {
                core1 = {
                    number = 1,
                    radius = 82,
                    thickness = 5,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 125,
                        post_particle = "%"
                    }
                },
                core2 = {
                    number = 2,
                    radius = 88,
                    thickness = 5,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                core3 = {
                    number = 3,
                    radius = 94,
                    thickness = 6,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 110,
                        post_particle = "%"
                    }
                },
                core4 = {
                    number = 4,
                    radius = 102,
                    thickness = 8,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                core5 = {
                    number = 5,
                    radius = 111,
                    thickness = 8,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 95,
                        post_particle = "%"
                    }
                },
                core6 = {
                    number = 6,
                    radius = 129,
                    thickness = 9,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                core7 = {
                    number = 7,
                    radius = 130,
                    thickness = 9,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 80,
                        post_particle = "%"
                    }
                },
                core8 = {
                    number = 8,
                    radius = 141,
                    thickness = 10,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 65,
                        post_particle = "%"
                    }
                },
                core9 = {
                    number = 9,
                    radius = 152,
                    thickness = 10,
                    max_value = 98,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 52,
                        post_particle = "%"
                    }
                },
                core10 = {
                    number = 10,
                    radius = 163,
                    thickness = 10,
                    max_value = 98,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 40,
                        post_particle = "%"
                    }
                },
                core11 = {
                    number = 11,
                    radius = 174,
                    thickness = 10,
                    max_value = 98,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 28,
                        post_particle = "%"
                    }
                },
                core12 = {
                    number = 12,
                    radius = 186,
                    thickness = 11,
                    max_value = 98,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 17,
                        post_particle = "%"
                    }
                },
                total = {
                    number = 0,
                    radius = 195,
                    thickness = 2,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                temperature = {
                    number = -1,
                    radius = 199,
                    thickness = 2,
                    max_value = 95,
                    begin_angle = 45,
                    end_angle = -300,
                    text = {
                        x = 345,
                        y = 85,
                        post_particle = "°C"
                    }
                },
            },
          _16cores = {
                core1 = {
                    number = 1,
                    radius = 75,
                    thickness = 4,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 130,
                        post_particle = "%"
                    }
                },
                core2 = {
                    number = 2,
                    radius = 80,
                    thickness = 4,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                core3 = {
                    number = 3,
                    radius = 85,
                    thickness = 4,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 118,
                        post_particle = "%"
                    }
                },
                core4 = {
                    number = 4,
                    radius = 90,
                    thickness = 4,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                core5 = {
                    number = 5,
                    radius = 96,
                    thickness = 6,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 107,
                        post_particle = "%"
                    }
                },
                core6 = {
                    number = 6,
                    radius = 103,
                    thickness = 6,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = nil
                },
                core7 = {
                    number = 7,
                    radius = 110,
                    thickness = 6,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 92,
                        post_particle = "%"
                    }
                },
                core8 = {
                    number = 8,
                    radius = 117,
                    thickness = 6,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 78,
                        post_particle = "%"
                    }
                },
                core9 = {
                    number = 9,
                    radius = 124,
                    thickness = 6,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 68,
                        post_particle = "%"
                    }
                },
                core10 = {
                    number = 10,
                    radius = 131,
                    thickness = 6,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 58,
                        post_particle = "%"
                    }
                },
                core11 = {
                    number = 11,
                    radius = 138,
                    thickness = 6,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 48,
                        post_particle = "%"
                    }
                },
                core12 = {
                    number = 12,
                    radius = 145,
                    thickness = 6,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 38,
                        post_particle = "%"
                    }
                },
               core13 = {
                    number = 13,
                    radius = 152,
                    thickness = 6,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 28,
                        post_particle = "%"
                    }
                },
               core14 = {
                    number = 14,
                    radius = 159,
                    thickness = 6,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                },
               core15 = {
                    number = 15,
                    radius = 166,
                    thickness = 6,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,

                },
               core16 = {
                    number = 16,
                    radius = 175,
                    thickness = 7,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                },
                total = {
                    number = 0,
                    radius = 187,
                    thickness = 13,
                    max_value = 100,
                    begin_angle = 0,
                    end_angle = -260,
                    text = {
                        x = 205,
                        y = 15,
                        post_particle = "%"
                    }
                },
                temperature = {
                    number = -1,
                    radius = 198,
                    thickness = 3,
                    max_value = 100,
                    begin_angle = 45,
                    end_angle = -300,
                    text = {
                        x = 340,
                        y = 90,
                        post_particle = "°C"
                    }
                },
            },
        }
    }
}



-- set the appropriate cpu object according to the chosen value for `cpu_cores`
local ncores = nil
if     cpu_cores == 0  then ncores = S.cpu.cores._0cores
elseif cpu_cores == 2  then ncores = S.cpu.cores._2cores
elseif cpu_cores == 4  then ncores = S.cpu.cores._4cores
elseif cpu_cores == 6  then ncores = S.cpu.cores._6cores
elseif cpu_cores == 8  then ncores = S.cpu.cores._8cores
elseif cpu_cores == 10 then ncores = S.cpu.cores._10cores
elseif cpu_cores == 12 then ncores = S.cpu.cores._12cores
elseif cpu_cores == 16 then ncores = S.cpu.cores._16cores
else
    print("ERROR. the provided value of cpu_cores is not valid. Defaulting to 4 cores")
    ncores = S.cpu.cores._4cores
end

function start()
    draw_cpu()
    draw_memory()
    draw_clock()
    draw_disks()
    draw_battery()
    draw_titles()
    draw_net()
    draw_brightness_volume()
    draw_weather()
end


function draw_single_cpu_core(coreN)
    local val = nil
    if coreN.number >= 0 then val = cpu_percent(coreN.number)
    else val = cpu_temperature()
    end

    ring_anticlockwise(S.cpu.x, S.cpu.y, coreN.radius, coreN.thickness, coreN.begin_angle, coreN.end_angle, val, coreN.max_value, color_frompercent(tonumber(val)))

        --Display thread count
    local threads = running_threads()  --Get the number of running threads
    write(160, 245, "Threads: " .. threads, 12, main_text_color)  --Adjust the display position of the number of threads

    if coreN.text ~= nil then
        write(coreN.text.x, coreN.text.y, val .. coreN.text.post_particle, 12, main_text_color)
    end
end


function draw_cpu()
    for i in pairs(ncores) do
        draw_single_cpu_core(ncores[i])
    end

    write_list_proccesses_cpu(160, 147, 20, 5, 12, main_text_color)
end


function draw_memory()
    local memperc = memory_percent()
    local swpperc = swap_percent()
    local usedmem = string.format("Usage: %s / %s (%s%s)", memory(), memory_max(), memperc, "%")
    local maxmem = memory_max()
    local cachedmem = memory_cached()
    local buffersmem = memory_buffers()
    local mem = memory()
    local swp = swap()
    local maxswp = swap_max()

    --Memory and swap ring display
    ring_clockwise(S.mem.x, S.mem.y, S.mem.radius, 18, 0, 320, memperc, 100, color_frompercent(tonumber(memperc)))
    ring_clockwise(S.mem.x, S.mem.y, S.mem.radius-18, 14, 0, 320, swpperc, 100, color_frompercent(tonumber(swpperc)))

    --Displaying memory usage
    write(S.mem.text.indicators.x - 155, S.mem.text.indicators.y, "Ram: " .. mem .. " | Max: " .. maxmem ..  " | " .. memperc .. " %", 12, main_text_color)
    write(S.mem.text.indicators.x - 161, S.mem.text.indicators.y + 22, "Swap: " .. swp .. " | Max: " .. maxswp .. " | " .. swpperc .. " %" , 12, main_text_color)

    --Displays memory in use, maximum memory, cache memory, and buffer memory
    write(S.mem.text.process_title.x, S.mem.text.process_title.y - 18, usedmem, 12, main_text_color)
    write(S.mem.text.process_title.x + 30, S.mem.text.process_title.y - 54, "Cached:  " .. cachedmem, 12, main_text_color)
    write(S.mem.text.process_title.x + 30, S.mem.text.process_title.y - 36, "Buffers: " .. buffersmem, 12, main_text_color)

    -- メモリ関連プロセスの表示
    write_list_proccesses_mem(S.mem.text.processes.x, S.mem.text.processes.y - 19, 15, 12, 12, main_text_color)
end


function draw_clock()
    local s = time_second()
    local m = time_minute()
    local h = time_hour24()
    local date = string.format("%s年 %s月 %s日 %s", time_year(),time_month_number(), time_day_number(), time_day())
    local current_hour = tonumber(h) -- 時間を数値に変換

    local greeting_text = ""
    if current_hour >= 0 and current_hour < 6 then
        greeting_text = "Good night"
    elseif current_hour >= 6 and current_hour < 12 then
        greeting_text = "Good morning"
    elseif current_hour >= 12 and current_hour < 18 then
        greeting_text = "Good afternoon"
    elseif current_hour >= 18 and current_hour < 24 then
        greeting_text = "Good evening"
    end

    ring_clockwise(S.clock.x, S.clock.y, S.clock.radius, S.clock.width/4, 0, 360, s, 59, main_fg)
    ring_clockwise(S.clock.x, S.clock.y, S.clock.radius+7, S.clock.width/2, 0, 360, m, 59, main_fg)
    ring_clockwise(S.clock.x, S.clock.y, S.clock.radius+18, S.clock.width, 0, 360, h, 23, main_fg)

    write_bold(S.clock.hr.x, S.clock.hr.y, h, S.clock.font_height, main_text_color)
    write(S.clock.mn.x, S.clock.mn.y, m, S.clock.font_m, main_text_color)
    write(S.clock.sc.x, S.clock.sc.y, s, S.clock.font_s, main_text_color)
    write(S.clock.dt.x, S.clock.dt.y, date, 14, main_text_color)
    write(S.clock.ut.x, S.clock.ut.y, "Uptime: " .. uptime(), 14, main_text_color)
    write_bold(S.clock.greeting.x, S.clock.greeting.y, greeting_text, 50, main_text_color) -- 挨拶を表示
end

function draw_disks()
    local rt = fs_used_perc("/")
    local hm = fs_used_perc("/home")
    local hdd = fs_used_perc("")  --Change as needed   -- Todo git push時に注意！
    local rt_text = string.format("Root: %s / %s (%s)", fs_used("/"), fs_size("/"), fs_free("/"))
    local hm_text = string.format("Home: %s / %s (%s)", fs_used("/home"), fs_size("/home"), fs_free("/home"))
    local hdd_text = string.format("HDD:  %s  / %s (%s)", fs_used(""), fs_size(""), fs_free(""))

    --Root partition ring
    ring_anticlockwise(S.disk.x, S.disk.y, S.disk.radius, S.disk.thickness, S.disk.begin_angle, S.disk.end_angle, rt, 100, color_frompercent(tonumber(rt)))

    --Home partition ring (reduce radius)
    ring_anticlockwise(S.disk.x, S.disk.y, S.disk.radius-22, S.disk.thickness, S.disk.begin_angle, S.disk.end_angle, hm, 100, color_frompercent(tonumber(hm)))

    --HDD partition ring (also smaller radius)
    ring_anticlockwise(S.disk.x, S.disk.y, S.disk.radius-44, S.disk.thickness, S.disk.begin_angle, S.disk.end_angle, hdd, 100, color_frompercent(tonumber(hdd)))

    --Adjust the text display position
    write(S.disk.x+50, S.disk.y-S.disk.radius+10, rt_text, 14, main_text_color)
    write(S.disk.x+50, S.disk.y-S.disk.radius+32.5, hm_text, 14, main_text_color)
    write(S.disk.x+50, S.disk.y-S.disk.radius+55, hdd_text, 14, main_text_color)  --Change as needed

    local dsk_info = {
        "Read:  " .. diskio_read(""),
        "Write: " .. diskio_write(""),
    }
    write_line_by_line(S.disk.x-40, S.disk.y-10, 20, dsk_info, main_text_color, 14)
end


function draw_net()
    ring_clockwise(S.net.x, S.net.y, S.net.radius-18, 15, S.net.begin_angle, S.net.end_angle, download_speed_kb(), download_rate_maximum, main_fg)
    ring_clockwise(S.net.x, S.net.y, S.net.radius, 15, S.net.begin_angle, S.net.end_angle, upload_speed_kb(), upload_rate_maximum, main_fg)

    write(S.net.indicators.down.x+5, S.net.indicators.down.y, "▼ ".. download_speed(), 12, main_text_color)
    write(S.net.indicators.up.x+5, S.net.indicators.up.y, "▲ "..upload_speed(), 12, main_text_color)

    write(S.net.total.down.x-50, S.net.y, "Total ", 12, main_text_color)
    write(S.net.total.down.x, S.net.total.down.y, "▼ ".. download_total(), 12, main_text_color)
    write(S.net.total.up.x, S.net.total.up.y, "▲ "..upload_total(), 12, main_text_color)

    local inf = {}
    table.insert(inf, "SSID:            " .. string.sub(ssid(), 0, 15))
    table.insert(inf, "Wifi Signal:     " .. wifi_signal() .. "%")
    table.insert(inf, "Local IP:        " .. local_ip())
    table.insert(inf, "System Name:     " .. system_name())
    table.insert(inf, "Kernel:          " .. kernel())
    table.insert(inf, "Machine:         " .. arch())
    table.insert(inf, "Total Windows:   " .. desktops())
    table.insert(inf, "Current Windows: " .. desktop())
    if use_public_ip then
        if public_ip == nil or (updates()%public_ip_refresh_rate) == 0 then
            update_public_ip()
        end
        table.insert(inf, "Public IP:       " .. get_public_ip())
    end
    write_line_by_line(S.net.list.x, S.net.list.y - 10, 20, inf, main_text_color, 14)
end

function draw_titles()
    if not to_draw_titles then return end
    write_bold(180, 270, "CPU", 18, main_text_color)
    write_bold(325, S.net.y+80, "Internet", 15, main_text_color)
    write_bold(S.mem.text.ring_title.x, S.mem.text.ring_title.y, "Memory", 18, main_text_color)
    write_bold(S.disk.x-40, S.disk.y-S.disk.radius+155, "Hard Disk", 15, main_text_color)
    write_bold(S.weather.text.title.x, S.weather.text.title.y, "Weather Forecast", 16, main_text_color)
end


function conky_main()
    if conky_window == nil then
        return
    elseif colors_defined == false then
        io.stderr:write("Fatal Error. Please define a theme")
    end

    local updates_ = tonumber(updates())
    if updates_ <= startup_delay then return end
    if initialized_battery == false and updates_ > startup_delay + 6  then
        init_battery()
    end

    local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable,
                                         conky_window.visual, conky_window.width,
                                         conky_window.height)
    cr = cairo_create(cs)

    start()

    cairo_destroy(cr)
    cairo_surface_destroy(cs)
    cr = nil
end

--Auxiliary function for drawing rounded rectangles
function rounded_rectangle(x, y, width, height, radius)
    --Drawing rounded rectangles
    cairo_new_path(cr)
    cairo_arc(cr, x + radius, y + radius, radius, math.pi, 3 * math.pi / 2)
    cairo_arc(cr, x + width - radius, y + radius, radius, 3 * math.pi / 2, 0)
    cairo_arc(cr, x + width - radius, y + height - radius, radius, 0, math.pi / 2)
    cairo_arc(cr, x + radius, y + height - radius, radius, math.pi / 2, math.pi)
    cairo_close_path(cr)
end

function draw_brightness_volume()
    local brightness = get_brightness()
    local volume = get_volume()
    local muted = is_muted()

    --Change debug information to bar display
    local debug_x = 1350
    local debug_y = 50
    local debug_width = 200
    local debug_height = 20
    local debug_spacing = 35

    --Section title
    write(debug_x - 100, debug_y - 20, "System Controls", 16, main_text_color)

    --Brightness debug display (bar format)
    cairo_set_source_rgba(cr, 0.3, 0.3, 0.3, 0.6)
    rounded_rectangle(debug_x, debug_y, debug_width, debug_height, 3)
    cairo_fill(cr)

    if brightness > 0 then
        cairo_set_source_rgba(cr, 1, 0.7, 0, 0.8) --Orange
        rounded_rectangle(debug_x, debug_y, math.max(3, debug_width * brightness / 100), debug_height, 3)
        cairo_fill(cr)
    end

    --Brightness text
    write(debug_x - 100, debug_y + debug_height/2 + 6, "Brightness", 15, main_text_color)
    write(debug_x + debug_width + 10, debug_y + debug_height/2 + 6, brightness .. "%", 15, main_text_color)

    --Volume debugging display (bar format)
    cairo_set_source_rgba(cr, 0.3, 0.3, 0.3, 0.6)
    rounded_rectangle(debug_x, debug_y + debug_spacing, debug_width, debug_height, 3)
    cairo_fill(cr)

    -- 100%の区切り線（音量バー内）
    local scale = debug_width / 153
    local hundred_percent_x = debug_x + (100 * scale)
    local bar_top = debug_y + debug_spacing
    local bar_bottom = bar_top + debug_height

    -- 線の色（グレー系）
    cairo_set_source_rgba(cr, 1, 1, 1, 0.5)
    cairo_set_line_width(cr, 1)
    cairo_move_to(cr, hundred_percent_x, bar_top)
    cairo_line_to(cr, hundred_percent_x, bar_bottom)
    cairo_stroke(cr)

    if not muted and volume > 0 then
        local normal_color = {0.3, 0.7, 1} -- Cyan
        local over_color = {1, 0.2, 0.2}   -- Red
        local bar_x = debug_x
        local bar_y = debug_y + debug_spacing
        local full_width = debug_width
        local height = debug_height

        --Maximum length = 153% → Divide width by 153
        local scale = full_width / 153

        --Calculate drawing width
        local normal_width = math.min(volume, 100) * scale
        local over_width = (volume > 100 and (volume - 100) * scale or 0)

        --Calculate drawing width
        if normal_width > 0 then
            cairo_set_source_rgba(cr, normal_color[1], normal_color[2], normal_color[3], 0.8)
            rounded_rectangle(bar_x, bar_y, math.max(3, normal_width), height, 3)
            cairo_fill(cr)
        end

        --Excess part drawing (100〜153%)
        if over_width > 0 then
            cairo_set_source_rgba(cr, over_color[1], over_color[2], over_color[3], 0.8)
            rounded_rectangle(bar_x + normal_width, bar_y, over_width, height, 3)
            cairo_fill(cr)
        end
    end

    --Volume text
    write(debug_x - 100, debug_y + debug_height/2 + 6 + debug_spacing, "Volume", 15, main_text_color)
    write(debug_x + debug_width + 10, debug_y + debug_height/2 + 6 + debug_spacing, volume .. "%", 15, main_text_color)

    --Mute status
    if muted then
        write(debug_x - 100, debug_y + debug_height/2 + 6 + debug_spacing * 2, "Muted", 15, main_text_color)
    end
end

local function get_battery_power_watts(battery_device_name)

    local path = "/sys/class/power_supply/" .. battery_device_name .. "/power_now"

    local f = io.popen("cat " .. path .. " 2>/dev/null")
    if f then
        local content = f:read("*a")
        f:close()
        if content then
            local power_microwatts = tonumber(string.match(content, "%d+"))
            if power_microwatts then
                return power_microwatts / 1000000
            end
        end
    end
    return nil
end

function draw_battery()
    if not has_battery then return end
    if not initialized_battery and tonumber(updates()) > startup_delay + 6  then
        init_battery()
    end
    local bat = battery_percent()
    local bat_time = "N/A"
    local formatted_time = "N/A"

    -- Use system commands to obtain battery time (improve update speed)
    if battery1_index ~= nil then
        --Get battery information using acpi command
        local file = io.popen("acpi -b")
        if file then
            local acpi_output = file:read("*a")
            file:close()

            --Extract the time during discharge and shape it into HMS format
            if acpi_output:match("Discharging") then
                bat_time = acpi_output:match("(%d+:%d+:%d+)") or "Calculating..."

                --Convert to HH:MM:SS format
                if bat_time:match("%d+:%d+:%d+") then
                    local h, m, s = bat_time:match("(%d+):(%d+):(%d+)")

                    if h and m and s then
                        formatted_time = h .. "h " .. m .. "m " .. s .. "s"
                    else
                        formatted_time = bat_time
                    end
                else
                    formatted_time = bat_time
                end
            elseif acpi_output:match("Charging") or acpi_output:match("Full") then
                bat_time = "Charging"
                if acpi_output:match("Full") then
                    formatted_time = "Full"
                else
                    --Extract the time until charging is complete
                    local charging_time = acpi_output:match("(%d+:%d+:%d+)")
                    if charging_time then
                        --Convert to HH:MM:SS format
                        local h, m, s = charging_time:match("(%d+):(%d+):(%d+)")
                        if h and m and s then
                            formatted_time = "Charging (" .. h .. "h " .. m .. "m " .. s .. "s left)"
                        else
                            formatted_time = "Charging (" .. charging_time .. " left)"
                        end
                    else
                        formatted_time = bat_time -- "Charging"
                    end
                end
            else -- Unknown or other states
                formatted_time = acpi_output:match("([^,]+)") or "Unknown"
            end
        else
            -- Get conky values if acpi command is not available
            bat_time = parse("battery_time BAT" .. battery1_index)
            if bat_time == "" or bat_time == nil then
                if discharging_battery() then
                    formatted_time = "Calculating..."
                else
                    formatted_time = "Charging"
                end
            else
                -- Convert conky time format as well
                if bat_time:match("%d+:%d+") then
                    local h, m = bat_time:match("(%d+):(%d+)")
                    if h and m then
                        formatted_time = h .. "h " .. m .. "m"
                    else
                        formatted_time = bat_time
                    end
                else
                    formatted_time = bat_time
                end
            end
        end
    end

    ring_anticlockwise(S.battery.x, S.battery.y, S.battery.radius, S.battery.width, S.battery.begin, S.battery.end_, bat, 100, color_frompercent_reverse(tonumber(bat)))
    write(S.battery.text.perc.x, S.battery.text.perc.y, bat .. "%", 15, main_text_color)
    write(S.battery.text.title.x, S.battery.text.title.y, "Battery", 15, main_text_color)

    -- Battery usage time display (HMS format)
    write(S.battery.text.title.x, S.battery.text.title.y + 25, "Remaining Time:    " .. formatted_time, 15, main_text_color)

    local bat_name_to_use = "BAT" .. (battery1_index or 0)
    local cap_now, unit_now = battery_capacity_now(bat_name_to_use)
    local cap_full, unit_full = battery_capacity_full(bat_name_to_use)
    local cap_design, unit_design = battery_capacity_design(bat_name_to_use)

    local capacity_text_y_start = S.battery.text.title.y + 50
    local line_height = 20

    if cap_now and cap_full then
        write(S.battery.text.title.x, capacity_text_y_start,
              string.format("Capacity:          %.0f / %.0f %s", cap_now, cap_full, unit_now or unit_full or ""),
              15, main_text_color)
    elseif cap_now then
         write(S.battery.text.title.x, capacity_text_y_start,
              string.format("Current:           %.0f %s", cap_now, unit_now or ""),
              15, main_text_color)
    end

if cap_design then
        write(S.battery.text.title.x, capacity_text_y_start + line_height + 7,
              string.format("Design:            %.0f %s", cap_design, unit_design or ""),
              15, main_text_color)
    end

    local power_draw_display_y
    if cap_design then
        power_draw_display_y = capacity_text_y_start + (line_height + 7) * 2
    elseif cap_now then
        power_draw_display_y = capacity_text_y_start + line_height + 7
    else
        power_draw_display_y = capacity_text_y_start
    end

    local current_power_watts = get_battery_power_watts(bat_name_to_use)
    if current_power_watts then
        local display_text = string.format("Power Consumption: %.3f W", current_power_watts)
        write(S.battery.text.title.x, power_draw_display_y, display_text, 15, main_text_color)
    end
end

-- 天気予報の設定
local weather_config = {
    api_key = "YOUR_API_KEY", -- OpenWeatherMapのAPIキーに置き換えてください    -- Todo git push時に注意！
    city_id = nil, -- 都市ID
    -- https://qiita.com/shyu61/items/f469eb400b1c8cd84812
    units = "metric", -- 単位系（metric=摂氏、imperial=華氏）
    lang = "en", -- 言語（ja=日本語）
    update_interval = 10, -- 更新間隔（分）
    last_update = 0, -- 最終更新時刻
    weather_data = nil -- 天気データのキャッシュ
}

-- 天気アイコンのマッピング（絵文字→ASCII文字）
local weather_icons = {
    ["01d"] = "●", -- 晴れ（昼）
    ["01n"] = "○", -- 晴れ（夜）
    ["02d"] = "◐", -- 晴れ時々曇り（昼）
    ["02n"] = "◑", -- 晴れ時々曇り（夜）
    ["03d"] = "◯", -- 曇り
    ["03n"] = "◯", -- 曇り
    ["04d"] = "⊗", -- 厚い雲
    ["04n"] = "⊗", -- 厚い雲
    ["09d"] = "/", -- 小雨
    ["09n"] = "/", -- 小雨
    ["10d"] = "☂", -- 雨（昼）
    ["10n"] = "☂", -- 雨（夜）
    ["11d"] = "⚡", -- 雷雨
    ["11n"] = "⚡", -- 雷雨
    ["13d"] = "*", -- 雪
    ["13n"] = "*", -- 雪
    ["50d"] = "≈", -- 霧
    ["50n"] = "≈", -- 霧
    ["unknown"] = "?" -- 不明
}

-- 天気データを取得する関数
local function fetch_weather_data()
    -- 前回の更新から一定時間経過していなければキャッシュを返す
    local current_time = os.time()
    if weather_config.weather_data ~= nil and
       current_time - weather_config.last_update < weather_config.update_interval * 60 then
        return weather_config.weather_data
    end

    -- APIリクエストURL
    local url = string.format(
        "http://api.openweathermap.org/data/2.5/weather?id=%s&appid=%s&units=%s&lang=%s",
        weather_config.city_id,
        weather_config.api_key,
        weather_config.units,
        weather_config.lang
    )

    -- curlでデータを取得
    local cmd = string.format("curl -s '%s'", url)
    local f = io.popen(cmd)
    if not f then return nil end

    local json_data = f:read("*a")
    f:close()

    -- JSON解析（簡易的な解析）
    local weather_data = {}

    -- 都市名
    weather_data.city = string.match(json_data, '"name":"([^"]+)"')

    -- 天気の説明
    weather_data.description = string.match(json_data, '"description":"([^"]+)"')

    -- 天気アイコンコード
    weather_data.icon = string.match(json_data, '"icon":"([^"]+)"')

    -- 気温
    weather_data.temp = tonumber(string.match(json_data, '"temp":([%d%.]+)'))

    -- 体感温度
    weather_data.feels_like = tonumber(string.match(json_data, '"feels_like":([%d%.]+)'))

    -- 湿度
    weather_data.humidity = tonumber(string.match(json_data, '"humidity":([%d%.]+)'))

    -- 風速
    weather_data.wind_speed = tonumber(string.match(json_data, '"speed":([%d%.]+)'))

    -- 更新時刻を記録
    weather_config.last_update = current_time
    weather_config.weather_data = weather_data

    return weather_data
end

-- 天気予報を描画する関数（リング表示）
function draw_weather()
    -- 天気データを取得
    local weather = fetch_weather_data()
    if not weather then return end

    -- タイトルと天気説明
    -- write(S.weather.text.title.x, S.weather.text.title.y, "Weather Forecast", 16, main_text_color)
    write(S.weather.text.city.x, S.weather.text.city.y, "Place: " .. (weather.city or "Unknown"), 15, main_text_color)

    -- 天気アイコンと説明
    local icon = weather_icons[weather.icon] or weather_icons["Unknown"]
    write(S.weather.text.desc.x, S.weather.text.desc.y,
          icon .. " " .. (weather.description or "No information"), 15, main_text_color)

    -- 気温リング（-20°C〜45°C の範囲を想定）
    if weather.temp then
        -- 温度に応じた色を計算
        local temp_color = {}
        if weather.temp < 0 then
            -- 低温（青）desc
            temp_color = {0.2, 0.4, 1}
        elseif weather.temp < 15 then
            -- 涼しい（青緑）
            temp_color = {0, 0.7, 0.7}
        elseif weather.temp < 25 then
            -- 快適（緑）
            temp_color = {0.2, 0.8, 0.2}
        elseif weather.temp < 35 then
            -- 暑い（オレンジ）
            temp_color = {1, 0.6, 0}
        else
            -- 猛暑（赤）
            temp_color = {1, 0.2, 0.2}
        end

        -- 気温を正規化（-20°C〜45°C → 0〜100%）
        local temp_normalized = (weather.temp + 20) / 65 * 83
        temp_normalized = math.max(0, math.min(100, temp_normalized))

        -- 気温リング描画
        ring_clockwise(S.weather.x, S.weather.y, S.weather.radius + 40, S.weather.thickness,
                      S.weather.begin_angle, S.weather.end_angle,
                      temp_normalized, 100, temp_color)

        -- 気温テキスト
        write(S.weather.text.temp.x, S.weather.text.temp.y,
                  string.format("Temperature: %.1f°C", weather.temp), 14, temp_color)
    end

    -- 体感温度リング
    if weather.feels_like then
        -- 体感温度を正規化（-20°C〜45°C → 0〜100%）
        local feels_normalized = (weather.feels_like + 20) / 65 * 83
        feels_normalized = math.max(0, math.min(100, feels_normalized))

        -- 体感温度リング描画
        ring_clockwise(S.weather.x, S.weather.y, S.weather.radius + 20, S.weather.thickness,
                      S.weather.begin_angle, S.weather.end_angle,
                      feels_normalized, 100, main_text_color)

        -- 体感温度テキスト
        write(S.weather.text.feels.x, S.weather.text.feels.y,
              string.format("Effective  : %.1f°C", weather.feels_like), 14, main_text_color)
    end

    -- 湿度リング
    if weather.humidity then
        -- 湿度リング描画
        ring_clockwise(S.weather.x, S.weather.y, S.weather.radius - 20, S.weather.thickness,
                      S.weather.begin_angle, S.weather.end_angle,
                      weather.humidity, 100, main_text_color)

        -- 湿度テキスト
        write(S.weather.text.humidity.x, S.weather.text.humidity.y,
              string.format("Humidity   : %d%%", weather.humidity), 14, main_text_color)
    end

    -- 風速リング（0〜20 m/s を想定）
    if weather.wind_speed then
        -- 風速を正規化（0〜20 m/s → 0〜100%）
        local wind_normalized = math.min(weather.wind_speed / 20 * 100, 100)

        -- 風速リング描画
        ring_clockwise(S.weather.x, S.weather.y, S.weather.radius, S.weather.thickness,
                      S.weather.begin_angle, S.weather.end_angle,
                      wind_normalized, 100, main_text_color)

        -- 風速テキスト
        write(S.weather.text.wind.x, S.weather.text.wind.y,
              string.format("Wind       : %.1f m/s", weather.wind_speed), 14, main_text_color)
    end

    -- 最終更新時刻
    local update_time = os.date("%H:%M", weather_config.last_update)
    write(S.weather.text.update.x, S.weather.text.update.y, "Update: " .. update_time, 14, main_text_color)
end