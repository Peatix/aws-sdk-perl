
package Paws::ApplicationSignals::GetServiceOutput;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has LogGroupReferences => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationSignals::Attributes]');
  has Service => (is => 'ro', isa => 'Paws::ApplicationSignals::Service', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::GetServiceOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end time of the data included in the response. In a raw HTTP Query
API, it is formatted as be epoch time in seconds. For example:
C<1698778057>.

This displays the time that Application Signals used for the request.
It might not match your request exactly, because it was rounded to the
nearest hour.


=head2 LogGroupReferences => ArrayRef[L<Paws::ApplicationSignals::Attributes>]

An array of string-to-string maps that each contain information about
one log group associated with this service. Each string-to-string map
includes the following fields:

=over

=item *

C<"Type": "AWS::Resource">

=item *

C<"ResourceType": "AWS::Logs::LogGroup">

=item *

C<"Identifier": "I<name-of-log-group>">

=back



=head2 B<REQUIRED> Service => L<Paws::ApplicationSignals::Service>

A structure containing information about the service.


=head2 B<REQUIRED> StartTime => Str

The start time of the data included in the response. In a raw HTTP
Query API, it is formatted as be epoch time in seconds. For example:
C<1698778057>.

This displays the time that Application Signals used for the request.
It might not match your request exactly, because it was rounded to the
nearest hour.


=head2 _request_id => Str


=cut

