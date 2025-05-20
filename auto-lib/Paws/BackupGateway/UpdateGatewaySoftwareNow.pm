
package Paws::BackupGateway::UpdateGatewaySoftwareNow;
  use Moose;
  has GatewayArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGatewaySoftwareNow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupGateway::UpdateGatewaySoftwareNowOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::UpdateGatewaySoftwareNow - Arguments for method UpdateGatewaySoftwareNow on L<Paws::BackupGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGatewaySoftwareNow on the
L<AWS Backup Gateway|Paws::BackupGateway> service. Use the attributes of this class
as arguments to method UpdateGatewaySoftwareNow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGatewaySoftwareNow.

=head1 SYNOPSIS

    my $backup-gateway = Paws->service('BackupGateway');
    my $UpdateGatewaySoftwareNowOutput =
      $backup -gateway->UpdateGatewaySoftwareNow(
      GatewayArn => 'MyGatewayArn',

      );

    # Results:
    my $GatewayArn = $UpdateGatewaySoftwareNowOutput->GatewayArn;

    # Returns a L<Paws::BackupGateway::UpdateGatewaySoftwareNowOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-gateway/UpdateGatewaySoftwareNow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayArn => Str

The Amazon Resource Name (ARN) of the gateway to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGatewaySoftwareNow in L<Paws::BackupGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

