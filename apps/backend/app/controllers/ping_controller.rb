# frozen_string_literal: true

class PingController < ApplicationController
  def pong
    render json: { message: "pong" }, status: :ok
  end
end
