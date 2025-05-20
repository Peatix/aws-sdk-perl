
package Paws::Transfer::ListConnectors;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConnectors');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::ListConnectorsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListConnectors - Arguments for method ListConnectors on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConnectors on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method ListConnectors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConnectors.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $ListConnectorsResponse = $transfer->ListConnectors(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Connectors = $ListConnectorsResponse->Connectors;
    my $NextToken  = $ListConnectorsResponse->NextToken;

    # Returns a L<Paws::Transfer::ListConnectorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/ListConnectors>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return.



=head2 NextToken => Str

When you can get additional results from the C<ListConnectors> call, a
C<NextToken> parameter is returned in the output. You can then pass in
a subsequent command to the C<NextToken> parameter to continue listing
additional connectors.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConnectors in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

