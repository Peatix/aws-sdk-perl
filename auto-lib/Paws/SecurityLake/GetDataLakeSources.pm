
package Paws::SecurityLake::GetDataLakeSources;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accounts');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataLakeSources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/datalake/sources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::GetDataLakeSourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::GetDataLakeSources - Arguments for method GetDataLakeSources on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataLakeSources on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method GetDataLakeSources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataLakeSources.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $GetDataLakeSourcesResponse = $securitylake->GetDataLakeSources(
      Accounts => [
        'MyAwsAccountId', ...    # min: 12, max: 12
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $DataLakeArn     = $GetDataLakeSourcesResponse->DataLakeArn;
    my $DataLakeSources = $GetDataLakeSourcesResponse->DataLakeSources;
    my $NextToken       = $GetDataLakeSourcesResponse->NextToken;

    # Returns a L<Paws::SecurityLake::GetDataLakeSourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/GetDataLakeSources>

=head1 ATTRIBUTES


=head2 Accounts => ArrayRef[Str|Undef]

The Amazon Web Services account ID for which a static snapshot of the
current Amazon Web Services Region, including enabled accounts and log
sources, is retrieved.



=head2 MaxResults => Int

The maximum limit of accounts for which the static snapshot of the
current Region, including enabled accounts and log sources, is
retrieved.



=head2 NextToken => Str

Lists if there are more results available. The value of nextToken is a
unique pagination token for each page. Repeat the call using the
returned token to retrieve the next page. Keep all other arguments
unchanged.

Each pagination token expires after 24 hours. Using an expired
pagination token will return an HTTP 400 InvalidToken error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataLakeSources in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

