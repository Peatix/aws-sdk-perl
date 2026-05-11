package Paws::Net::InterceptorChain;
  use Moose;

  has interceptors => (
    is      => 'ro',
    isa     => 'ArrayRef',
    traits  => ['Array'],
    default => sub { [] },
    handles => {
      all_interceptors => 'elements',
    },
  );

  sub run_hook {
    my ($self, $hook, $context) = @_;
    for my $interceptor ($self->all_interceptors) {
      eval { $interceptor->$hook($context); 1 } or do {
        my $err = $@ || 'Unknown error';
        if (ref $err && $err->isa('Paws::Exception')) {
          $context->result($err);
        } else {
          require Paws::Exception;
          $context->result(Paws::Exception->new(
            message    => "Interceptor died during $hook: $err",
            code       => 'InterceptorError',
            request_id => '',
          ));
        }
        return 0;
      };
    }
    return 1;
  }

  __PACKAGE__->meta->make_immutable;
1;
