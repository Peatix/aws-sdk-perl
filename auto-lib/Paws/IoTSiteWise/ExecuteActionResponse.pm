
package Paws::IoTSiteWise::ExecuteActionResponse;
  use Moose;
  has ActionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ExecuteActionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionId => Str

The ID of the action.


=head2 _request_id => Str


=cut

