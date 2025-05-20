
package Paws::Panorama::ListNodeFromTemplateJobs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListNodeFromTemplateJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/packages/template-job');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Panorama::ListNodeFromTemplateJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ListNodeFromTemplateJobs - Arguments for method ListNodeFromTemplateJobs on L<Paws::Panorama>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListNodeFromTemplateJobs on the
L<AWS Panorama|Paws::Panorama> service. Use the attributes of this class
as arguments to method ListNodeFromTemplateJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListNodeFromTemplateJobs.

=head1 SYNOPSIS

    my $panorama = Paws->service('Panorama');
    my $ListNodeFromTemplateJobsResponse = $panorama->ListNodeFromTemplateJobs(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListNodeFromTemplateJobsResponse->NextToken;
    my $NodeFromTemplateJobs =
      $ListNodeFromTemplateJobsResponse->NodeFromTemplateJobs;

    # Returns a L<Paws::Panorama::ListNodeFromTemplateJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/panorama/ListNodeFromTemplateJobs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of node from template jobs to return in one page of
results.



=head2 NextToken => Str

Specify the pagination token from a previous request to retrieve the
next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListNodeFromTemplateJobs in L<Paws::Panorama>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

