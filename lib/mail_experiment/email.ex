defmodule MailExperiment.Email do
  import Swoosh.Email

  def create_email() do
    new()
    |> to({"hoge", "hoge@local.local"})
    |> from({"YMN test", "ymn@local.local"})
    |> subject("Test mail")
    |> html_body("<h1>こんにちはhogeさん</h1>")
    |> text_body("こんにちはhogeさん\n")
  end
end
