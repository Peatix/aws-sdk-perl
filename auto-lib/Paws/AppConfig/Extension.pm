
package Paws::AppConfig::Extension;
  use Moose;
  has Actions => (is => 'ro', isa => 'Paws::AppConfig::ActionsMap');
  has Arn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::AppConfig::ParameterMap');
  has VersionNumber => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::Extension

=head1 ATTRIBUTES


=head2 Actions => L<Paws::AppConfig::ActionsMap>

The actions defined in the extension.


=head2 Arn => Str

The system-generated Amazon Resource Name (ARN) for the extension.


=head2 Description => Str

Information about the extension.


=head2 Id => Str

The system-generated ID of the extension.


=head2 Name => Str

The extension name.


=head2 Parameters => L<Paws::AppConfig::ParameterMap>

The parameters accepted by the extension. You specify parameter values
when you associate the extension to an AppConfig resource by using the
C<CreateExtensionAssociation> API action. For Lambda extension actions,
these parameters are included in the Lambda request object.


=head2 VersionNumber => Int

The extension version number.


=head2 _request_id => Str


=cut

