
package Paws::CodeConnections::ListRepositoryLinks;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRepositoryLinks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeConnections::ListRepositoryLinksOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeConnections::ListRepositoryLinks - Arguments for method ListRepositoryLinks on L<Paws::CodeConnections>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRepositoryLinks on the
L<AWS CodeConnections|Paws::CodeConnections> service. Use the attributes of this class
as arguments to method ListRepositoryLinks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRepositoryLinks.

=head1 SYNOPSIS

    my $codeconnections = Paws->service('CodeConnections');
    my $ListRepositoryLinksOutput = $codeconnections->ListRepositoryLinks(
      MaxResults => 1,                     # OPTIONAL
      NextToken  => 'MySharpNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListRepositoryLinksOutput->NextToken;
    my $RepositoryLinks = $ListRepositoryLinksOutput->RepositoryLinks;

    # Returns a L<Paws::CodeConnections::ListRepositoryLinksOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeconnections/ListRepositoryLinks>

=head1 ATTRIBUTES


=head2 MaxResults => Int

A non-zero, non-negative integer used to limit the number of returned
results.



=head2 NextToken => Str

An enumeration token that, when provided in a request, returns the next
batch of the results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRepositoryLinks in L<Paws::CodeConnections>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

