class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @milestones = Milestone.find(:all, :order => "finished_by ASC", :conditions => {:status => "1"}, :limit => "1")
    @tasks = Task.find(:all, :order => "finished_by ASC", :conditions => {:status => "1"})
    @versions = Version.find(:all, :order => "deployed_at DESC", :limit => "1")
    @tickets = Ticket.find(:all, :order => "created_at DESC", :limit => 5)
  end

  def project_page

  end
end
