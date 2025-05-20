
package Paws::PartnerCentralSelling::CreateResourceSnapshotJob;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has EngagementIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ResourceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ResourceSnapshotTemplateIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::PartnerCentralSelling::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResourceSnapshotJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::CreateResourceSnapshotJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::CreateResourceSnapshotJob - Arguments for method CreateResourceSnapshotJob on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResourceSnapshotJob on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method CreateResourceSnapshotJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResourceSnapshotJob.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $CreateResourceSnapshotJobResponse =
      $partnercentral -selling->CreateResourceSnapshotJob(
      Catalog     => 'MyCatalogIdentifier',
      ClientToken => 'MyCreateResourceSnapshotJobRequestClientTokenString',
      EngagementIdentifier               => 'MyEngagementIdentifier',
      ResourceIdentifier                 => 'MyResourceIdentifier',
      ResourceSnapshotTemplateIdentifier => 'MyResourceTemplateName',
      ResourceType                       => 'Opportunity',
      Tags                               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $Arn = $CreateResourceSnapshotJobResponse->Arn;
    my $Id  = $CreateResourceSnapshotJobResponse->Id;

# Returns a L<Paws::PartnerCentralSelling::CreateResourceSnapshotJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/CreateResourceSnapshotJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog in which to create the snapshot job. Valid values
are C<AWS> and C< Sandbox>.



=head2 B<REQUIRED> ClientToken => Str

A client-generated UUID used for idempotency check. The token helps
prevent duplicate job creations.



=head2 B<REQUIRED> EngagementIdentifier => Str

Specifies the identifier of the engagement associated with the resource
to be snapshotted.



=head2 B<REQUIRED> ResourceIdentifier => Str

Specifies the identifier of the specific resource to be snapshotted.
The format depends on the C< ResourceType>.



=head2 B<REQUIRED> ResourceSnapshotTemplateIdentifier => Str

Specifies the name of the template that defines the schema for the
snapshot.



=head2 B<REQUIRED> ResourceType => Str

The type of resource for which the snapshot job is being created. Must
be one of the supported resource types i.e. C<Opportunity>

Valid values are: C<"Opportunity">

=head2 Tags => ArrayRef[L<Paws::PartnerCentralSelling::Tag>]

A list of objects specifying each tag name and value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourceSnapshotJob in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

