# This file has been modified from the original upstream distribution
# by Peatix, Inc. See the git log for this file for details of changes.

use Paws::JsonParamsService::Method1;
use Paws::JsonParamsService::Method3;

package Paws::JsonParamsService;
  use Moose;
  sub service { 'jsonparams' }
  sub version { '2016-09-25' }
  sub target_prefix { 'JsonParams' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  sub Method1 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::JsonParamsService::Method1', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub Method3 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::JsonParamsService::Method3', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub MethodReq {
    my $self = shift;
    require Paws::JsonParamsService::MethodReq;
    my $call_object = $self->new_with_coercions('Paws::JsonParamsService::MethodReq', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub operations { return qw/Method1 Method3 MethodReq/ }
 
1;
