
package Paws::SageMaker::DescribeHubResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has FailureReason => (is => 'ro', isa => 'Str');
  has HubArn => (is => 'ro', isa => 'Str', required => 1);
  has HubDescription => (is => 'ro', isa => 'Str');
  has HubDisplayName => (is => 'ro', isa => 'Str');
  has HubName => (is => 'ro', isa => 'Str', required => 1);
  has HubSearchKeywords => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has HubStatus => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', required => 1);
  has S3StorageConfig => (is => 'ro', isa => 'Paws::SageMaker::HubS3StorageConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeHubResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The date and time that the hub was created.


=head2 FailureReason => Str

The failure reason if importing hub content failed.


=head2 B<REQUIRED> HubArn => Str

The Amazon Resource Name (ARN) of the hub.


=head2 HubDescription => Str

A description of the hub.


=head2 HubDisplayName => Str

The display name of the hub.


=head2 B<REQUIRED> HubName => Str

The name of the hub.


=head2 HubSearchKeywords => ArrayRef[Str|Undef]

The searchable keywords for the hub.


=head2 B<REQUIRED> HubStatus => Str

The status of the hub.

Valid values are: C<"InService">, C<"Creating">, C<"Updating">, C<"Deleting">, C<"CreateFailed">, C<"UpdateFailed">, C<"DeleteFailed">
=head2 B<REQUIRED> LastModifiedTime => Str

The date and time that the hub was last modified.


=head2 S3StorageConfig => L<Paws::SageMaker::HubS3StorageConfig>

The Amazon S3 storage configuration for the hub.


=head2 _request_id => Str


=cut

1;