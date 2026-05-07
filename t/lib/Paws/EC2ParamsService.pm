use Paws::EC2ParamsService::Method1;
use Paws::EC2ParamsService::Method1Return;

# Synthetic service for exercising the EC2 protocol caller in
# isolation. EC2 is a Query-protocol variant with PascalCase parameter
# upper-casing and slightly different list flattening; pinning its
# response decoding here gives PR11 (wire-layer side-table) a clean
# regression gate for that caller.

package Paws::EC2ParamsService;
  use Moose;
  sub service          { 'ec2params' }
  sub version          { '2016-09-25' }
  sub flattened_arrays { 1 }

  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [] });

  with 'Paws::API::Caller',
       'Paws::API::EndpointResolver',
       'Paws::Net::V4Signature',
       'Paws::Net::EC2Caller';

  sub Method1 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2ParamsService::Method1', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub MethodReq {
    my $self = shift;
    require Paws::EC2ParamsService::MethodReq;
    my $call_object = $self->new_with_coercions('Paws::EC2ParamsService::MethodReq', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub operations { return qw/Method1 MethodReq/ }

1;
