
package Paws::BackupGateway::PutHypervisorPropertyMappings;
  use Moose;
  has HypervisorArn => (is => 'ro', isa => 'Str', required => 1);
  has IamRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has VmwareToAwsTagMappings => (is => 'ro', isa => 'ArrayRef[Paws::BackupGateway::VmwareToAwsTagMapping]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutHypervisorPropertyMappings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupGateway::PutHypervisorPropertyMappingsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::PutHypervisorPropertyMappings - Arguments for method PutHypervisorPropertyMappings on L<Paws::BackupGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutHypervisorPropertyMappings on the
L<AWS Backup Gateway|Paws::BackupGateway> service. Use the attributes of this class
as arguments to method PutHypervisorPropertyMappings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutHypervisorPropertyMappings.

=head1 SYNOPSIS

    my $backup-gateway = Paws->service('BackupGateway');
    my $PutHypervisorPropertyMappingsOutput =
      $backup -gateway->PutHypervisorPropertyMappings(
      HypervisorArn          => 'MyServerArn',
      IamRoleArn             => 'MyIamRoleArn',
      VmwareToAwsTagMappings => [
        {
          AwsTagKey      => 'MyTagKey',            # min: 1, max: 128
          AwsTagValue    => 'MyTagValue',          # max: 256
          VmwareCategory => 'MyVmwareCategory',    # min: 1, max: 80
          VmwareTagName  => 'MyVmwareTagName',     # min: 1, max: 80

        },
        ...
      ],

      );

    # Results:
    my $HypervisorArn = $PutHypervisorPropertyMappingsOutput->HypervisorArn;

 # Returns a L<Paws::BackupGateway::PutHypervisorPropertyMappingsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-gateway/PutHypervisorPropertyMappings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HypervisorArn => Str

The Amazon Resource Name (ARN) of the hypervisor.



=head2 B<REQUIRED> IamRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role.



=head2 B<REQUIRED> VmwareToAwsTagMappings => ArrayRef[L<Paws::BackupGateway::VmwareToAwsTagMapping>]

This action requests the mappings of on-premises VMware tags to the
Amazon Web Services tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutHypervisorPropertyMappings in L<Paws::BackupGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

