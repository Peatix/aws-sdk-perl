
package Paws::BackupGateway::GetHypervisorPropertyMappingsOutput;
  use Moose;
  has HypervisorArn => (is => 'ro', isa => 'Str');
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has VmwareToAwsTagMappings => (is => 'ro', isa => 'ArrayRef[Paws::BackupGateway::VmwareToAwsTagMapping]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::GetHypervisorPropertyMappingsOutput

=head1 ATTRIBUTES


=head2 HypervisorArn => Str

The Amazon Resource Name (ARN) of the hypervisor.


=head2 IamRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role.


=head2 VmwareToAwsTagMappings => ArrayRef[L<Paws::BackupGateway::VmwareToAwsTagMapping>]

This is a display of the mappings of on-premises VMware tags to the
Amazon Web Services tags.


=head2 _request_id => Str


=cut

1;