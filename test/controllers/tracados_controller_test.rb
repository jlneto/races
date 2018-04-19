require 'test_helper'

class TracadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tracado = tracados(:one)
  end

  test "should get index" do
    get tracados_url
    assert_response :success
  end

  test "should get new" do
    get new_tracado_url
    assert_response :success
  end

  test "should create tracado" do
    assert_difference('Tracado.count') do
      post tracados_url, params: { tracado: { imagem: @tracado.imagem, melhor_tempo: @tracado.melhor_tempo, nome: @tracado.nome, pista: @tracado.pista } }
    end

    assert_redirected_to tracado_url(Tracado.last)
  end

  test "should show tracado" do
    get tracado_url(@tracado)
    assert_response :success
  end

  test "should get edit" do
    get edit_tracado_url(@tracado)
    assert_response :success
  end

  test "should update tracado" do
    patch tracado_url(@tracado), params: { tracado: { imagem: @tracado.imagem, melhor_tempo: @tracado.melhor_tempo, nome: @tracado.nome, pista: @tracado.pista } }
    assert_redirected_to tracado_url(@tracado)
  end

  test "should destroy tracado" do
    assert_difference('Tracado.count', -1) do
      delete tracado_url(@tracado)
    end

    assert_redirected_to tracados_url
  end
end
