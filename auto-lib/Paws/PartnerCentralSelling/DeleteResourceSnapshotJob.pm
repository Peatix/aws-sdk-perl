
package Paws::PartnerCentralSelling::DeleteResourceSnapshotJob;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has ResourceSnapshotJobIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResourceSnapshotJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::DeleteResourceSnapshotJob - Arguments for method DeleteResourceSnapshotJob on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResourceSnapshotJob on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method DeleteResourceSnapshotJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResourceSnapshotJob.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    $partnercentral -selling->DeleteResourceSnapshotJob(
      Catalog                       => 'MyCatalogIdentifier',
      ResourceSnapshotJobIdentifier => 'MyResourceSnapshotJobIdentifier',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/DeleteResourceSnapshotJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog from which to delete the snapshot job. Valid
values are C<AWS> and C<Sandbox>.



=head2 B<REQUIRED> ResourceSnapshotJobIdentifier => Str

The unique identifier of the resource snapshot job to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResourceSnapshotJob in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

