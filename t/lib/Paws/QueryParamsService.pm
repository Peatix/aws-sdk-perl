# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

use Paws::JsonParamsService::Method2;

package Paws::QueryParamsService;
  use Moose;
  sub service { 'queryparams' }
  sub version { '2010-03-31' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller';

  sub Method1 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::JsonParamsService::Method1', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub Method2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::JsonParamsService::Method2', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub Method3 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::JsonParamsService::Method3', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub MethodReq {
    my $self = shift;
    require Paws::QueryParamsService::MethodReq;
    my $call_object = $self->new_with_coercions('Paws::QueryParamsService::MethodReq', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub operations { return qw/Method1 Method2 Method3 MethodReq/ }
 
1;
