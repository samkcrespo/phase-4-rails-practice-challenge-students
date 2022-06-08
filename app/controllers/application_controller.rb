class ApplicationController < ActionController::API

#   ## UPDATE / CREATE
#    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

#   ## SHOW / DESTROY / UPDATE
#    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

#   private

#     def render_unprocessable_entity_response(invalid)
#         render json: { errors: invalid.record.errors }, status: :unprocessable_entity
#     end

#     def render_not_found_response(not_found)
#         render json: { errors: "Count Not Find Record With ID #{not_found.id}"}
#     end
end
