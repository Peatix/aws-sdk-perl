
package Paws::IoTTwinMaker::ListMetadataTransferJobs;
  use Moose;
  has DestinationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationType', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::ListMetadataTransferJobsFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMetadataTransferJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/metadata-transfer-jobs-list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTTwinMaker::ListMetadataTransferJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::ListMetadataTransferJobs - Arguments for method ListMetadataTransferJobs on L<Paws::IoTTwinMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMetadataTransferJobs on the
L<AWS IoT TwinMaker|Paws::IoTTwinMaker> service. Use the attributes of this class
as arguments to method ListMetadataTransferJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMetadataTransferJobs.

=head1 SYNOPSIS

    my $iottwinmaker = Paws->service('IoTTwinMaker');
    my $ListMetadataTransferJobsResponse =
      $iottwinmaker->ListMetadataTransferJobs(
      DestinationType => 's3',
      SourceType      => 's3',
      Filters         => [
        {
          State => 'VALIDATING'
          , # values: VALIDATING, PENDING, RUNNING, CANCELLING, ERROR, COMPLETED, CANCELLED; OPTIONAL
          WorkspaceId => 'MyId',    # min: 1, max: 128; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $MetadataTransferJobSummaries =
      $ListMetadataTransferJobsResponse->MetadataTransferJobSummaries;
    my $NextToken = $ListMetadataTransferJobsResponse->NextToken;

    # Returns a L<Paws::IoTTwinMaker::ListMetadataTransferJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iottwinmaker/ListMetadataTransferJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationType => Str

The metadata transfer job's destination type.

Valid values are: C<"s3">, C<"iotsitewise">, C<"iottwinmaker">

=head2 Filters => ArrayRef[L<Paws::IoTTwinMaker::ListMetadataTransferJobsFilter>]

An object that filters metadata transfer jobs.



=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 NextToken => Str

The string that specifies the next page of results.



=head2 B<REQUIRED> SourceType => Str

The metadata transfer job's source type.

Valid values are: C<"s3">, C<"iotsitewise">, C<"iottwinmaker">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMetadataTransferJobs in L<Paws::IoTTwinMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

