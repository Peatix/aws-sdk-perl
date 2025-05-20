
package Paws::WAFV2::DescribeManagedProductsByVendor;
  use Moose;
  has Scope => (is => 'ro', isa => 'Str', required => 1);
  has VendorName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeManagedProductsByVendor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::DescribeManagedProductsByVendorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::DescribeManagedProductsByVendor - Arguments for method DescribeManagedProductsByVendor on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeManagedProductsByVendor on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method DescribeManagedProductsByVendor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeManagedProductsByVendor.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $DescribeManagedProductsByVendorResponse =
      $wafv2->DescribeManagedProductsByVendor(
      Scope      => 'CLOUDFRONT',
      VendorName => 'MyVendorName',

      );

    # Results:
    my $ManagedProducts =
      $DescribeManagedProductsByVendorResponse->ManagedProducts;

    # Returns a L<Paws::WAFV2::DescribeManagedProductsByVendorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/DescribeManagedProductsByVendor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Scope => Str

Specifies whether this is for a global resource type, such as a Amazon
CloudFront distribution. For an Amplify application, use C<CLOUDFRONT>.

To work with CloudFront, you must also specify the Region US East (N.
Virginia) as follows:

=over

=item *

CLI - Specify the Region when you use the CloudFront scope:
C<--scope=CLOUDFRONT --region=us-east-1>.

=item *

API and SDKs - For all calls, use the Region endpoint us-east-1.

=back


Valid values are: C<"CLOUDFRONT">, C<"REGIONAL">

=head2 B<REQUIRED> VendorName => Str

The name of the managed rule group vendor. You use this, along with the
rule group name, to identify a rule group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeManagedProductsByVendor in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

