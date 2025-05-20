
package Paws::WAFV2::CreateAPIKey;
  use Moose;
  has Scope => (is => 'ro', isa => 'Str', required => 1);
  has TokenDomains => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAPIKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFV2::CreateAPIKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::CreateAPIKey - Arguments for method CreateAPIKey on L<Paws::WAFV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAPIKey on the
L<AWS WAFV2|Paws::WAFV2> service. Use the attributes of this class
as arguments to method CreateAPIKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAPIKey.

=head1 SYNOPSIS

    my $wafv2 = Paws->service('WAFV2');
    my $CreateAPIKeyResponse = $wafv2->CreateAPIKey(
      Scope        => 'CLOUDFRONT',
      TokenDomains => [
        'MyTokenDomain', ...    # min: 1, max: 253
      ],

    );

    # Results:
    my $APIKey = $CreateAPIKeyResponse->APIKey;

    # Returns a L<Paws::WAFV2::CreateAPIKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wafv2/CreateAPIKey>

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

=head2 B<REQUIRED> TokenDomains => ArrayRef[Str|Undef]

The client application domains that you want to use this API key for.

Example JSON: C<"TokenDomains": ["abc.com", "store.abc.com"]>

Public suffixes aren't allowed. For example, you can't use C<gov.au> or
C<co.uk> as token domains.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAPIKey in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

