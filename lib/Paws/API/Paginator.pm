package Paws::API::Paginator;
  use Moose;

  has _service => (is => 'ro', required => 1, init_arg => 'service');
  has _operation => (is => 'ro', isa => 'Str', required => 1, init_arg => 'operation');
  has _call_args => (is => 'ro', isa => 'ArrayRef', required => 1, init_arg => 'call_args');

  has _input_tokens => (is => 'ro', isa => 'ArrayRef[Str]', required => 1, init_arg => 'input_tokens');
  has _output_tokens => (is => 'ro', isa => 'ArrayRef[Str]', required => 1, init_arg => 'output_tokens');
  has _more_results => (is => 'ro', isa => 'Maybe[Str]', init_arg => 'more_results');

  has _started => (is => 'rw', isa => 'Bool', default => 0);
  has _finished => (is => 'rw', isa => 'Bool', default => 0);
  has _last_result => (is => 'rw');

  sub has_next_page {
    my $self = shift;

    return 1 if not $self->_started;
    return 0 if $self->_finished;

    my $last = $self->_last_result;
    return 0 if not defined $last;

    if (defined $self->_more_results) {
      return $self->_extract_value($last, $self->_more_results) ? 1 : 0;
    }

    for my $token (@{ $self->_output_tokens }) {
      return 1 if $self->_extract_value($last, $token);
    }
    return 0;
  }

  sub next_page {
    my $self = shift;

    return undef if ($self->_started and not $self->has_next_page);

    my @args = @{ $self->_call_args };

    if ($self->_started and defined $self->_last_result) {
      my $last = $self->_last_result;
      my $input_tokens = $self->_input_tokens;
      my $output_tokens = $self->_output_tokens;

      for my $i (0 .. $#$input_tokens) {
        my $value = $self->_extract_value($last, $output_tokens->[$i]);
        push @args, $input_tokens->[$i], $value if defined $value;
      }
    }

    $self->_started(1);

    my $op = $self->_operation;
    my $result = $self->_service->$op(@args);
    $self->_last_result($result);

    my $has_more = 0;
    if (defined $self->_more_results) {
      $has_more = $self->_extract_value($result, $self->_more_results) ? 1 : 0;
    } else {
      for my $token (@{ $self->_output_tokens }) {
        if ($self->_extract_value($result, $token)) {
          $has_more = 1;
          last;
        }
      }
    }
    $self->_finished(1) if not $has_more;

    return $result;
  }

  sub _extract_value {
    my ($self, $obj, $path) = @_;

    my @parts = split /\./, $path;
    my $current = $obj;

    for my $part (@parts) {
      if ($part =~ /^(\w+)\[(\d+)\]$/) {
        my ($attr, $index) = ($1, $2);
        $current = $current->$attr;
        return undef if not defined $current;
        $current = $current->[$index];
      } else {
        return undef if not defined $current;
        $current = $current->$part;
      }
      return undef if not defined $current;
    }

    return $current;
  }

  __PACKAGE__->meta->make_immutable;
1;
