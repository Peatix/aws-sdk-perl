
package Paws::Keyspaces::ListTypes;
  use Moose;
  has KeyspaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyspaceName' , required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Keyspaces::ListTypesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::ListTypes - Arguments for method ListTypes on L<Paws::Keyspaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTypes on the
L<Amazon Keyspaces|Paws::Keyspaces> service. Use the attributes of this class
as arguments to method ListTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTypes.

=head1 SYNOPSIS

    my $cassandra = Paws->service('Keyspaces');
    my $ListTypesResponse = $cassandra->ListTypes(
      KeyspaceName => 'MyKeyspaceName',
      MaxResults   => 1,                  # OPTIONAL
      NextToken    => 'MyNextToken',      # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTypesResponse->NextToken;
    my $Types     = $ListTypesResponse->Types;

    # Returns a L<Paws::Keyspaces::ListTypesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cassandra/ListTypes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyspaceName => Str

The name of the keyspace that contains the listed types.



=head2 MaxResults => Int

The total number of types to return in the output. If the total number
of types available is more than the value specified, a C<NextToken> is
provided in the output. To resume pagination, provide the C<NextToken>
value as an argument of a subsequent API invocation.



=head2 NextToken => Str

The pagination token. To resume pagination, provide the C<NextToken>
value as an argument of a subsequent API invocation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTypes in L<Paws::Keyspaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

