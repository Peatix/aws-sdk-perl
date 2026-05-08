use Paws::RestXmlParamsService::Method1;
use Paws::RestXmlParamsService::Method1Return;

# Synthetic service for exercising the RestXML protocol caller in
# isolation. Modelled on Paws::JsonParamsService (used by t/20_*) so
# the test driver in t/29_restxml_syntetic_responses.t can mirror
# t/20_json_syntetic_responses.t's structure.
#
# Note: previous incarnation of this file used Paws::Net::RestJsonCaller,
# which was a copy-paste error from Paws::RestJsonParamsService.pm.
# Fixed in PR3 to use Paws::Net::RestXmlCaller.

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

  sub operations { return qw/Method1/ }

1;
