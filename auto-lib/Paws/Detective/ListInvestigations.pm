
package Paws::Detective::ListInvestigations;
  use Moose;
  has FilterCriteria => (is => 'ro', isa => 'Paws::Detective::FilterCriteria');
  has GraphArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortCriteria => (is => 'ro', isa => 'Paws::Detective::SortCriteria');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInvestigations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/investigations/listInvestigations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Detective::ListInvestigationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::ListInvestigations - Arguments for method ListInvestigations on L<Paws::Detective>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInvestigations on the
L<Amazon Detective|Paws::Detective> service. Use the attributes of this class
as arguments to method ListInvestigations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInvestigations.

=head1 SYNOPSIS

    my $api.detective = Paws->service('Detective');
    my $ListInvestigationsResponse = $api . detective->ListInvestigations(
      GraphArn       => 'MyGraphArn',
      FilterCriteria => {
        CreatedTime => {
          EndInclusive   => '1970-01-01T01:00:00',
          StartInclusive => '1970-01-01T01:00:00',

        },    # OPTIONAL
        EntityArn => {
          Value => 'MyValue',    # min: 1, max: 500

        },    # OPTIONAL
        Severity => {
          Value => 'MyValue',    # min: 1, max: 500

        },    # OPTIONAL
        State => {
          Value => 'MyValue',    # min: 1, max: 500

        },    # OPTIONAL
        Status => {
          Value => 'MyValue',    # min: 1, max: 500

        },    # OPTIONAL
      },    # OPTIONAL
      MaxResults   => 1,                        # OPTIONAL
      NextToken    => 'MyAiPaginationToken',    # OPTIONAL
      SortCriteria => {
        Field => 'SEVERITY',  # values: SEVERITY, STATUS, CREATED_TIME; OPTIONAL
        SortOrder => 'ASC',    # values: ASC, DESC; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $InvestigationDetails =
      $ListInvestigationsResponse->InvestigationDetails;
    my $NextToken = $ListInvestigationsResponse->NextToken;

    # Returns a L<Paws::Detective::ListInvestigationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.detective/ListInvestigations>

=head1 ATTRIBUTES


=head2 FilterCriteria => L<Paws::Detective::FilterCriteria>

Filters the investigation results based on a criteria.



=head2 B<REQUIRED> GraphArn => Str

The Amazon Resource Name (ARN) of the behavior graph.



=head2 MaxResults => Int

Lists the maximum number of investigations in a page.



=head2 NextToken => Str

Lists if there are more results available. The value of nextToken is a
unique pagination token for each page. Repeat the call using the
returned token to retrieve the next page. Keep all other arguments
unchanged.

Each pagination token expires after 24 hours. Using an expired
pagination token will return a Validation Exception error.



=head2 SortCriteria => L<Paws::Detective::SortCriteria>

Sorts the investigation results based on a criteria.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInvestigations in L<Paws::Detective>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

