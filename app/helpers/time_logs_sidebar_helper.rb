module TimeLogsSidebarHelper
  def sidebar_queries
    return @sidebar_queries if @sidebar_queries
    @sidebar_queries = TimeLogQuery.visible
    @project.nil? ? @sidebar_queries.where(project_id: nil) : @sidebar_queries.where(project_id: [nil, @project.id])
    @sidebar_queries.order(name: :asc)
  end
end
