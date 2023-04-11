# frozen_string_literal: true

class PingController < ApplicationController
  def pong
    render plain: "pong", status: :ok
  end
end
