
package Paws::PartnerCentralSelling::ListEngagementResourceAssociations;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has CreatedBy => (is => 'ro', isa => 'Str');
  has EngagementIdentifier => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceIdentifier => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEngagementResourceAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::ListEngagementResourceAssociationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::ListEngagementResourceAssociations - Arguments for method ListEngagementResourceAssociations on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEngagementResourceAssociations on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method ListEngagementResourceAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEngagementResourceAssociations.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $ListEngagementResourceAssociationsResponse =
      $partnercentral -selling->ListEngagementResourceAssociations(
      Catalog              => 'MyCatalogIdentifier',
      CreatedBy            => 'MyAwsAccount',              # OPTIONAL
      EngagementIdentifier => 'MyEngagementIdentifier',    # OPTIONAL
      MaxResults           => 1,                           # OPTIONAL
      NextToken            => 'MyString',                  # OPTIONAL
      ResourceIdentifier   => 'MyResourceIdentifier',      # OPTIONAL
      ResourceType         => 'Opportunity',               # OPTIONAL
      );

    # Results:
    my $EngagementResourceAssociationSummaries =
      $ListEngagementResourceAssociationsResponse
      ->EngagementResourceAssociationSummaries;
    my $NextToken = $ListEngagementResourceAssociationsResponse->NextToken;

# Returns a L<Paws::PartnerCentralSelling::ListEngagementResourceAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/ListEngagementResourceAssociations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog in which to search for engagement-resource
associations. Valid Values: "AWS" or "Sandbox"

=over

=item *

C<AWS> for production environments.

=item *

C<Sandbox> for testing and development purposes.

=back




=head2 CreatedBy => Str

Filters the response to include only snapshots of resources owned by
the specified AWS account ID. Use this when you want to find
associations related to resources owned by a particular account.



=head2 EngagementIdentifier => Str

Filters the results to include only associations related to the
specified engagement. Use this when you want to find all resources
associated with a specific engagement.



=head2 MaxResults => Int

Limits the number of results returned in a single call. Use this to
control the number of results returned, especially useful for
pagination.



=head2 NextToken => Str

A token used for pagination of results. Include this token in
subsequent requests to retrieve the next set of results.



=head2 ResourceIdentifier => Str

Filters the results to include only associations with the specified
resource. Varies depending on the resource type. Use this when you want
to find all engagements associated with a specific resource.



=head2 ResourceType => Str

Filters the results to include only associations with resources of the
specified type.

Valid values are: C<"Opportunity">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEngagementResourceAssociations in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

