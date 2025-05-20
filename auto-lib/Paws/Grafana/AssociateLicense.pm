
package Paws::Grafana::AssociateLicense;
  use Moose;
  has GrafanaToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Grafana-Token');
  has LicenseType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'licenseType', required => 1);
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateLicense');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/licenses/{licenseType}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Grafana::AssociateLicenseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::AssociateLicense - Arguments for method AssociateLicense on L<Paws::Grafana>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateLicense on the
L<Amazon Managed Grafana|Paws::Grafana> service. Use the attributes of this class
as arguments to method AssociateLicense.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateLicense.

=head1 SYNOPSIS

    my $grafana = Paws->service('Grafana');
    my $AssociateLicenseResponse = $grafana->AssociateLicense(
      LicenseType  => 'ENTERPRISE',
      WorkspaceId  => 'MyWorkspaceId',
      GrafanaToken => 'MyGrafanaToken',    # OPTIONAL
    );

    # Results:
    my $Workspace = $AssociateLicenseResponse->Workspace;

    # Returns a L<Paws::Grafana::AssociateLicenseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/grafana/AssociateLicense>

=head1 ATTRIBUTES


=head2 GrafanaToken => Str

A token from Grafana Labs that ties your Amazon Web Services account
with a Grafana Labs account. For more information, see Link your
account with Grafana Labs
(https://docs.aws.amazon.com/grafana/latest/userguide/upgrade-to-Grafana-Enterprise.html#AMG-workspace-register-enterprise).



=head2 B<REQUIRED> LicenseType => Str

The type of license to associate with the workspace.

Amazon Managed Grafana workspaces no longer support Grafana Enterprise
free trials.

Valid values are: C<"ENTERPRISE">, C<"ENTERPRISE_FREE_TRIAL">

=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace to associate the license with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateLicense in L<Paws::Grafana>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

