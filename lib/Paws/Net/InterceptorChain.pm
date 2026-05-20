package Paws::Net::InterceptorChain;
  use Moo;
  use Types::Standard qw(ArrayRef);

  has interceptors => (
    is      => 'ro',
    isa     => ArrayRef,
    default => sub { [] },
  );

  sub all_interceptors {
    my ($self) = @_;
    return @{ $self->interceptors };
  }

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

1;
