
package Paws::Rekognition::ListMediaAnalysisJobs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMediaAnalysisJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::ListMediaAnalysisJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListMediaAnalysisJobs - Arguments for method ListMediaAnalysisJobs on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMediaAnalysisJobs on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method ListMediaAnalysisJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMediaAnalysisJobs.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $ListMediaAnalysisJobsResponse = $rekognition->ListMediaAnalysisJobs(
      MaxResults => 1,                              # OPTIONAL
      NextToken  => 'MyExtendedPaginationToken',    # OPTIONAL
    );

    # Results:
    my $MediaAnalysisJobs = $ListMediaAnalysisJobsResponse->MediaAnalysisJobs;
    my $NextToken         = $ListMediaAnalysisJobsResponse->NextToken;

    # Returns a L<Paws::Rekognition::ListMediaAnalysisJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/ListMediaAnalysisJobs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return per paginated call. The largest
value user can specify is 100. If user specifies a value greater than
100, an C<InvalidParameterException> error occurs. The default value is
100.



=head2 NextToken => Str

Pagination token, if the previous response was incomplete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMediaAnalysisJobs in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

