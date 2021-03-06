local M = {}

M.tbl = {
        {3},
        {3,3},
        -- 一组
        {1,1,1},
        -- 二组
        {2,2,2},{1,1,4},{1,4,1},{4,1,1},
        -- 三组
        {3,3,3},{1,4,4},{4,1,4},{4,4,1},
        -- 四组
        {4,4,4},

        -- 长度 4
        -- 两组
        {1,1,1,3},{3,1,1,1},{1,2,2,1},
        -- 三组,无刻
        {2,3,3,1},{1,3,3,2},
        -- 三组,一刻
        {1,2,2,4},{4,2,2,1},
        -- 三组,两刻
        {1,1,4,3},{1,4,1,3},{4,1,1,3},
        {3,1,1,4},{3,1,4,1},{3,4,1,1},
        -- 四组
        {2,4,4,2},{3,4,4,1},{1,4,4,3},{3,3,3,3},

        --长度5
        -- 两组
        {1,1,2,1,1},
        -- 三组,无刻
        {2,2,3,1,1},{1,2,3,2,1},{1,1,3,2,2},
        -- 三组，一刻
        {1,1,2,1,4},{1,1,2,4,1},{1,4,2,1,1},{4,1,2,1,1},{3,1,2,2,1},{1,2,2,1,3},
        -- 三组，二刻
        {1,1,1,3,3},{3,3,1,1,1},
        -- 四组，无刻 由三组无刻 + 1刻
        {3,3,4,1,1},{2,3,4,2,1},{2,2,4,2,2},
        {2,3,4,2,1},{1,3,4,3,1},{1,2,4,3,2},
        {2,2,4,2,2},{1,2,4,3,2},{1,1,4,3,3},
        -- 四组，无刻 4长的三组无刻 连 1刻

        -- 四组，一刻
        {2,2,3,1,4},{2,2,3,4,1},
        {1,2,3,2,4},{4,2,3,2,1},
        {1,4,3,2,2},{4,1,3,2,2},
        -- 四组，二刻
        {2,2,3,4,4},{4,2,3,2,4},{4,4,3,2,2},
        -- 四组，三刻
        {1,1,4,3,3},{1,4,1,3,3},{4,1,1,3,3},
        {3,3,1,1,4},{3,3,1,4,1},{3,3,4,1,1},

        -- 长度6
        -- 两组
        {1,1,1,1,1,1},
        -- 三组，无刻
        {1,1,1,2,2,2},{1,1,2,2,2,1},{1,2,2,2,1,1},{2,2,2,1,1,1},
        -- 三组，一刻
        {1,1,1,1,1,4},{1,1,1,1,4,1},{1,1,1,4,1,1},{1,1,4,1,1,1},{1,4,1,1,1,1},{4,1,1,1,1,1},
        -- 四组，无刻
        {2,2,2,2,2,2},{1,2,3,3,2,1},{1,2,3,3,2,1},
        -- 四组，一刻, （由三组无刻 + 刻形成）
        {1,1,4,2,2,2},{1,4,1,2,2,2},{4,1,1,2,2,2},
        {1,1,2,2,2,4},{1,4,2,2,2,1},{4,1,2,2,2,1},
        {1,2,2,2,1,4},{1,2,2,2,4,1},{4,2,2,2,1,1},
        {2,2,2,1,1,4},{2,2,2,1,4,1},{2,2,2,4,1,1},
        -- 四组，二刻，（由二组无刻 + 二刻形成)
        {4,4,1,1,1,1},{1,4,4,1,1,1},{1,1,4,4,1,1},{1,1,1,4,4,1},{1,1,1,1,4,4},
        {4,1,4,1,1,1},{1,4,1,4,1,1},{1,1,4,1,4,1},{1,1,1,4,1,4},
        {4,1,1,4,1,1},{1,4,1,1,4,1},{1,1,4,1,1,4},
        {4,1,1,1,4,1},{1,4,1,1,1,4},
        {4,1,1,1,1,4},
        -- 四组，三刻
        {1,1,1,3,3,3},{3,3,3,1,1,1},

        -- 长度7
        -- 三组，无刻
        {1,1,1,1,2,2,1},{1,2,2,1,1,1,1},{1,1,2,1,2,1,1},
        -- 三组，1刻
        {1,1,1,1,1,1,3},{3,1,1,1,1,1,1},{1,1,1,3,1,1,1},
        -- 四组，无刻
        {2,2,2,1,2,2,1},{1,2,2,2,2,2,1},{1,1,2,2,3,2,1},{1,1,1,2,3,3,1},{1,1,1,1,3,3,2},
        {2,3,3,1,1,1,1},{1,3,3,2,1,1,1},{1,2,3,2,2,1,1},{1,2,2,2,2,2,1},{1,2,2,1,2,2,2},
        -- 四组，1刻 （由三组无刻)
        {1,1,1,1,2,2,4},{1,1,1,4,2,2,1},{1,1,4,1,2,2,1},{1,4,1,1,2,2,1},{4,1,1,1,2,2,1},
        {1,2,2,1,1,1,4},{1,2,2,1,1,4,1},{1,2,2,1,4,1,1},{1,2,2,4,1,1,1},{4,2,2,1,1,1,1},
        {4,1,2,1,2,1,1},{1,4,2,1,2,1,1},{1,1,2,4,2,1,1},{1,1,2,1,2,4,1},{1,1,2,1,2,1,4},
        -- 长度6的三组无刻 连 一刻
        {1,1,1,2,2,2,3},{1,1,1,3,2,2,2},{3,1,1,1,2,2,2},
        {3,1,1,2,2,2,1},{1,1,2,2,2,1,3},
        {3,1,2,2,2,1,1},{1,2,2,2,1,1,2},
        {2,2,2,1,1,1,3},{2,2,2,3,1,1,1},{3,2,2,2,1,1,1},

        -- 四组，2刻  (由三组1刻 + 1刻组成)
        {1,1,1,1,1,4,3},{1,1,1,1,4,1,3},{1,1,1,4,1,1,3},{1,1,4,1,1,1,3},{1,4,1,1,1,1,3},{4,1,1,1,1,1,3},
        {3,1,1,1,1,1,4},{3,1,1,1,1,4,1},{3,1,1,1,4,1,1},{3,1,1,4,1,1,1},{3,1,4,1,1,1,1},{3,4,1,1,1,1,1},
        {1,1,1,3,1,1,4},{1,1,1,3,1,4,1},{1,1,1,3,4,1,1},{1,1,4,3,1,1,1},{1,4,1,3,1,1,1},{4,1,1,3,1,1,1},

        -- 长度8
        -- 三组
        {1,1,1,1,1,2,1,1},{1,1,2,1,1,1,1,1},
        -- 四组无刻
        {2,2,2,1,1,2,1,1},{1,2,2,2,1,2,1,1},{1,1,2,2,2,2,1,1},{1,1,1,2,2,3,1,1},{1,1,1,1,2,3,2,1},{1,1,1,1,1,3,2,2},
        {2,2,3,1,1,1,1,1},{1,2,3,2,1,1,1,1},{1,1,3,2,2,1,1,1},{1,1,2,2,2,2,1,1},{1,1,2,1,2,2,2,1},{1,1,2,1,1,2,2,2},
        -- 四组一刻
        {1,1,1,1,1,2,1,4},{1,1,1,1,1,2,4,1},{1,1,1,1,4,2,1,1},{1,1,1,4,1,2,1,1},{1,1,4,1,1,2,1,1},{1,4,1,1,1,2,1,1},{4,1,1,1,1,2,1,1},
        {1,1,2,1,1,1,1,4},{1,1,2,1,1,1,4,1},{1,1,2,1,1,4,1,1},{1,1,2,1,4,1,1,1},{1,1,2,4,1,1,1,1},{1,4,2,1,1,1,1,1},{4,1,2,1,1,1,1,1},

        -- 长度9
        -- 三组
        {1,1,1,1,1,1,1,1,1},
        -- 四组
        {4,1,1,1,1,1,1,1,1},
        {1,4,1,1,1,1,1,1,1},
        {1,1,4,1,1,1,1,1,1},
        {1,1,1,4,1,1,1,1,1},
        {1,1,1,1,4,1,1,1,1},
        {1,1,1,1,1,4,1,1,1},
        {1,1,1,1,1,1,4,1,1},
        {1,1,1,1,1,1,1,4,1},
        {1,1,1,1,1,1,1,1,4},
}

local function gen_hash()
    M.hash_tbl = {}
    for _,v in ipairs(M.tbl) do
        local num = 0
        for _,c in ipairs(v) do
            num = num*10 + c
        end

        M.hash_tbl[num] = v
    end
end

gen_hash()

function M.check(t)
    local num = 0
    for _,c in ipairs(t) do
        num = num * 10 + c
    end

    return M.hash_tbl[num]
end

return M
