add_library(nuklear STATIC
    "${nuklear_SOURCE_DIR}/src/nuklear.h"
    "${nuklear_SOURCE_DIR}/src/nuklear_internal.h"
    "${nuklear_SOURCE_DIR}/src/nuklear_9slice.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_buffer.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_button.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_chart.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_color.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_color_picker.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_combo.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_context.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_contextual.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_draw.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_edit.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_font.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_group.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_image.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_input.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_layout.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_list_view.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_math.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_menu.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_page_element.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_panel.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_pool.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_popup.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_progress.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_property.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_scrollbar.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_selectable.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_slider.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_string.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_style.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_table.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_text.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_text_editor.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_toggle.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_tooltip.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_tree.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_utf8.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_util.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_vertex.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_widget.c"
    "${nuklear_SOURCE_DIR}/src/nuklear_window.c"
)

target_include_directories(nuklear SYSTEM PUBLIC
    "${nuklear_SOURCE_DIR}/src"
)

target_compile_definitions(nuklear PUBLIC
    NK_INCLUDE_DEFAULT_FONT
    NK_INCLUDE_FIXED_TYPES
    NK_INCLUDE_DEFAULT_ALLOCATOR
    NK_INCLUDE_STANDARD_BOOL
    NK_INCLUDE_FONT_BAKING
    NK_INCLUDE_STANDARD_VARARGS
    NK_MEMSET=memset
    NK_MEMCPY=memcpy
)

set_target_properties(nuklear PROPERTIES COMPILE_OPTIONS "-include;string.h")