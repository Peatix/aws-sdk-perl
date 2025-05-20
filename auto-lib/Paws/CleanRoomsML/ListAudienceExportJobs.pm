
package Paws::CleanRoomsML::ListAudienceExportJobs;
  use Moose;
  has AudienceGenerationJobArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'audienceGenerationJobArn');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAudienceExportJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/audience-export-job');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::ListAudienceExportJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListAudienceExportJobs - Arguments for method ListAudienceExportJobs on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAudienceExportJobs on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method ListAudienceExportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAudienceExportJobs.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $ListAudienceExportJobsResponse =
      $cleanrooms -ml->ListAudienceExportJobs(
      AudienceGenerationJobArn => 'MyAudienceGenerationJobArn',    # OPTIONAL
      MaxResults               => 1,                               # OPTIONAL
      NextToken                => 'MyNextToken',                   # OPTIONAL
      );

    # Results:
    my $AudienceExportJobs =
      $ListAudienceExportJobsResponse->AudienceExportJobs;
    my $NextToken = $ListAudienceExportJobsResponse->NextToken;

    # Returns a L<Paws::CleanRoomsML::ListAudienceExportJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/ListAudienceExportJobs>

=head1 ATTRIBUTES


=head2 AudienceGenerationJobArn => Str

The Amazon Resource Name (ARN) of the audience generation job that you
are interested in.



=head2 MaxResults => Int

The maximum size of the results that is returned per call.



=head2 NextToken => Str

The token value retrieved from a previous call to access the next page
of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAudienceExportJobs in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

