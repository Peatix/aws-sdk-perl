
package Paws::Route53Resolver::UpdateOutpostResolver;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has InstanceCount => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str');
  has PreferredInstanceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateOutpostResolver');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::UpdateOutpostResolverResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UpdateOutpostResolver - Arguments for method UpdateOutpostResolver on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateOutpostResolver on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method UpdateOutpostResolver.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateOutpostResolver.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $UpdateOutpostResolverResponse = $route53resolver->UpdateOutpostResolver(
      Id                    => 'MyResourceId',
      InstanceCount         => 1,                          # OPTIONAL
      Name                  => 'MyOutpostResolverName',    # OPTIONAL
      PreferredInstanceType => 'MyOutpostInstanceType',    # OPTIONAL
    );

    # Results:
    my $OutpostResolver = $UpdateOutpostResolverResponse->OutpostResolver;

    # Returns a L<Paws::Route53Resolver::UpdateOutpostResolverResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/UpdateOutpostResolver>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

A unique string that identifies Resolver on an Outpost.



=head2 InstanceCount => Int

The Amazon EC2 instance count for a Resolver on the Outpost.



=head2 Name => Str

Name of the Resolver on the Outpost.



=head2 PreferredInstanceType => Str

Amazon EC2 instance type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateOutpostResolver in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

