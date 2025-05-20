
package Paws::BackupGateway::UpdateHypervisor;
  use Moose;
  has Host => (is => 'ro', isa => 'Str');
  has HypervisorArn => (is => 'ro', isa => 'Str', required => 1);
  has LogGroupArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Password => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateHypervisor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupGateway::UpdateHypervisorOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::UpdateHypervisor - Arguments for method UpdateHypervisor on L<Paws::BackupGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateHypervisor on the
L<AWS Backup Gateway|Paws::BackupGateway> service. Use the attributes of this class
as arguments to method UpdateHypervisor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateHypervisor.

=head1 SYNOPSIS

    my $backup-gateway = Paws->service('BackupGateway');
    my $UpdateHypervisorOutput = $backup -gateway->UpdateHypervisor(
      HypervisorArn => 'MyServerArn',
      Host          => 'MyHost',           # OPTIONAL
      LogGroupArn   => 'MyLogGroupArn',    # OPTIONAL
      Name          => 'MyName',           # OPTIONAL
      Password      => 'MyPassword',       # OPTIONAL
      Username      => 'MyUsername',       # OPTIONAL
    );

    # Results:
    my $HypervisorArn = $UpdateHypervisorOutput->HypervisorArn;

    # Returns a L<Paws::BackupGateway::UpdateHypervisorOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-gateway/UpdateHypervisor>

=head1 ATTRIBUTES


=head2 Host => Str

The updated host of the hypervisor. This can be either an IP address or
a fully-qualified domain name (FQDN).



=head2 B<REQUIRED> HypervisorArn => Str

The Amazon Resource Name (ARN) of the hypervisor to update.



=head2 LogGroupArn => Str

The Amazon Resource Name (ARN) of the group of gateways within the
requested log.



=head2 Name => Str

The updated name for the hypervisor



=head2 Password => Str

The updated password for the hypervisor.



=head2 Username => Str

The updated username for the hypervisor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateHypervisor in L<Paws::BackupGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

