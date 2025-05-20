
package Paws::MediaConvert::SearchJobs;
  use Moose;
  has InputFile => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'inputFile');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Order => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'order');
  has Queue => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'queue');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-08-29/search');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConvert::SearchJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::SearchJobs - Arguments for method SearchJobs on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchJobs on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method SearchJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchJobs.

=head1 SYNOPSIS

    my $mediaconvert = Paws->service('MediaConvert');
    my $SearchJobsResponse = $mediaconvert->SearchJobs(
      InputFile  => 'My__string',    # OPTIONAL
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
      Order      => 'ASCENDING',     # OPTIONAL
      Queue      => 'My__string',    # OPTIONAL
      Status     => 'SUBMITTED',     # OPTIONAL
    );

    # Results:
    my $Jobs      = $SearchJobsResponse->Jobs;
    my $NextToken = $SearchJobsResponse->NextToken;

    # Returns a L<Paws::MediaConvert::SearchJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/SearchJobs>

=head1 ATTRIBUTES


=head2 InputFile => Str

Optional. Provide your input file URL or your partial input file name.
The maximum length for an input file is 300 characters.



=head2 MaxResults => Int

Optional. Number of jobs, up to twenty, that will be returned at one
time.



=head2 NextToken => Str

Optional. Use this string, provided with the response to a previous
request, to request the next batch of jobs.



=head2 Order => Str

Optional. When you request lists of resources, you can specify whether
they are sorted in ASCENDING or DESCENDING order. Default varies by
resource.

Valid values are: C<"ASCENDING">, C<"DESCENDING">

=head2 Queue => Str

Optional. Provide a queue name, or a queue ARN, to return only jobs
from that queue.



=head2 Status => Str

Optional. A job's status can be SUBMITTED, PROGRESSING, COMPLETE,
CANCELED, or ERROR.

Valid values are: C<"SUBMITTED">, C<"PROGRESSING">, C<"COMPLETE">, C<"CANCELED">, C<"ERROR">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchJobs in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

