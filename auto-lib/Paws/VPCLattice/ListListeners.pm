
package Paws::VPCLattice::ListListeners;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ServiceIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'serviceIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListListeners');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/services/{serviceIdentifier}/listeners');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::ListListenersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::ListListeners - Arguments for method ListListeners on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListListeners on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method ListListeners.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListListeners.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $ListListenersResponse = $vpc -lattice->ListListeners(
      ServiceIdentifier => 'MyServiceIdentifier',
      MaxResults        => 1,                       # OPTIONAL
      NextToken         => 'MyNextToken',           # OPTIONAL
    );

    # Results:
    my $Items     = $ListListenersResponse->Items;
    my $NextToken = $ListListenersResponse->NextToken;

    # Returns a L<Paws::VPCLattice::ListListenersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/ListListeners>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

A pagination token for the next page of results.



=head2 B<REQUIRED> ServiceIdentifier => Str

The ID or ARN of the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListListeners in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

