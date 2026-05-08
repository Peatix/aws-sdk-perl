use Paws::GlacierParamsService::Method1;
use Paws::GlacierParamsService::Method1Return;

# Synthetic service for exercising the Glacier protocol caller in
# isolation. Glacier's quirks are largely request-side
# (x-amz-glacier-version header, account-id defaulting, tree-hash
# auto-headers). PR4 will exercise those via the wire-fixture suite;
# this PR is a minimal smoke proving the caller chain wires up.

package Paws::GlacierParamsService;
  use Moose;
  sub service { 'glacierparams' }
  sub version { '2012-06-01' }

  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [] });

  with 'Paws::API::Caller',
       'Paws::API::EndpointResolver',
       'Paws::Net::V4Signature',
       'Paws::Net::GlacierCaller';

  sub Method1 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::GlacierParamsService::Method1', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub operations { return qw/Method1/ }

1;
