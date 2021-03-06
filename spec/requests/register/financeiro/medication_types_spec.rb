 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/register/financeiro/medication_types", type: :request do
  # Register::Financeiro::MedicationType. As you add validations to Register::Financeiro::MedicationType, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Register::Financeiro::MedicationType.create! valid_attributes
      get register_financeiro_medication_types_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      medication_type = Register::Financeiro::MedicationType.create! valid_attributes
      get register_financeiro_medication_type_url(register_financeiro_medication_type)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_register_financeiro_medication_type_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      medication_type = Register::Financeiro::MedicationType.create! valid_attributes
      get edit_register_financeiro_medication_type_url(register_financeiro_medication_type)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Register::Financeiro::MedicationType" do
        expect {
          post register_financeiro_medication_types_url, params: { register/financeiro_medication_type: valid_attributes }
        }.to change(Register::Financeiro::MedicationType, :count).by(1)
      end

      it "redirects to the created register/financeiro_medication_type" do
        post register_financeiro_medication_types_url, params: { register/financeiro_medication_type: valid_attributes }
        expect(response).to redirect_to(register_financeiro_medication_type_url(@register_financeiro_medication_type))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Register::Financeiro::MedicationType" do
        expect {
          post register_financeiro_medication_types_url, params: { register/financeiro_medication_type: invalid_attributes }
        }.to change(Register::Financeiro::MedicationType, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post register_financeiro_medication_types_url, params: { register/financeiro_medication_type: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested register/financeiro_medication_type" do
        medication_type = Register::Financeiro::MedicationType.create! valid_attributes
        patch register_financeiro_medication_type_url(register_financeiro_medication_type), params: { register_financeiro_medication_type: new_attributes }
        medication_type.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the register/financeiro_medication_type" do
        medication_type = Register::Financeiro::MedicationType.create! valid_attributes
        patch register_financeiro_medication_type_url(register_financeiro_medication_type), params: { register_financeiro_medication_type: new_attributes }
        medication_type.reload
        expect(response).to redirect_to(register_financeiro_medication_type_url(medication_type))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        medication_type = Register::Financeiro::MedicationType.create! valid_attributes
        patch register_financeiro_medication_type_url(register_financeiro_medication_type), params: { register_financeiro_medication_type: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested register/financeiro_medication_type" do
      medication_type = Register::Financeiro::MedicationType.create! valid_attributes
      expect {
        delete register_financeiro_medication_type_url(register_financeiro_medication_type)
      }.to change(Register::Financeiro::MedicationType, :count).by(-1)
    end

    it "redirects to the register_financeiro_medication_types list" do
      medication_type = Register::Financeiro::MedicationType.create! valid_attributes
      delete register_financeiro_medication_type_url(register_financeiro_medication_type)
      expect(response).to redirect_to(register_financeiro_medication_types_url)
    end
  end
end
