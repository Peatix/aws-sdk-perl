
package Paws::VPCLattice::ListRules;
  use Moose;
  has ListenerIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'listenerIdentifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ServiceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRules');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::ListRulesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::ListRules - Arguments for method ListRules on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRules on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method ListRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRules.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $ListRulesResponse = $vpc -lattice->ListRules(
      ListenerIdentifier => 'MyListenerIdentifier',
      ServiceIdentifier  => 'MyServiceIdentifier',
      MaxResults         => 1,                        # OPTIONAL
      NextToken          => 'MyNextToken',            # OPTIONAL
    );

    # Results:
    my $Items     = $ListRulesResponse->Items;
    my $NextToken = $ListRulesResponse->NextToken;

    # Returns a L<Paws::VPCLattice::ListRulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/ListRules>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ListenerIdentifier => Str

The ID or ARN of the listener.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A pagination token for the next page of results.



=head2 B<REQUIRED> ServiceIdentifier => Str

The ID or ARN of the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRules in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

