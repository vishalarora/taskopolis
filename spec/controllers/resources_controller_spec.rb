require "rails_helper"

RSpec.describe ResourcesController, type: :controller do

  let(:valid_attributes) {
    {
      name: 'Fake Resource Name',
      value: 200
    }
  }

  let(:invalid_attributes) {
    {
      name: 300,
      value: 'twenty two'
    }
  }

  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all resources as @resources" do
      resource = Resource.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:resources)).to eq([resource])
    end
  end

  describe "GET #new" do
    it "assigns a new resource as @resource" do
      get :new, params: {}, session: valid_session
      expect(assigns(:resource)).to be_a_new(Resource)
    end
  end

  describe "GET #edit" do
    it "assigns the requested resource as @resource" do
      resource = Resource.create! valid_attributes
      get :edit, params: {id: resource.to_param}, session: valid_session
      expect(assigns(:resource)).to eq(resource)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Resource" do
        expect {
          post :create, params: {resource: valid_attributes}, session: valid_session
        }.to change(Resource, :count).by(1)
      end

      it "assigns a newly created resource as @resource" do
        post :create, params: {resource: valid_attributes}, session: valid_session
        expect(assigns(:resource)).to be_a(Resource)
        expect(assigns(:resource)).to be_persisted
      end

      it "redirects to the created resource" do
        post :create, params: {resource: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Resource.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved resource as @resource" do
        post :create, params: {resource: invalid_attributes}, session: valid_session
        expect(assigns(:resource)).to be_a_new(Resource)
      end

      it "re-renders the 'new' template" do
        post :create, params: {resource: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested resource" do
        resource = Resource.create! valid_attributes
        put :update, params: {id: resource.to_param, resource: new_attributes}, session: valid_session
        resource.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested resource as @resource" do
        resource = Resource.create! valid_attributes
        put :update, params: {id: resource.to_param, resource: valid_attributes}, session: valid_session
        expect(assigns(:resource)).to eq(resource)
      end

      it "redirects to the resource" do
        resource = Resource.create! valid_attributes
        put :update, params: {id: resource.to_param, resource: valid_attributes}, session: valid_session
        expect(response).to redirect_to(resource)
      end
    end

    context "with invalid params" do
      it "assigns the resource as @resource" do
        resource = Resource.create! valid_attributes
        put :update, params: {id: resource.to_param, resource: invalid_attributes}, session: valid_session
        expect(assigns(:resource)).to eq(resource)
      end

      it "re-renders the 'edit' template" do
        resource = Resource.create! valid_attributes
        put :update, params: {id: resource.to_param, resource: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested resource" do
      resource = Resource.create! valid_attributes
      expect {
        delete :destroy, params: {id: resource.to_param}, session: valid_session
      }.to change(Resource, :count).by(-1)
    end

    it "redirects to the resources list" do
      resource = Resource.create! valid_attributes
      delete :destroy, params: {id: resource.to_param}, session: valid_session
      expect(response).to redirect_to(resources_url)
    end
  end

end
