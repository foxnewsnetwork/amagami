class Apiv1::Challengers::CreateController < ApplicationController
  def create
    _creation_process.call
  end
  private
  def _creation_process
    _challenger_params >> _new_challenger >> _validate >> (_render_success ^ _render_failure)
  end
  def _challenger_params
    Arrows.lift params.require(:challenger).permit *Apiv1::Challenger::Fields
  end
  def _new_challenger 
    Arrows.lift -> (p) { Apiv1::Challenger.new p }
  end
  def _validate 
    Arrows.lift -> (challenger) { challenger.valid? ? Arrows.good(challenger) : Arrows.evil(challenger) }
  end
  def _render_success
    _persist >> _render_out
  end
  def _render_out
    Arrows.lift -> (challenger) { render json: { challenger: challenger.attributes } }
  end
  def _persist
    Arrows.lift -> (challenger) { challenger.tap(&:save!) }
  end
  def _render_failure
    Arrows.lift -> (challenger) { render json: { challenger: challenger.errors.to_h }, status: :not_acceptable }
  end
end