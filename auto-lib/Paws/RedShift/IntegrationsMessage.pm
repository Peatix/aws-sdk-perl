
package Paws::RedShift::IntegrationsMessage;
  use Moose;
  has Integrations => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Integration]', request_name => 'Integration', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::IntegrationsMessage

=head1 ATTRIBUTES


=head2 Integrations => ArrayRef[L<Paws::RedShift::Integration>]

List of integrations that are described.


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the C<Marker> parameter and retrying the command. If
the C<Marker> field is empty, all response records have been retrieved
for the request.


=head2 _request_id => Str


=cut

