use Paws::RestXmlParamsService::Method1;
use Paws::RestXmlParamsService::Method1Return;
use Paws::JsonParamsService::Method3;

# Synthetic service for exercising the RestXML protocol caller in
# isolation. Modelled on Paws::JsonParamsService (used by t/20_*) so
# the test driver in t/29_restxml_syntetic_responses.t can mirror
# t/20_json_syntetic_responses.t's structure.
#
# Note: previous incarnation of this file used Paws::Net::RestJsonCaller,
# which was a copy-paste error from Paws::RestJsonParamsService.pm.
# Fixed in PR3 to use Paws::Net::RestXmlCaller.
#
# Method3 reuses Paws::JsonParamsService::Method3 because that shape is
# a generic error-response harness (just response/status/dup_requestid
# attrs); the request and error parsing here still flow through
# Paws::Net::RestXmlCaller / Paws::Net::RestXMLResponse, so error
# handling is exercised against the RestXML stack as intended by
# t/24_error_from_nonreturningmethod.t.

package Paws::RestXmlParamsService;
  use Moose;
  sub service           { 'restxmlparams' }
  sub version           { '2016-09-25' }
  sub flattened_arrays  { 1 }

  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [] });

  with 'Paws::API::Caller',
       'Paws::API::EndpointResolver',
       'Paws::Net::V4Signature',
       'Paws::Net::RestXmlCaller';

  sub Method1 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::RestXmlParamsService::Method1', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub Method3 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::JsonParamsService::Method3', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub MethodReq {
    my $self = shift;
    require Paws::RestXmlParamsService::MethodReq;
    my $call_object = $self->new_with_coercions('Paws::RestXmlParamsService::MethodReq', @_);
    return $self->caller->do_call($self, $call_object);
  }

  sub operations { return qw/Method1 Method3 MethodReq/ }

1;
