/*
  note-column-reg.cc -- implement Note_column_register

  source file of the LilyPond music typesetter

  (c) 1997 Han-Wen Nienhuys <hanwen@stack.nl>
*/

#include "note-column-reg.hh"
#include "notehead.hh"
#include "stem.hh"
#include "note-column.hh"
#include "script.hh"
#include "rest-column.hh"

bool
Note_column_register::acceptable_elem_b(Staff_elem const*elem_C)const
{
    char const*nC = elem_C->name();
    return (nC == Script::static_name() || nC == Notehead::static_name() 
	    || nC == Stem::static_name());
}
Note_column*
Note_column_register::note_col_l()
{
    if (!ncol_p_){
	ncol_p_ = new Note_column;
	announce_element(Staff_elem_info(ncol_p_, 0));
    }
    return ncol_p_;
}

Rest_column *
Note_column_register::rest_col_l()
{
    if (!restcol_p_) {
	restcol_p_  = new Rest_column;
	announce_element(Staff_elem_info(restcol_p_,0));
    }
    return restcol_p_;
}

void
Note_column_register::acknowledge_element(Staff_elem_info i)
{
    if (!acceptable_elem_b(i.elem_l_))
	return;


    char const*nC = i.elem_l_->name();

    if (nC == Script::static_name()) {
	script_l_arr_.push((Script*)i.elem_l_);
    } else if (nC == Notehead::static_name()) {
	Notehead * h_l = (Notehead*)i.elem_l_;
	if (h_l->rest_b_)
	    rest_col_l()->add(h_l);
	else
	    note_col_l()->add(h_l);
    }
    else if (nC == Stem::static_name()){ 
	stem_l_ = (Stem*)i.elem_l_;
    }
}

void
Note_column_register::pre_move_processing()
{
    Script_column *col_l = ( ncol_p_ ) ? ncol_p_ : restcol_p_;
    if (!col_l)
	return;
    
    for (int i=0; i < script_l_arr_.size(); i++)
	col_l->add(script_l_arr_[i]);
    
    if (ncol_p_&&stem_l_)
	ncol_p_->add(stem_l_);
    if (restcol_p_) {
	if (! restcol_p_ -> dir_i_)
	    restcol_p_->dir_i_ = dir_i_;
	typeset_element(restcol_p_);
	restcol_p_ =0;
    }
    if (ncol_p_) {
	if (!	ncol_p_->dir_i_ )
	    ncol_p_->dir_i_ = dir_i_;
	if (! ncol_p_->h_shift_b_)
	    ncol_p_->h_shift_b_ = h_shift_b_;
	typeset_element(ncol_p_);
	ncol_p_ =0;
    }
}

void
Note_column_register::post_move_processing()
{
    script_l_arr_.set_size(0);
    stem_l_ =0;
}

void
Note_column_register::set_feature(Feature i)
{
     if (i.type_ == "vdir")	
	dir_i_ = i.value_;
     if (i.type_ == "hshift")
	 h_shift_b_ = i.value_;
}

Note_column_register::Note_column_register()
{
    dir_i_ =0;
    h_shift_b_ = false;
    
    ncol_p_=0;
    restcol_p_ =0;
    post_move_processing();
}
IMPLEMENT_STATIC_NAME(Note_column_register);
ADD_THIS_REGISTER(Note_column_register);
