defmodule EliXero.CoreApi.Overpayments do
  @api_type :core
  @resource "overpayments"

  def find(client) do
    EliXero.CoreApi.Common.find(client, @resource)
  end

  def find(client, identifier) do
    EliXero.CoreApi.Common.find(client, @resource, identifier)
  end

  def filter(client, filter) do
    EliXero.CoreApi.Common.filter(client, @resource, filter)
  end

  def allocate_overpayment(client, identifier, allocations_map) do
    resource = @resource <> "/" <> identifier <> "/allocations"
    EliXero.CoreApi.Common.create(client, resource, allocations_map)
  end
end