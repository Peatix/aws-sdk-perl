
package Paws::S3Control::PutMultiRegionAccessPointPolicy;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has Details => (is => 'ro', isa => 'Paws::S3Control::PutMultiRegionAccessPointPolicyInput', required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMultiRegionAccessPointPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/async-requests/mrap/put-policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::PutMultiRegionAccessPointPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'PutMultiRegionAccessPointPolicyRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://awss3control.amazonaws.com/doc/2018-08-20/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::PutMultiRegionAccessPointPolicy - Arguments for method PutMultiRegionAccessPointPolicy on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMultiRegionAccessPointPolicy on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method PutMultiRegionAccessPointPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMultiRegionAccessPointPolicy.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $PutMultiRegionAccessPointPolicyResult =
      $s3 -control->PutMultiRegionAccessPointPolicy(
      AccountId   => 'MyAccountId',
      ClientToken => 'MyMultiRegionAccessPointClientToken',
      Details     => {
        Name   => 'MyMultiRegionAccessPointName',    # max: 50
        Policy => 'MyPolicy',

      },

      );

    # Results:
    my $RequestTokenARN =
      $PutMultiRegionAccessPointPolicyResult->RequestTokenARN;

   # Returns a L<Paws::S3Control::PutMultiRegionAccessPointPolicyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/PutMultiRegionAccessPointPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID for the owner of the Multi-Region
Access Point.



=head2 B<REQUIRED> ClientToken => Str

An idempotency token used to identify the request and guarantee that
requests are unique.



=head2 B<REQUIRED> Details => L<Paws::S3Control::PutMultiRegionAccessPointPolicyInput>

A container element containing the details of the policy for the
Multi-Region Access Point.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMultiRegionAccessPointPolicy in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

