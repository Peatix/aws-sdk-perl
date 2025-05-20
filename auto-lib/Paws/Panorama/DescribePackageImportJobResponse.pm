
package Paws::Panorama::DescribePackageImportJobResponse;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str', required => 1);
  has InputConfig => (is => 'ro', isa => 'Paws::Panorama::PackageImportJobInputConfig', required => 1);
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has JobTags => (is => 'ro', isa => 'ArrayRef[Paws::Panorama::JobResourceTags]');
  has JobType => (is => 'ro', isa => 'Str', required => 1);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', required => 1);
  has Output => (is => 'ro', isa => 'Paws::Panorama::PackageImportJobOutput', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::Panorama::PackageImportJobOutputConfig', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::DescribePackageImportJobResponse

=head1 ATTRIBUTES


=head2 ClientToken => Str

The job's client token.


=head2 B<REQUIRED> CreatedTime => Str

When the job was created.


=head2 B<REQUIRED> InputConfig => L<Paws::Panorama::PackageImportJobInputConfig>

The job's input config.


=head2 B<REQUIRED> JobId => Str

The job's ID.


=head2 JobTags => ArrayRef[L<Paws::Panorama::JobResourceTags>]

The job's tags.


=head2 B<REQUIRED> JobType => Str

The job's type.

Valid values are: C<"NODE_PACKAGE_VERSION">, C<"MARKETPLACE_NODE_PACKAGE_VERSION">
=head2 B<REQUIRED> LastUpdatedTime => Str

When the job was updated.


=head2 B<REQUIRED> Output => L<Paws::Panorama::PackageImportJobOutput>

The job's output.


=head2 B<REQUIRED> OutputConfig => L<Paws::Panorama::PackageImportJobOutputConfig>

The job's output config.


=head2 B<REQUIRED> Status => Str

The job's status.

Valid values are: C<"PENDING">, C<"SUCCEEDED">, C<"FAILED">
=head2 B<REQUIRED> StatusMessage => Str

The job's status message.


=head2 _request_id => Str


=cut

