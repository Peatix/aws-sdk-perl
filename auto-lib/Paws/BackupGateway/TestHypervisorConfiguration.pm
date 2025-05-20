
package Paws::BackupGateway::TestHypervisorConfiguration;
  use Moose;
  has GatewayArn => (is => 'ro', isa => 'Str', required => 1);
  has Host => (is => 'ro', isa => 'Str', required => 1);
  has Password => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestHypervisorConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupGateway::TestHypervisorConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::TestHypervisorConfiguration - Arguments for method TestHypervisorConfiguration on L<Paws::BackupGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestHypervisorConfiguration on the
L<AWS Backup Gateway|Paws::BackupGateway> service. Use the attributes of this class
as arguments to method TestHypervisorConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestHypervisorConfiguration.

=head1 SYNOPSIS

    my $backup-gateway = Paws->service('BackupGateway');
    my $TestHypervisorConfigurationOutput =
      $backup -gateway->TestHypervisorConfiguration(
      GatewayArn => 'MyGatewayArn',
      Host       => 'MyHost',
      Password   => 'MyPassword',     # OPTIONAL
      Username   => 'MyUsername',     # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-gateway/TestHypervisorConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayArn => Str

The Amazon Resource Name (ARN) of the gateway to the hypervisor to
test.



=head2 B<REQUIRED> Host => Str

The server host of the hypervisor. This can be either an IP address or
a fully-qualified domain name (FQDN).



=head2 Password => Str

The password for the hypervisor.



=head2 Username => Str

The username for the hypervisor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestHypervisorConfiguration in L<Paws::BackupGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

