require "application_system_test_case"

class PilotosTest < ApplicationSystemTestCase
  setup do
    @piloto = pilotos(:one)
  end

  test "visiting the index" do
    visit pilotos_url
    assert_selector "h1", text: "Pilotos"
  end

  test "creating a Piloto" do
    visit pilotos_url
    click_on "New Piloto"

    fill_in "Apelido", with: @piloto.apelido
    fill_in "Celular", with: @piloto.celular
    fill_in "Cpf", with: @piloto.cpf
    fill_in "Email", with: @piloto.email
    fill_in "Nascimento", with: @piloto.nascimento
    fill_in "Nome", with: @piloto.nome
    click_on "Create Piloto"

    assert_text "Piloto was successfully created"
    click_on "Back"
  end

  test "updating a Piloto" do
    visit pilotos_url
    click_on "Edit", match: :first

    fill_in "Apelido", with: @piloto.apelido
    fill_in "Celular", with: @piloto.celular
    fill_in "Cpf", with: @piloto.cpf
    fill_in "Email", with: @piloto.email
    fill_in "Nascimento", with: @piloto.nascimento
    fill_in "Nome", with: @piloto.nome
    click_on "Update Piloto"

    assert_text "Piloto was successfully updated"
    click_on "Back"
  end

  test "destroying a Piloto" do
    visit pilotos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Piloto was successfully destroyed"
  end
end
