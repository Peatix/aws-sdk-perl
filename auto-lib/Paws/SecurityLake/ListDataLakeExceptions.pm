
package Paws::SecurityLake::ListDataLakeExceptions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'regions');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataLakeExceptions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/datalake/exceptions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::ListDataLakeExceptionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::ListDataLakeExceptions - Arguments for method ListDataLakeExceptions on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataLakeExceptions on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method ListDataLakeExceptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataLakeExceptions.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $ListDataLakeExceptionsResponse = $securitylake->ListDataLakeExceptions(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyNextToken',          # OPTIONAL
      Regions    => [ 'MyRegion', ... ],    # OPTIONAL
    );

    # Results:
    my $Exceptions = $ListDataLakeExceptionsResponse->Exceptions;
    my $NextToken  = $ListDataLakeExceptionsResponse->NextToken;

    # Returns a L<Paws::SecurityLake::ListDataLakeExceptionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/ListDataLakeExceptions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Lists the maximum number of failures in Security Lake.



=head2 NextToken => Str

Lists if there are more results available. The value of nextToken is a
unique pagination token for each page. Repeat the call using the
returned token to retrieve the next page. Keep all other arguments
unchanged.

Each pagination token expires after 24 hours. Using an expired
pagination token will return an HTTP 400 InvalidToken error.



=head2 Regions => ArrayRef[Str|Undef]

The Amazon Web Services Regions from which exceptions are retrieved.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataLakeExceptions in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

