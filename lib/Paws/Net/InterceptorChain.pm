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
      $interceptor->$hook($context);
    }
    return;
  }

  __PACKAGE__->meta->make_immutable;
1;
