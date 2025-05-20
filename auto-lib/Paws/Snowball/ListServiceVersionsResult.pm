
package Paws::Snowball::ListServiceVersionsResult;
  use Moose;
  has DependentServices => (is => 'ro', isa => 'ArrayRef[Paws::Snowball::DependentService]');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceName => (is => 'ro', isa => 'Str', required => 1);
  has ServiceVersions => (is => 'ro', isa => 'ArrayRef[Paws::Snowball::ServiceVersion]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::ListServiceVersionsResult

=head1 ATTRIBUTES


=head2 DependentServices => ArrayRef[L<Paws::Snowball::DependentService>]

A list of names and versions of dependant services of the service for
which the system provided supported versions.


=head2 NextToken => Str

Because HTTP requests are stateless, this is the starting point of the
next list of returned C<ListServiceVersionsResult> results.


=head2 B<REQUIRED> ServiceName => Str

The name of the service for which the system provided supported
versions.

Valid values are: C<"KUBERNETES">, C<"EKS_ANYWHERE">
=head2 B<REQUIRED> ServiceVersions => ArrayRef[L<Paws::Snowball::ServiceVersion>]

A list of supported versions.


=head2 _request_id => Str


=cut

1;