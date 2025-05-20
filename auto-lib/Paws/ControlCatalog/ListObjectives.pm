
package Paws::ControlCatalog::ListObjectives;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ObjectiveFilter => (is => 'ro', isa => 'Paws::ControlCatalog::ObjectiveFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListObjectives');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/objectives');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ControlCatalog::ListObjectivesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlCatalog::ListObjectives - Arguments for method ListObjectives on L<Paws::ControlCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListObjectives on the
L<AWS Control Catalog|Paws::ControlCatalog> service. Use the attributes of this class
as arguments to method ListObjectives.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListObjectives.

=head1 SYNOPSIS

    my $controlcatalog = Paws->service('ControlCatalog');
    my $ListObjectivesResponse = $controlcatalog->ListObjectives(
      MaxResults      => 1,                      # OPTIONAL
      NextToken       => 'MyPaginationToken',    # OPTIONAL
      ObjectiveFilter => {
        Domains => [
          {
            Arn => 'MyDomainArn',    # min: 33, max: 2048; OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListObjectivesResponse->NextToken;
    my $Objectives = $ListObjectivesResponse->Objectives;

    # Returns a L<Paws::ControlCatalog::ListObjectivesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/controlcatalog/ListObjectives>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results on a page or for an API request call.



=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.



=head2 ObjectiveFilter => L<Paws::ControlCatalog::ObjectiveFilter>

An optional filter that narrows the results to a specific domain.

This filter allows you to specify one domain ARN at a time. Passing
multiple ARNs in the C<ObjectiveFilter> isnE<rsquo>t currently
supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListObjectives in L<Paws::ControlCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

