
package Paws::Artifact::ListReports;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReports');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/report/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Artifact::ListReportsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Artifact::ListReports - Arguments for method ListReports on L<Paws::Artifact>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReports on the
L<AWS Artifact|Paws::Artifact> service. Use the attributes of this class
as arguments to method ListReports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReports.

=head1 SYNOPSIS

    my $artifact = Paws->service('Artifact');
    my $ListReportsResponse = $artifact->ListReports(
      MaxResults => 1,                         # OPTIONAL
      NextToken  => 'MyNextTokenAttribute',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListReportsResponse->NextToken;
    my $Reports   = $ListReportsResponse->Reports;

    # Returns a L<Paws::Artifact::ListReportsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/artifact/ListReports>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of resources to return in the paginated response.



=head2 NextToken => Str

Pagination token to request the next page of resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReports in L<Paws::Artifact>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

