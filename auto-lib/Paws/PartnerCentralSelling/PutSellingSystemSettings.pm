
package Paws::PartnerCentralSelling::PutSellingSystemSettings;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has ResourceSnapshotJobRoleIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSellingSystemSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::PutSellingSystemSettingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::PutSellingSystemSettings - Arguments for method PutSellingSystemSettings on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSellingSystemSettings on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method PutSellingSystemSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSellingSystemSettings.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $PutSellingSystemSettingsResponse =
      $partnercentral -selling->PutSellingSystemSettings(
      Catalog                           => 'MyCatalogIdentifier',
      ResourceSnapshotJobRoleIdentifier =>
        'MyResourceSnapshotJobRoleIdentifier',    # OPTIONAL
      );

    # Results:
    my $Catalog = $PutSellingSystemSettingsResponse->Catalog;
    my $ResourceSnapshotJobRoleArn =
      $PutSellingSystemSettingsResponse->ResourceSnapshotJobRoleArn;

# Returns a L<Paws::PartnerCentralSelling::PutSellingSystemSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/PutSellingSystemSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog in which the settings will be updated. Acceptable
values include C<AWS> for production and C<Sandbox> for testing
environments.



=head2 ResourceSnapshotJobRoleIdentifier => Str

Specifies the ARN of the IAM Role used for resource snapshot job
executions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSellingSystemSettings in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

