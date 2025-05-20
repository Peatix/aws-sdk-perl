
package Paws::WAFV2::DeleteAPIKey;
  use Moose;
  has APIKey => (is => 'ro', isa => 'Str', required => 1);
  has Scope => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAPIKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::DeleteAPIKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::DeleteAPIKey - Arguments for method DeleteAPIKey on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAPIKey on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method DeleteAPIKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAPIKey.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $DeleteAPIKeyResponse = $wafv2->DeleteAPIKey(
      APIKey => 'MyAPIKey',
      Scope  => 'CLOUDFRONT',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/DeleteAPIKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> APIKey => Str

The encrypted API key that you want to delete.



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


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAPIKey in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

