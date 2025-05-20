
package Paws::S3Control::GetMultiRegionAccessPointPolicyStatus;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has Name => (is => 'ro', isa => 'Str', uri_name => 'name', traits => ['ParamInURI'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMultiRegionAccessPointPolicyStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/mrap/instances/{name+}/policystatus');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::GetMultiRegionAccessPointPolicyStatusResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetMultiRegionAccessPointPolicyStatus - Arguments for method GetMultiRegionAccessPointPolicyStatus on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMultiRegionAccessPointPolicyStatus on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method GetMultiRegionAccessPointPolicyStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMultiRegionAccessPointPolicyStatus.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $GetMultiRegionAccessPointPolicyStatusResult =
      $s3 -control->GetMultiRegionAccessPointPolicyStatus(
      AccountId => 'MyAccountId',
      Name      => 'MyMultiRegionAccessPointName',

      );

    # Results:
    my $Established = $GetMultiRegionAccessPointPolicyStatusResult->Established;

# Returns a L<Paws::S3Control::GetMultiRegionAccessPointPolicyStatusResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/GetMultiRegionAccessPointPolicyStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID for the owner of the Multi-Region
Access Point.



=head2 B<REQUIRED> Name => Str

Specifies the Multi-Region Access Point. The name of the Multi-Region
Access Point is different from the alias. For more information about
the distinction between the name and the alias of an Multi-Region
Access Point, see Rules for naming Amazon S3 Multi-Region Access Points
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/CreatingMultiRegionAccessPoints.html#multi-region-access-point-naming)
in the I<Amazon S3 User Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMultiRegionAccessPointPolicyStatus in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

