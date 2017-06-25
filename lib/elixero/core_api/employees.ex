defmodule EliXero.CoreApi.Employees do
  @resource "employees"

  def find(client) do
    EliXero.CoreApi.Common.find(client, @resource)
  end

  def find(client, identifier) do
    EliXero.CoreApi.Common.find(client, @resource, identifier)
  end

  def filter(client, filter) do
    EliXero.CoreApi.Common.filter(client, @resource, filter)
  end

  def create(client, employees_map) do
    EliXero.CoreApi.Common.create(client, @resource, employees_map)
  end

  def update(client, identifier, employees_map) do
    EliXero.CoreApi.Common.update(client, @resource, identifier, employees_map)
  end
end