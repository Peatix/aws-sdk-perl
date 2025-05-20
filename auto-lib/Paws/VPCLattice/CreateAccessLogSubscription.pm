
package Paws::VPCLattice::CreateAccessLogSubscription;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DestinationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationArn', required => 1);
  has ResourceIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceIdentifier', required => 1);
  has ServiceNetworkLogType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceNetworkLogType');
  has Tags => (is => 'ro', isa => 'Paws::VPCLattice::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccessLogSubscription');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accesslogsubscriptions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::CreateAccessLogSubscriptionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::CreateAccessLogSubscription - Arguments for method CreateAccessLogSubscription on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAccessLogSubscription on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method CreateAccessLogSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAccessLogSubscription.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $CreateAccessLogSubscriptionResponse =
      $vpc -lattice->CreateAccessLogSubscription(
      DestinationArn        => 'MyAccessLogDestinationArn',
      ResourceIdentifier    => 'MyResourceIdentifier',
      ClientToken           => 'MyClientToken',               # OPTIONAL
      ServiceNetworkLogType => 'SERVICE',                     # OPTIONAL
      Tags                  => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Arn            = $CreateAccessLogSubscriptionResponse->Arn;
    my $DestinationArn = $CreateAccessLogSubscriptionResponse->DestinationArn;
    my $Id             = $CreateAccessLogSubscriptionResponse->Id;
    my $ResourceArn    = $CreateAccessLogSubscriptionResponse->ResourceArn;
    my $ResourceId     = $CreateAccessLogSubscriptionResponse->ResourceId;
    my $ServiceNetworkLogType =
      $CreateAccessLogSubscriptionResponse->ServiceNetworkLogType;

    # Returns a L<Paws::VPCLattice::CreateAccessLogSubscriptionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/CreateAccessLogSubscription>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you retry a request that completed
successfully using the same client token and parameters, the retry
succeeds without performing any actions. If the parameters aren't
identical, the retry fails.



=head2 B<REQUIRED> DestinationArn => Str

The Amazon Resource Name (ARN) of the destination. The supported
destination types are CloudWatch Log groups, Kinesis Data Firehose
delivery streams, and Amazon S3 buckets.



=head2 B<REQUIRED> ResourceIdentifier => Str

The ID or ARN of the service network or service.



=head2 ServiceNetworkLogType => Str

The type of log that monitors your Amazon VPC Lattice service networks.

Valid values are: C<"SERVICE">, C<"RESOURCE">

=head2 Tags => L<Paws::VPCLattice::TagMap>

The tags for the access log subscription.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAccessLogSubscription in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

