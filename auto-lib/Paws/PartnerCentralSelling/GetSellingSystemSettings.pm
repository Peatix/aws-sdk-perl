
package Paws::PartnerCentralSelling::GetSellingSystemSettings;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSellingSystemSettings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PartnerCentralSelling::GetSellingSystemSettingsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::GetSellingSystemSettings - Arguments for method GetSellingSystemSettings on L<Paws::PartnerCentralSelling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSellingSystemSettings on the
L<Partner Central Selling API|Paws::PartnerCentralSelling> service. Use the attributes of this class
as arguments to method GetSellingSystemSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSellingSystemSettings.

=head1 SYNOPSIS

    my $partnercentral-selling = Paws->service('PartnerCentralSelling');
    my $GetSellingSystemSettingsResponse =
      $partnercentral -selling->GetSellingSystemSettings(
      Catalog => 'MyCatalogIdentifier',

      );

    # Results:
    my $Catalog = $GetSellingSystemSettingsResponse->Catalog;
    my $ResourceSnapshotJobRoleArn =
      $GetSellingSystemSettingsResponse->ResourceSnapshotJobRoleArn;

# Returns a L<Paws::PartnerCentralSelling::GetSellingSystemSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/partnercentral-selling/GetSellingSystemSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Specifies the catalog in which the settings are defined. Acceptable
values include C<AWS> for production and C<Sandbox> for testing
environments.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSellingSystemSettings in L<Paws::PartnerCentralSelling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

