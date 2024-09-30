{
  plugins = {
    todo-comments = {
      enable = true;
      settings = {
        signs = true;
        sign_priority = 8;
        colors = {
          default = [
            "Identifier"
            "#7C3AED"
          ];
          error = [
            "DiagnosticError"
            "ErrorMsg"
            "#DC2626"
          ];
          hint = [
            "DiagnosticHint"
            "#10B981"
          ];
          info = [
            "DiagnosticInfo"
            "#2563EB"
          ];
          test = [
            "Identifier"
            "#FF00FF"
          ];
          warning = [
            "DiagnosticWarn"
            "WarningMsg"
            "#FBBF24"
          ];
        };
        gui_style.fg = "NONE";

        gui_style.bg = "BOLD";
        highlight.after = "fg";
        highlight.comments_only = true;
        highlight.max_line_len = 400;
        highlight.multiline = true;
        highlight.multiline_context = 10;
        # EXAMPLES
        # TODO:
        # HACK: 
        # FIX: 
        # WARN:
        # PERF: 
        # NOTE: 
        # TEST: 
        keywords = {
          FIX = {
            alt = [
              "FIXME"
              "BUG"
              "FIXIT"
              "ISSUE"
            ];
            color = "error";
            icon = " ";
          };
          HACK = {
            color = "warning";
            icon = " ";
          };
          NOTE = {
            alt = [
              "INFO"
            ];
            color = "hint";
            icon = " ";
          };
          PERF = {
            alt = [
              "OPTIM"
              "PERFORMANCE"
              "OPTIMIZE"
            ];
            icon = " ";
          };
          TEST = {
            alt = [
              "TESTING"
              "PASSED"
              "FAILED"
            ];
            color = "test";
            icon = "⏲ ";
          };
          TODO = {
            color = "info";
            icon = " ";
          };
          WARN = {
            alt = [
              "WARNING"
              "XXX"
            ];
            color = "warning";
            icon = " ";
          };
        };
      };
    };
  };
}




































