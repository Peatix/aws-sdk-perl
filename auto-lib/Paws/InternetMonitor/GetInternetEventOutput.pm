
package Paws::InternetMonitor::GetInternetEventOutput;
  use Moose;
  has ClientLocation => (is => 'ro', isa => 'Paws::InternetMonitor::ClientLocation', required => 1);
  has EndedAt => (is => 'ro', isa => 'Str');
  has EventArn => (is => 'ro', isa => 'Str', required => 1);
  has EventId => (is => 'ro', isa => 'Str', required => 1);
  has EventStatus => (is => 'ro', isa => 'Str', required => 1);
  has EventType => (is => 'ro', isa => 'Str', required => 1);
  has StartedAt => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::InternetMonitor::GetInternetEventOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientLocation => L<Paws::InternetMonitor::ClientLocation>

The impacted location, such as a city, where clients access Amazon Web
Services application resources.


=head2 EndedAt => Str

The time when the internet event ended. If the event hasn't ended yet,
this value is empty.


=head2 B<REQUIRED> EventArn => Str

The Amazon Resource Name (ARN) of the internet event.


=head2 B<REQUIRED> EventId => Str

The internally-generated identifier of an internet event.


=head2 B<REQUIRED> EventStatus => Str

The status of the internet event.

Valid values are: C<"ACTIVE">, C<"RESOLVED">
=head2 B<REQUIRED> EventType => Str

The type of network impairment.

Valid values are: C<"AVAILABILITY">, C<"PERFORMANCE">
=head2 B<REQUIRED> StartedAt => Str

The time when the internet event started.


=head2 _request_id => Str


=cut

