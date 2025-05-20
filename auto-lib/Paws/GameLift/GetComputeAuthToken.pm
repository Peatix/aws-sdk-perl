
package Paws::GameLift::GetComputeAuthToken;
  use Moose;
  has ComputeName => (is => 'ro', isa => 'Str', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetComputeAuthToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::GetComputeAuthTokenOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GetComputeAuthToken - Arguments for method GetComputeAuthToken on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetComputeAuthToken on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method GetComputeAuthToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetComputeAuthToken.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $GetComputeAuthTokenOutput = $gamelift->GetComputeAuthToken(
      ComputeName => 'MyComputeNameOrArn',
      FleetId     => 'MyFleetIdOrArn',

    );

    # Results:
    my $AuthToken           = $GetComputeAuthTokenOutput->AuthToken;
    my $ComputeArn          = $GetComputeAuthTokenOutput->ComputeArn;
    my $ComputeName         = $GetComputeAuthTokenOutput->ComputeName;
    my $ExpirationTimestamp = $GetComputeAuthTokenOutput->ExpirationTimestamp;
    my $FleetArn            = $GetComputeAuthTokenOutput->FleetArn;
    my $FleetId             = $GetComputeAuthTokenOutput->FleetId;

    # Returns a L<Paws::GameLift::GetComputeAuthTokenOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/GetComputeAuthToken>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeName => Str

The name of the compute resource you are requesting the authentication
token for. For an Anywhere fleet compute, use the registered compute
name. For an EC2 fleet instance, use the instance ID.



=head2 B<REQUIRED> FleetId => Str

A unique identifier for the fleet that the compute is registered to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetComputeAuthToken in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

