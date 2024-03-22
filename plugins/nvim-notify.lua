return {
  -- NOTE: default nvim-notify plugin timeout is too long, so customize the configuration here.
  -- see https://www.bilibili.com/video/BV1by421z792/?spm_id_from=333.788&vd_source=e176103e1d420f6a2c95ba18aeef0be2 for details

  -- use `<leader>fn` to find detailed notifications
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  opts = {
    stages = "static",
    -- render = "compact",
    max_width = "40",
    fps = 5,
    timeout = 1500, -- ms
  },
}
