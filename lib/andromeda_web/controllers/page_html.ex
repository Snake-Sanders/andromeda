defmodule AndromedaWeb.PageHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use AndromedaWeb, :html

  embed_templates "page_html/*"

  def galaxy_bg(assigns) do
    ~H"""
    <div class="relative bg-[url(/images/andromeda-bg.webp)] bg-cover bg-center h-full w-full">
      <div id="right-gradient" class="absolute right-0 w-1/6 h-full bg-gradient-to-r from-transparent to-background"></div>
      <div id="bottom-gradient" class="absolute bottom-0 w-full h-1/6 lg:h-2/6 bg-gradient-to-b from-transparent to-background"></div>
      <div class="flex items-center justify-center h-full text-white text-4xl font-bold relative z-10"></div>
    </div>
    """
  end

  def tooling_version(assigns) do
    ~H"""
    <div>
      <h1 class=" mt-10 flex items-center text-sm  leading-6">
        <p>
          This page was built with
          <spam class="">
            Phoenix Framework
            <small class="font-semibold text-[0.8125rem] rounded-full px-2 font-medium leading-6">
              v{Application.spec(:phoenix, :vsn)}
            </small>
          </spam>
        </p>
      </h1>
    </div>
    """
  end
end
