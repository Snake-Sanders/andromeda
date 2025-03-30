defmodule AndromedaWeb.PageHTML do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  use AndromedaWeb, :html

  embed_templates "page_html/*"

  def galaxy_bg(assigns) do
    ~H"""
    <div class="bg-[url(/images/andromeda-bg.webp)] bg-cover bg-center h-full w-full">
      <div class="flex items-center justify-center h-full text-white text-4xl font-bold"></div>
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
