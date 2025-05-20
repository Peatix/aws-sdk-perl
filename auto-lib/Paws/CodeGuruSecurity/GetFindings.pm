
package Paws::CodeGuruSecurity::GetFindings;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ScanName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'scanName', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findings/{scanName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruSecurity::GetFindingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruSecurity::GetFindings - Arguments for method GetFindings on L<Paws::CodeGuruSecurity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFindings on the
L<Amazon CodeGuru Security|Paws::CodeGuruSecurity> service. Use the attributes of this class
as arguments to method GetFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFindings.

=head1 SYNOPSIS

    my $codeguru-security = Paws->service('CodeGuruSecurity');
    my $GetFindingsResponse = $codeguru -security->GetFindings(
      ScanName   => 'MyScanName',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      Status     => 'Closed',         # OPTIONAL
    );

    # Results:
    my $Findings  = $GetFindingsResponse->Findings;
    my $NextToken = $GetFindingsResponse->NextToken;

    # Returns a L<Paws::CodeGuruSecurity::GetFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-security/GetFindings>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in the response. Use this
parameter when paginating results. If additional results exist beyond
the number you specify, the C<nextToken> element is returned in the
response. Use C<nextToken> in a subsequent request to retrieve
additional results. If not specified, returns 1000 results.



=head2 NextToken => Str

A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first
request. For subsequent calls, use the C<nextToken> value returned from
the previous request to continue listing results after the first page.



=head2 B<REQUIRED> ScanName => Str

The name of the scan you want to retrieve findings from.



=head2 Status => Str

The status of the findings you want to get. Pass either C<Open>,
C<Closed>, or C<All>.

Valid values are: C<"Closed">, C<"Open">, C<"All">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFindings in L<Paws::CodeGuruSecurity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

