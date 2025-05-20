
package Paws::SimSpaceWeaver::ListSimulations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSimulations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listsimulations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimSpaceWeaver::ListSimulationsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimSpaceWeaver::ListSimulations - Arguments for method ListSimulations on L<Paws::SimSpaceWeaver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSimulations on the
L<AWS SimSpace Weaver|Paws::SimSpaceWeaver> service. Use the attributes of this class
as arguments to method ListSimulations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSimulations.

=head1 SYNOPSIS

    my $simspaceweaver = Paws->service('SimSpaceWeaver');
    my $ListSimulationsOutput = $simspaceweaver->ListSimulations(
      MaxResults => 1,                     # OPTIONAL
      NextToken  => 'MyOptionalString',    # OPTIONAL
    );

    # Results:
    my $NextToken   = $ListSimulationsOutput->NextToken;
    my $Simulations = $ListSimulationsOutput->Simulations;

    # Returns a L<Paws::SimSpaceWeaver::ListSimulationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/simspaceweaver/ListSimulations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of simulations to list.



=head2 NextToken => Str

If SimSpace Weaver returns C<nextToken>, then there are more results
available. The value of C<nextToken> is a unique pagination token for
each page. To retrieve the next page, call the operation again using
the returned token. Keep all other arguments unchanged. If no results
remain, then C<nextToken> is set to C<null>. Each pagination token
expires after 24 hours. If you provide a token that isn't valid, then
you receive an I<HTTP 400 ValidationException> error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSimulations in L<Paws::SimSpaceWeaver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

