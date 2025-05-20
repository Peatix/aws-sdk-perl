
package Paws::Grafana::DescribeWorkspaceConfiguration;
  use Moose;
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workspaceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkspaceConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workspaces/{workspaceId}/configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Grafana::DescribeWorkspaceConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::DescribeWorkspaceConfiguration - Arguments for method DescribeWorkspaceConfiguration on L<Paws::Grafana>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWorkspaceConfiguration on the
L<Amazon Managed Grafana|Paws::Grafana> service. Use the attributes of this class
as arguments to method DescribeWorkspaceConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWorkspaceConfiguration.

=head1 SYNOPSIS

    my $grafana = Paws->service('Grafana');
    my $DescribeWorkspaceConfigurationResponse =
      $grafana->DescribeWorkspaceConfiguration(
      WorkspaceId => 'MyWorkspaceId',

      );

    # Results:
    my $Configuration = $DescribeWorkspaceConfigurationResponse->Configuration;
    my $GrafanaVersion =
      $DescribeWorkspaceConfigurationResponse->GrafanaVersion;

    # Returns a L<Paws::Grafana::DescribeWorkspaceConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/grafana/DescribeWorkspaceConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace to get configuration information for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWorkspaceConfiguration in L<Paws::Grafana>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

