
package Paws::Route53Resolver::UpdateResolverConfig;
  use Moose;
  has AutodefinedReverseFlag => (is => 'ro', isa => 'Str', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResolverConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::UpdateResolverConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UpdateResolverConfig - Arguments for method UpdateResolverConfig on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResolverConfig on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method UpdateResolverConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResolverConfig.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $UpdateResolverConfigResponse = $route53resolver->UpdateResolverConfig(
      AutodefinedReverseFlag => 'ENABLE',
      ResourceId             => 'MyResourceId',

    );

    # Results:
    my $ResolverConfig = $UpdateResolverConfigResponse->ResolverConfig;

    # Returns a L<Paws::Route53Resolver::UpdateResolverConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/UpdateResolverConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutodefinedReverseFlag => Str

Indicates whether or not the Resolver will create autodefined rules for
reverse DNS lookups. This is enabled by default. Disabling this option
will also affect EC2-Classic instances using ClassicLink. For more
information, see ClassicLink
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html)
in the I<Amazon EC2 guide>.

We are retiring EC2-Classic on August 15, 2022. We recommend that you
migrate from EC2-Classic to a VPC. For more information, see Migrate
from EC2-Classic to a VPC
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-migrate.html)
in the I<Amazon EC2 guide> and the blog EC2-Classic Networking is
Retiring E<ndash> HereE<rsquo>s How to Prepare
(http://aws.amazon.com/blogs/aws/ec2-classic-is-retiring-heres-how-to-prepare/).

It can take some time for the status change to be completed.

Valid values are: C<"ENABLE">, C<"DISABLE">, C<"USE_LOCAL_RESOURCE_SETTING">

=head2 B<REQUIRED> ResourceId => Str

Resource ID of the Amazon VPC that you want to update the Resolver
configuration for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResolverConfig in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

