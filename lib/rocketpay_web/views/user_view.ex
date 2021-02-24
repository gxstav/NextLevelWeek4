defmodule RocketpayWeb.UserView do
  use RocketpayWeb, :view
  alias Rocketpay.User
  def render("create.json", %{user: %User{id: id, name: name, nickname: nickname}}) do
    %{
      message: "User created",
      user: %{
        id: id,
        name: name,
        nickname: nickname
      }
    }
  end
  def template_not_found(template, _assigns) do
    %{errors: %{detail: Phoenix.Controller.status_message_from_template(template)}}
  end
end
