
package Paws::SupportApp::DeleteSlackWorkspaceConfiguration;
  use Moose;
  has TeamId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'teamId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSlackWorkspaceConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/control/delete-slack-workspace-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupportApp::DeleteSlackWorkspaceConfigurationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupportApp::DeleteSlackWorkspaceConfiguration - Arguments for method DeleteSlackWorkspaceConfiguration on L<Paws::SupportApp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSlackWorkspaceConfiguration on the
L<AWS Support App|Paws::SupportApp> service. Use the attributes of this class
as arguments to method DeleteSlackWorkspaceConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSlackWorkspaceConfiguration.

=head1 SYNOPSIS

    my $supportapp = Paws->service('SupportApp');
    my $DeleteSlackWorkspaceConfigurationResult =
      $supportapp->DeleteSlackWorkspaceConfiguration(
      TeamId => 'MyteamId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/supportapp/DeleteSlackWorkspaceConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TeamId => Str

The team ID in Slack. This ID uniquely identifies a Slack workspace,
such as C<T012ABCDEFG>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSlackWorkspaceConfiguration in L<Paws::SupportApp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

