
package Paws::BackupGateway::ImportHypervisorConfiguration;
  use Moose;
  has Host => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Password => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::BackupGateway::Tag]');
  has Username => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportHypervisorConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupGateway::ImportHypervisorConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::ImportHypervisorConfiguration - Arguments for method ImportHypervisorConfiguration on L<Paws::BackupGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportHypervisorConfiguration on the
L<AWS Backup Gateway|Paws::BackupGateway> service. Use the attributes of this class
as arguments to method ImportHypervisorConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportHypervisorConfiguration.

=head1 SYNOPSIS

    my $backup-gateway = Paws->service('BackupGateway');
    my $ImportHypervisorConfigurationOutput =
      $backup -gateway->ImportHypervisorConfiguration(
      Host      => 'MyHost',
      Name      => 'MyName',
      KmsKeyArn => 'MyKmsKeyArn',    # OPTIONAL
      Password  => 'MyPassword',     # OPTIONAL
      Tags      => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      Username => 'MyUsername',    # OPTIONAL
      );

    # Results:
    my $HypervisorArn = $ImportHypervisorConfigurationOutput->HypervisorArn;

 # Returns a L<Paws::BackupGateway::ImportHypervisorConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-gateway/ImportHypervisorConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Host => Str

The server host of the hypervisor. This can be either an IP address or
a fully-qualified domain name (FQDN).



=head2 KmsKeyArn => Str

The Key Management Service for the hypervisor.



=head2 B<REQUIRED> Name => Str

The name of the hypervisor.



=head2 Password => Str

The password for the hypervisor.



=head2 Tags => ArrayRef[L<Paws::BackupGateway::Tag>]

The tags of the hypervisor configuration to import.



=head2 Username => Str

The username for the hypervisor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportHypervisorConfiguration in L<Paws::BackupGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

