
package Paws::Personalize::ListBatchSegmentJobs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SolutionVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'solutionVersionArn' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBatchSegmentJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::ListBatchSegmentJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListBatchSegmentJobs - Arguments for method ListBatchSegmentJobs on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBatchSegmentJobs on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method ListBatchSegmentJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBatchSegmentJobs.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $ListBatchSegmentJobsResponse = $personalize->ListBatchSegmentJobs(
      MaxResults         => 1,                # OPTIONAL
      NextToken          => 'MyNextToken',    # OPTIONAL
      SolutionVersionArn => 'MyArn',          # OPTIONAL
    );

    # Results:
    my $BatchSegmentJobs = $ListBatchSegmentJobsResponse->BatchSegmentJobs;
    my $NextToken        = $ListBatchSegmentJobsResponse->NextToken;

    # Returns a L<Paws::Personalize::ListBatchSegmentJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/ListBatchSegmentJobs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of batch segment job results to return in each page.
The default value is 100.



=head2 NextToken => Str

The token to request the next page of results.



=head2 SolutionVersionArn => Str

The Amazon Resource Name (ARN) of the solution version that the batch
segment jobs used to generate batch segments.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBatchSegmentJobs in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

