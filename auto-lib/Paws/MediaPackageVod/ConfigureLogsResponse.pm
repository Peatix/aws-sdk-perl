
package Paws::MediaPackageVod::ConfigureLogsResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Authorization => (is => 'ro', isa => 'Paws::MediaPackageVod::Authorization', traits => ['NameInRequest'], request_name => 'authorization');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainName');
  has EgressAccessLogs => (is => 'ro', isa => 'Paws::MediaPackageVod::EgressAccessLogs', traits => ['NameInRequest'], request_name => 'egressAccessLogs');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Tags => (is => 'ro', isa => 'Paws::MediaPackageVod::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::ConfigureLogsResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the PackagingGroup.


=head2 Authorization => L<Paws::MediaPackageVod::Authorization>




=head2 CreatedAt => Str

The time the PackagingGroup was created.


=head2 DomainName => Str

The fully qualified domain name for Assets in the PackagingGroup.


=head2 EgressAccessLogs => L<Paws::MediaPackageVod::EgressAccessLogs>




=head2 Id => Str

The ID of the PackagingGroup.


=head2 Tags => L<Paws::MediaPackageVod::Tags>




=head2 _request_id => Str


=cut

