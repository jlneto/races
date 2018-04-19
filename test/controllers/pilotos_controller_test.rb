require 'test_helper'

class PilotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @piloto = pilotos(:one)
  end

  test "should get index" do
    get pilotos_url
    assert_response :success
  end

  test "should get new" do
    get new_piloto_url
    assert_response :success
  end

  test "should create piloto" do
    assert_difference('Piloto.count') do
      post pilotos_url, params: { piloto: { apelido: @piloto.apelido, celular: @piloto.celular, cpf: @piloto.cpf, email: @piloto.email, nascimento: @piloto.nascimento, nome: @piloto.nome } }
    end

    assert_redirected_to piloto_url(Piloto.last)
  end

  test "should show piloto" do
    get piloto_url(@piloto)
    assert_response :success
  end

  test "should get edit" do
    get edit_piloto_url(@piloto)
    assert_response :success
  end

  test "should update piloto" do
    patch piloto_url(@piloto), params: { piloto: { apelido: @piloto.apelido, celular: @piloto.celular, cpf: @piloto.cpf, email: @piloto.email, nascimento: @piloto.nascimento, nome: @piloto.nome } }
    assert_redirected_to piloto_url(@piloto)
  end

  test "should destroy piloto" do
    assert_difference('Piloto.count', -1) do
      delete piloto_url(@piloto)
    end

    assert_redirected_to pilotos_url
  end
end
