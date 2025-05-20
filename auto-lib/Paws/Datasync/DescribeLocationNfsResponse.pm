
package Paws::Datasync::DescribeLocationNfsResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has LocationArn => (is => 'ro', isa => 'Str');
  has LocationUri => (is => 'ro', isa => 'Str');
  has MountOptions => (is => 'ro', isa => 'Paws::Datasync::NfsMountOptions');
  has OnPremConfig => (is => 'ro', isa => 'Paws::Datasync::OnPremConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeLocationNfsResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time when the NFS location was created.


=head2 LocationArn => Str

The ARN of the NFS location.


=head2 LocationUri => Str

The URI of the NFS location.


=head2 MountOptions => L<Paws::Datasync::NfsMountOptions>

The mount options that DataSync uses to mount your NFS file server.


=head2 OnPremConfig => L<Paws::Datasync::OnPremConfig>




=head2 _request_id => Str


=cut

1;