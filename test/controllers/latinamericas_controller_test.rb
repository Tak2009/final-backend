require 'test_helper'

class LatinamericasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @latinamerica = latinamericas(:one)
  end

  test "should get index" do
    get latinamericas_url, as: :json
    assert_response :success
  end

  test "should create latinamerica" do
    assert_difference('Latinamerica.count') do
      post latinamericas_url, params: { latinamerica: { category: @latinamerica.category, http_url: @latinamerica.http_url, id_number: @latinamerica.id_number, image_url: @latinamerica.image_url, location: @latinamerica.location, rating: @latinamerica.rating, region: @latinamerica.region, short_description: @latinamerica.short_description, site: @latinamerica.site, states: @latinamerica.states } }, as: :json
    end

    assert_response 201
  end

  test "should show latinamerica" do
    get latinamerica_url(@latinamerica), as: :json
    assert_response :success
  end

  test "should update latinamerica" do
    patch latinamerica_url(@latinamerica), params: { latinamerica: { category: @latinamerica.category, http_url: @latinamerica.http_url, id_number: @latinamerica.id_number, image_url: @latinamerica.image_url, location: @latinamerica.location, rating: @latinamerica.rating, region: @latinamerica.region, short_description: @latinamerica.short_description, site: @latinamerica.site, states: @latinamerica.states } }, as: :json
    assert_response 200
  end

  test "should destroy latinamerica" do
    assert_difference('Latinamerica.count', -1) do
      delete latinamerica_url(@latinamerica), as: :json
    end

    assert_response 204
  end
end
