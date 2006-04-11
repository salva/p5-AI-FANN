
MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

enum fann_train_enum
accessor_training_algorithm(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                enum fann_train_enum value = (enum fann_train_enum)_sv2fann_train_enum(ST(1));
                fann_set_training_algorithm(self, value);
            }
        case 1:
            RETVAL = fann_get_training_algorithm(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::training_algorithm(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

enum fann_errorfunc_enum
accessor_train_error_function(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                enum fann_errorfunc_enum value = (enum fann_errorfunc_enum)_sv2fann_errorfunc_enum(ST(1));
                fann_set_train_error_function(self, value);
            }
        case 1:
            RETVAL = fann_get_train_error_function(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::train_error_function(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

enum fann_stopfunc_enum
accessor_train_stop_function(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                enum fann_stopfunc_enum value = (enum fann_stopfunc_enum)_sv2fann_stopfunc_enum(ST(1));
                fann_set_train_stop_function(self, value);
            }
        case 1:
            RETVAL = fann_get_train_stop_function(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::train_stop_function(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

float
accessor_learning_rate(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                float value = (float)SvNV(ST(1));
                fann_set_learning_rate(self, value);
            }
        case 1:
            RETVAL = fann_get_learning_rate(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::learning_rate(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

float
accessor_learning_momentum(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                float value = (float)SvNV(ST(1));
                fann_set_learning_momentum(self, value);
            }
        case 1:
            RETVAL = fann_get_learning_momentum(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::learning_momentum(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

fann_type
accessor_bit_fail_limit(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                fann_type value = (fann_type)SvNV(ST(1));
                fann_set_bit_fail_limit(self, value);
            }
        case 1:
            RETVAL = fann_get_bit_fail_limit(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::bit_fail_limit(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

float
accessor_quickprop_decay(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                float value = (float)SvNV(ST(1));
                fann_set_quickprop_decay(self, value);
            }
        case 1:
            RETVAL = fann_get_quickprop_decay(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::quickprop_decay(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

float
accessor_quickprop_mu(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                float value = (float)SvNV(ST(1));
                fann_set_quickprop_mu(self, value);
            }
        case 1:
            RETVAL = fann_get_quickprop_mu(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::quickprop_mu(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

float
accessor_rprop_increase_factor(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                float value = (float)SvNV(ST(1));
                fann_set_rprop_increase_factor(self, value);
            }
        case 1:
            RETVAL = fann_get_rprop_increase_factor(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::rprop_increase_factor(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

float
accessor_rprop_decrease_factor(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                float value = (float)SvNV(ST(1));
                fann_set_rprop_decrease_factor(self, value);
            }
        case 1:
            RETVAL = fann_get_rprop_decrease_factor(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::rprop_decrease_factor(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

float
accessor_rprop_delta_min(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                float value = (float)SvNV(ST(1));
                fann_set_rprop_delta_min(self, value);
            }
        case 1:
            RETVAL = fann_get_rprop_delta_min(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::rprop_delta_min(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

float
accessor_rprop_delta_max(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                float value = (float)SvNV(ST(1));
                fann_set_rprop_delta_max(self, value);
            }
        case 1:
            RETVAL = fann_get_rprop_delta_max(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::rprop_delta_max(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

unsigned int
accessor_num_inputs(self)
	struct fann * self;
  CODE:
    RETVAL = fann_get_num_input(self);
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

unsigned int
accessor_num_outputs(self)
	struct fann * self;
  CODE:
    RETVAL = fann_get_num_output(self);
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

unsigned int
accessor_total_neurons(self)
	struct fann * self;
  CODE:
    RETVAL = fann_get_total_neurons(self);
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

unsigned int
accessor_total_connections(self)
	struct fann * self;
  CODE:
    RETVAL = fann_get_total_connections(self);
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

unsigned int
accessor_MSE(self)
	struct fann * self;
  CODE:
    RETVAL = fann_get_MSE(self);
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

unsigned int
accessor_bit_fail(self)
	struct fann * self;
  CODE:
    RETVAL = fann_get_bit_fail(self);
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

float
accessor_cascade_output_change_fraction(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                float value = (float)SvNV(ST(1));
                fann_set_cascade_output_change_fraction(self, value);
            }
        case 1:
            RETVAL = fann_get_cascade_output_change_fraction(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::cascade_output_change_fraction(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

float
accessor_cascade_output_stagnation_epochs(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                float value = (float)SvNV(ST(1));
                fann_set_cascade_output_stagnation_epochs(self, value);
            }
        case 1:
            RETVAL = fann_get_cascade_output_stagnation_epochs(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::cascade_output_stagnation_epochs(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

float
accessor_cascade_candidate_change_fraction(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                float value = (float)SvNV(ST(1));
                fann_set_cascade_candidate_change_fraction(self, value);
            }
        case 1:
            RETVAL = fann_get_cascade_candidate_change_fraction(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::cascade_candidate_change_fraction(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

unsigned int
accessor_cascade_candidate_stagnation_epochs(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                unsigned int value = (unsigned int)SvUV(ST(1));
                fann_set_cascade_candidate_stagnation_epochs(self, value);
            }
        case 1:
            RETVAL = fann_get_cascade_candidate_stagnation_epochs(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::cascade_candidate_stagnation_epochs(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

fann_type
accessor_cascade_weight_multiplier(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                fann_type value = (fann_type)SvNV(ST(1));
                fann_set_cascade_weight_multiplier(self, value);
            }
        case 1:
            RETVAL = fann_get_cascade_weight_multiplier(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::cascade_weight_multiplier(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

fann_type
accessor_cascade_candidate_limit(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                fann_type value = (fann_type)SvNV(ST(1));
                fann_set_cascade_candidate_limit(self, value);
            }
        case 1:
            RETVAL = fann_get_cascade_candidate_limit(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::cascade_candidate_limit(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

unsigned int
accessor_cascade_max_out_epochs(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                unsigned int value = (unsigned int)SvUV(ST(1));
                fann_set_cascade_max_out_epochs(self, value);
            }
        case 1:
            RETVAL = fann_get_cascade_max_out_epochs(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::cascade_max_out_epochs(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

unsigned int
accessor_cascade_max_cand_epochs(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                unsigned int value = (unsigned int)SvUV(ST(1));
                fann_set_cascade_max_cand_epochs(self, value);
            }
        case 1:
            RETVAL = fann_get_cascade_max_cand_epochs(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::cascade_max_cand_epochs(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

unsigned int
accessor_cascade_num_candidates(self)
	struct fann * self;
  CODE:
    RETVAL = fann_get_cascade_num_candidates(self);
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

unsigned int
accessor_cascade_num_candidate_groups(self, ...)
    struct fann * self;
  CODE:
    switch (items) {
        case 2:
            {
                unsigned int value = (unsigned int)SvUV(ST(1));
                fann_set_cascade_num_candidate_groups(self, value);
            }
        case 1:
            RETVAL = fann_get_cascade_num_candidate_groups(self);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::cascade_num_candidate_groups(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

enum fann_activationfunc_enum
accessor_neuron_activation_function(self, layer, neuron_index, ...)
    struct fann * self;
    unsigned int layer;
    unsigned int neuron_index;
  CODE:
    switch (items) {
        case 2:
            {
                enum fann_activationfunc_enum value = (enum fann_activationfunc_enum)_sv2fann_activationfunc_enum(ST(1));
                fann_set_activation_function(self, value, layer, neuron_index);
            }
        case 1:
            RETVAL = fann_get_activation_function(self, layer, neuron_index);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::neuron_activation_function(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_
void
accessor_layer_activation_function(self, layer, value)
    struct fann * self;
    unsigned int layer;
    enum fann_activationfunc_enum value;
  CODE:
    fann_set_activation_function_layer(self, value, layer);
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_
void
accessor_hidden_activation_function(self, value)
    struct fann * self;
    enum fann_activationfunc_enum value;
  CODE:
    fann_set_activation_function_hidden(self, value);
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_
void
accessor_output_activation_function(self, value)
    struct fann * self;
    enum fann_activationfunc_enum value;
  CODE:
    fann_set_activation_function_output(self, value);
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

fann_type
accessor_neuron_activation_steepness(self, layer, neuron, ...)
    struct fann * self;
    unsigned int layer;
    unsigned int neuron;
  CODE:
    switch (items) {
        case 2:
            {
                fann_type value = (fann_type)SvNV(ST(1));
                fann_set_activation_steepness(self, value, layer, neuron);
            }
        case 1:
            RETVAL = fann_get_activation_steepness(self, layer, neuron);
            break;
        default:
            Perl_croak(aTHX_ "Usage: AI::FANN::neuron_activation_steepness(self [,value])");
	}
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_
void
accessor_layer_activation_steepness(self, layer, value)
    struct fann * self;
    unsigned int layer;
    fann_type value;
  CODE:
    fann_set_activation_steepness_layer(self, value, layer);
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_
void
accessor_hidden_activation_steepness(self, value)
    struct fann * self;
    fann_type value;
  CODE:
    fann_set_activation_steepness_hidden(self, value);
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_
void
accessor_output_activation_steepness(self, value)
    struct fann * self;
    fann_type value;
  CODE:
    fann_set_activation_steepness_output(self, value);
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

unsigned int
accessor_layer_num_neurons(self, layer)
	struct fann * self;
    unsigned int layer;
  CODE:
    RETVAL = fann_get_num_neurons(self, layer);
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN    PREFIX = accessor_

unsigned int
accessor_num_layers(self)
	struct fann * self;
  CODE:
    RETVAL = fann_get_num_layers(self);
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN::TrainData    PREFIX = accessor_

unsigned int
accessor_num_inputs(self)
	struct fann_train_data * self;
  CODE:
    RETVAL = fann_train_data_num_input(self);
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN::TrainData    PREFIX = accessor_

unsigned int
accessor_num_outputs(self)
	struct fann_train_data * self;
  CODE:
    RETVAL = fann_train_data_num_output(self);
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);


MODULE = AI::FANN    PACKAGE = AI::FANN::TrainData    PREFIX = accessor_

unsigned int
accessor_length(self)
	struct fann_train_data * self;
  CODE:
    RETVAL = fann_train_data_length(self);
  OUTPUT:
    RETVAL
  CLEANUP:
    _check_error(aTHX_ (struct fann_error *)self);

