
package Paws::ApplicationSignals::ListServiceDependenciesOutput;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceDependencies => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationSignals::ServiceDependency]', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::ListServiceDependenciesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The end of the time period that the returned information applies to.
When used in a raw HTTP Query API, it is formatted as be epoch time in
seconds. For example: C<1698778057>

This displays the time that Application Signals used for the request.
It might not match your request exactly, because it was rounded to the
nearest hour.


=head2 NextToken => Str

Include this value in your next use of this API to get next set of
service dependencies.


=head2 B<REQUIRED> ServiceDependencies => ArrayRef[L<Paws::ApplicationSignals::ServiceDependency>]

An array, where each object in the array contains information about one
of the dependencies of this service.


=head2 B<REQUIRED> StartTime => Str

The start of the time period that the returned information applies to.
When used in a raw HTTP Query API, it is formatted as be epoch time in
seconds. For example: C<1698778057>

This displays the time that Application Signals used for the request.
It might not match your request exactly, because it was rounded to the
nearest hour.


=head2 _request_id => Str


=cut

