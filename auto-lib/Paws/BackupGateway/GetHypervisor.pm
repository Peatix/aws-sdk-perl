
package Paws::BackupGateway::GetHypervisor;
  use Moose;
  has HypervisorArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHypervisor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupGateway::GetHypervisorOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::GetHypervisor - Arguments for method GetHypervisor on L<Paws::BackupGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetHypervisor on the
L<AWS Backup Gateway|Paws::BackupGateway> service. Use the attributes of this class
as arguments to method GetHypervisor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetHypervisor.

=head1 SYNOPSIS

    my $backup-gateway = Paws->service('BackupGateway');
    my $GetHypervisorOutput = $backup -gateway->GetHypervisor(
      HypervisorArn => 'MyServerArn',

    );

    # Results:
    my $Hypervisor = $GetHypervisorOutput->Hypervisor;

    # Returns a L<Paws::BackupGateway::GetHypervisorOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-gateway/GetHypervisor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HypervisorArn => Str

The Amazon Resource Name (ARN) of the hypervisor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetHypervisor in L<Paws::BackupGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

