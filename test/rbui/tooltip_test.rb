# frozen_string_literal: true

require "test_helper"

class RBUI::TooltipTest < Minitest::Test
  include Phlex::Testing::ViewHelper

  def test_render_with_all_items
    output = phlex_context do
      RBUI.Tooltip do
        RBUI.TooltipTrigger do
          PhlexUI.Button(variant: :outline, icon: true) { "?" }
        end
        RBUI.TooltipContent do
          PhlexUI.TypographyP { "Add to library" }
        end
      end
    end

    assert_match(/Add to library/, output)
  end
end