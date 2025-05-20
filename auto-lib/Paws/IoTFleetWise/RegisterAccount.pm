
package Paws::IoTFleetWise::RegisterAccount;
  use Moose;
  has IamResources => (is => 'ro', isa => 'Paws::IoTFleetWise::IamResources', traits => ['NameInRequest'], request_name => 'iamResources' );
  has TimestreamResources => (is => 'ro', isa => 'Paws::IoTFleetWise::TimestreamResources', traits => ['NameInRequest'], request_name => 'timestreamResources' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterAccount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetWise::RegisterAccountResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::RegisterAccount - Arguments for method RegisterAccount on L<Paws::IoTFleetWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterAccount on the
L<AWS IoT FleetWise|Paws::IoTFleetWise> service. Use the attributes of this class
as arguments to method RegisterAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterAccount.

=head1 SYNOPSIS

    my $iotfleetwise = Paws->service('IoTFleetWise');
    my $RegisterAccountResponse = $iotfleetwise->RegisterAccount(
      IamResources => {
        RoleArn => 'MyIAMRoleArn',    # min: 20, max: 2048

      },    # OPTIONAL
      TimestreamResources => {
        TimestreamDatabaseName => 'MyTimestreamDatabaseName', # min: 3, max: 255
        TimestreamTableName    => 'MyTimestreamTableName',    # min: 3, max: 255

      },    # OPTIONAL
    );

    # Results:
    my $CreationTime          = $RegisterAccountResponse->CreationTime;
    my $IamResources          = $RegisterAccountResponse->IamResources;
    my $LastModificationTime  = $RegisterAccountResponse->LastModificationTime;
    my $RegisterAccountStatus = $RegisterAccountResponse->RegisterAccountStatus;
    my $TimestreamResources   = $RegisterAccountResponse->TimestreamResources;

    # Returns a L<Paws::IoTFleetWise::RegisterAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotfleetwise/RegisterAccount>

=head1 ATTRIBUTES


=head2 IamResources => L<Paws::IoTFleetWise::IamResources>

The IAM resource that allows Amazon Web Services IoT FleetWise to send
data to Amazon Timestream.



=head2 TimestreamResources => L<Paws::IoTFleetWise::TimestreamResources>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterAccount in L<Paws::IoTFleetWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

