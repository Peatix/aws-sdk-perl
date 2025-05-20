
package Paws::DevOpsGuru::ListAnomalousLogGroups;
  use Moose;
  has InsightId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAnomalousLogGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/list-log-anomalies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::ListAnomalousLogGroupsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::ListAnomalousLogGroups - Arguments for method ListAnomalousLogGroups on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAnomalousLogGroups on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method ListAnomalousLogGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAnomalousLogGroups.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $ListAnomalousLogGroupsResponse = $devops -guru->ListAnomalousLogGroups(
      InsightId  => 'MyInsightId',
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyUuidNextToken',    # OPTIONAL
    );

    # Results:
    my $AnomalousLogGroups =
      $ListAnomalousLogGroupsResponse->AnomalousLogGroups;
    my $InsightId = $ListAnomalousLogGroupsResponse->InsightId;
    my $NextToken = $ListAnomalousLogGroupsResponse->NextToken;

    # Returns a L<Paws::DevOpsGuru::ListAnomalousLogGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/ListAnomalousLogGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InsightId => Str

The ID of the insight containing the log groups.



=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAnomalousLogGroups in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

