
package Paws::PartnerCentralSelling::ListResourceSnapshotJobs;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has EngagementIdentifier => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Sort => (is => 'ro', isa => 'Paws::PartnerCentralSelling::SortObject');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceSnapshotJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::ListResourceSnapshotJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListResourceSnapshotJobs - Arguments for method ListResourceSnapshotJobs on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceSnapshotJobs on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method ListResourceSnapshotJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceSnapshotJobs.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $ListResourceSnapshotJobsResponse =
      $partnercentral -selling->ListResourceSnapshotJobs(
      Catalog              => 'MyCatalogIdentifier',
      EngagementIdentifier => 'MyEngagementIdentifier',    # OPTIONAL
      MaxResults           => 1,                           # OPTIONAL
      NextToken            => 'MyString',                  # OPTIONAL
      Sort                 => {
        SortBy    => 'CreatedDate',    # values: CreatedDate; OPTIONAL
        SortOrder => 'ASCENDING',      # values: ASCENDING, DESCENDING; OPTIONAL
      },    # OPTIONAL
      Status => 'Running',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListResourceSnapshotJobsResponse->NextToken;
    my $ResourceSnapshotJobSummaries =
      $ListResourceSnapshotJobsResponse->ResourceSnapshotJobSummaries;

# Returns a L<Paws::PartnerCentralSelling::ListResourceSnapshotJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/ListResourceSnapshotJobs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog related to the request.



=head2 EngagementIdentifier => Str

The identifier of the engagement to filter the response.



=head2 MaxResults => Int

The maximum number of results to return in a single call. If omitted,
defaults to 50.



=head2 NextToken => Str

The token for the next set of results.



=head2 Sort => L<Paws::PartnerCentralSelling::SortObject>

Configures the sorting of the response. If omitted, results are sorted
by C<CreatedDate> in descending order.



=head2 Status => Str

The status of the jobs to filter the response.

Valid values are: C<"Running">, C<"Stopped">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceSnapshotJobs in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

