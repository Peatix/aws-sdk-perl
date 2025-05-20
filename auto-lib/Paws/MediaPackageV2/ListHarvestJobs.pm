
package Paws::MediaPackageV2::ListHarvestJobs;
  use Moose;
  has ChannelGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChannelGroupName', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'channelName');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has OriginEndpointName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'originEndpointName');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'includeStatus');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHarvestJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channelGroup/{ChannelGroupName}/harvestJob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackageV2::ListHarvestJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::ListHarvestJobs - Arguments for method ListHarvestJobs on L<Paws::MediaPackageV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHarvestJobs on the
L<AWS Elemental MediaPackage v2|Paws::MediaPackageV2> service. Use the attributes of this class
as arguments to method ListHarvestJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHarvestJobs.

=head1 SYNOPSIS

    my $mediapackagev2 = Paws->service('MediaPackageV2');
    my $ListHarvestJobsResponse = $mediapackagev2->ListHarvestJobs(
      ChannelGroupName => 'MyResourceName',
      ChannelName => 'MyListHarvestJobsRequestChannelNameString',    # OPTIONAL
      MaxResults  => 1,                                              # OPTIONAL
      NextToken   => 'MyString',                                     # OPTIONAL
      OriginEndpointName =>
        'MyListHarvestJobsRequestOriginEndpointNameString',          # OPTIONAL
      Status => 'QUEUED',                                            # OPTIONAL
    );

    # Results:
    my $Items     = $ListHarvestJobsResponse->Items;
    my $NextToken = $ListHarvestJobsResponse->NextToken;

    # Returns a L<Paws::MediaPackageV2::ListHarvestJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediapackagev2/ListHarvestJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelGroupName => Str

The name of the channel group to filter the harvest jobs by. If
specified, only harvest jobs associated with channels in this group
will be returned.



=head2 ChannelName => Str

The name of the channel to filter the harvest jobs by. If specified,
only harvest jobs associated with this channel will be returned.



=head2 MaxResults => Int

The maximum number of harvest jobs to return in a single request. If
not specified, a default value will be used.



=head2 NextToken => Str

A token used for pagination. Provide this value in subsequent requests
to retrieve the next set of results.



=head2 OriginEndpointName => Str

The name of the origin endpoint to filter the harvest jobs by. If
specified, only harvest jobs associated with this origin endpoint will
be returned.



=head2 Status => Str

The status to filter the harvest jobs by. If specified, only harvest
jobs with this status will be returned.

Valid values are: C<"QUEUED">, C<"IN_PROGRESS">, C<"CANCELLED">, C<"COMPLETED">, C<"FAILED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHarvestJobs in L<Paws::MediaPackageV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

