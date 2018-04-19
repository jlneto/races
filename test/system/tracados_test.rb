require "application_system_test_case"

class TracadosTest < ApplicationSystemTestCase
  setup do
    @tracado = tracados(:one)
  end

  test "visiting the index" do
    visit tracados_url
    assert_selector "h1", text: "Tracados"
  end

  test "creating a Tracado" do
    visit tracados_url
    click_on "New Tracado"

    fill_in "Imagem", with: @tracado.imagem
    fill_in "Melhor Tempo", with: @tracado.melhor_tempo
    fill_in "Nome", with: @tracado.nome
    fill_in "Pista", with: @tracado.pista
    click_on "Create Tracado"

    assert_text "Tracado was successfully created"
    click_on "Back"
  end

  test "updating a Tracado" do
    visit tracados_url
    click_on "Edit", match: :first

    fill_in "Imagem", with: @tracado.imagem
    fill_in "Melhor Tempo", with: @tracado.melhor_tempo
    fill_in "Nome", with: @tracado.nome
    fill_in "Pista", with: @tracado.pista
    click_on "Update Tracado"

    assert_text "Tracado was successfully updated"
    click_on "Back"
  end

  test "destroying a Tracado" do
    visit tracados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tracado was successfully destroyed"
  end
end
