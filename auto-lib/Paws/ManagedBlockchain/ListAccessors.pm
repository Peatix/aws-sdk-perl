
package Paws::ManagedBlockchain::ListAccessors;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NetworkType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'networkType');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccessors');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accessors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ManagedBlockchain::ListAccessorsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ManagedBlockchain::ListAccessors - Arguments for method ListAccessors on L<Paws::ManagedBlockchain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAccessors on the
L<Amazon Managed Blockchain|Paws::ManagedBlockchain> service. Use the attributes of this class
as arguments to method ListAccessors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAccessors.

=head1 SYNOPSIS

    my $managedblockchain = Paws->service('ManagedBlockchain');
    my $ListAccessorsOutput = $managedblockchain->ListAccessors(
      MaxResults  => 1,                      # OPTIONAL
      NetworkType => 'ETHEREUM_GOERLI',      # OPTIONAL
      NextToken   => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Accessors = $ListAccessorsOutput->Accessors;
    my $NextToken = $ListAccessorsOutput->NextToken;

    # Returns a L<Paws::ManagedBlockchain::ListAccessorsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/managedblockchain/ListAccessors>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of accessors to list.



=head2 NetworkType => Str

The blockchain network that the C<Accessor> token is created for.

Use the value C<ETHEREUM_MAINNET_AND_GOERLI> for all existing
C<Accessors> tokens that were created before the C<networkType>
property was introduced.

Valid values are: C<"ETHEREUM_GOERLI">, C<"ETHEREUM_MAINNET">, C<"ETHEREUM_MAINNET_AND_GOERLI">, C<"POLYGON_MAINNET">, C<"POLYGON_MUMBAI">

=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAccessors in L<Paws::ManagedBlockchain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

