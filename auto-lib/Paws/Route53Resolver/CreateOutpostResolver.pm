
package Paws::Route53Resolver::CreateOutpostResolver;
  use Moose;
  has CreatorRequestId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceCount => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OutpostArn => (is => 'ro', isa => 'Str', required => 1);
  has PreferredInstanceType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateOutpostResolver');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::CreateOutpostResolverResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::CreateOutpostResolver - Arguments for method CreateOutpostResolver on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateOutpostResolver on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method CreateOutpostResolver.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateOutpostResolver.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $CreateOutpostResolverResponse = $route53resolver->CreateOutpostResolver(
      CreatorRequestId      => 'MyCreatorRequestId',
      Name                  => 'MyOutpostResolverName',
      OutpostArn            => 'MyOutpostArn',
      PreferredInstanceType => 'MyOutpostInstanceType',
      InstanceCount         => 1,                         # OPTIONAL
      Tags                  => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $OutpostResolver = $CreateOutpostResolverResponse->OutpostResolver;

    # Returns a L<Paws::Route53Resolver::CreateOutpostResolverResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/CreateOutpostResolver>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatorRequestId => Str

A unique string that identifies the request and that allows failed
requests to be retried without the risk of running the operation twice.

C<CreatorRequestId> can be any unique string, for example, a date/time
stamp.



=head2 InstanceCount => Int

Number of Amazon EC2 instances for the Resolver on Outpost. The default
and minimal value is 4.



=head2 B<REQUIRED> Name => Str

A friendly name that lets you easily find a configuration in the
Resolver dashboard in the Route 53 console.



=head2 B<REQUIRED> OutpostArn => Str

The Amazon Resource Name (ARN) of the Outpost. If you specify this, you
must also specify a value for the C<PreferredInstanceType>.



=head2 B<REQUIRED> PreferredInstanceType => Str

The Amazon EC2 instance type. If you specify this, you must also
specify a value for the C<OutpostArn>.



=head2 Tags => ArrayRef[L<Paws::Route53Resolver::Tag>]

A string that helps identify the Route 53 Resolvers on Outpost.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateOutpostResolver in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

