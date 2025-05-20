
package Paws::VPCLattice::GetAccessLogSubscription;
  use Moose;
  has AccessLogSubscriptionIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accessLogSubscriptionIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccessLogSubscription');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accesslogsubscriptions/{accessLogSubscriptionIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::GetAccessLogSubscriptionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetAccessLogSubscription - Arguments for method GetAccessLogSubscription on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccessLogSubscription on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method GetAccessLogSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccessLogSubscription.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $GetAccessLogSubscriptionResponse =
      $vpc -lattice->GetAccessLogSubscription(
      AccessLogSubscriptionIdentifier => 'MyAccessLogSubscriptionIdentifier',

      );

    # Results:
    my $Arn            = $GetAccessLogSubscriptionResponse->Arn;
    my $CreatedAt      = $GetAccessLogSubscriptionResponse->CreatedAt;
    my $DestinationArn = $GetAccessLogSubscriptionResponse->DestinationArn;
    my $Id             = $GetAccessLogSubscriptionResponse->Id;
    my $LastUpdatedAt  = $GetAccessLogSubscriptionResponse->LastUpdatedAt;
    my $ResourceArn    = $GetAccessLogSubscriptionResponse->ResourceArn;
    my $ResourceId     = $GetAccessLogSubscriptionResponse->ResourceId;
    my $ServiceNetworkLogType =
      $GetAccessLogSubscriptionResponse->ServiceNetworkLogType;

    # Returns a L<Paws::VPCLattice::GetAccessLogSubscriptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/GetAccessLogSubscription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccessLogSubscriptionIdentifier => Str

The ID or ARN of the access log subscription.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccessLogSubscription in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

