
package Paws::PartnerCentralSelling::ListResourceSnapshots;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str');
  has EngagementIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceIdentifier => (is => 'ro', isa => 'Str');
  has ResourceSnapshotTemplateIdentifier => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceSnapshots');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::ListResourceSnapshotsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListResourceSnapshots - Arguments for method ListResourceSnapshots on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceSnapshots on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method ListResourceSnapshots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceSnapshots.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $ListResourceSnapshotsResponse =
      $partnercentral -selling->ListResourceSnapshots(
      Catalog                            => 'MyCatalogIdentifier',
      EngagementIdentifier               => 'MyEngagementIdentifier',
      CreatedBy                          => 'MyAwsAccount',           # OPTIONAL
      MaxResults                         => 1,                        # OPTIONAL
      NextToken                          => 'MyString',               # OPTIONAL
      ResourceIdentifier                 => 'MyResourceIdentifier',   # OPTIONAL
      ResourceSnapshotTemplateIdentifier => 'MyResourceTemplateName', # OPTIONAL
      ResourceType                       => 'Opportunity',            # OPTIONAL
      );

    # Results:
    my $NextToken = $ListResourceSnapshotsResponse->NextToken;
    my $ResourceSnapshotSummaries =
      $ListResourceSnapshotsResponse->ResourceSnapshotSummaries;

# Returns a L<Paws::PartnerCentralSelling::ListResourceSnapshotsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/ListResourceSnapshots>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog related to the request.



=head2 CreatedBy => Str

Filters the response to include only snapshots of resources owned by
the specified AWS account.



=head2 B<REQUIRED> EngagementIdentifier => Str

The unique identifier of the engagement associated with the snapshots.



=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token for the next set of results.



=head2 ResourceIdentifier => Str

Filters the response to include only snapshots of the specified
resource.



=head2 ResourceSnapshotTemplateIdentifier => Str

Filters the response to include only snapshots created using the
specified template.



=head2 ResourceType => Str

Filters the response to include only snapshots of the specified
resource type.

Valid values are: C<"Opportunity">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceSnapshots in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

