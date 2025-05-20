
package Paws::AppConfig::ExtensionAssociation;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has ExtensionArn => (is => 'ro', isa => 'Str');
  has ExtensionVersionNumber => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::AppConfig::ParameterValueMap');
  has ResourceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::ExtensionAssociation

=head1 ATTRIBUTES


=head2 Arn => Str

The system-generated Amazon Resource Name (ARN) for the extension.


=head2 ExtensionArn => Str

The ARN of the extension defined in the association.


=head2 ExtensionVersionNumber => Int

The version number for the extension defined in the association.


=head2 Id => Str

The system-generated ID for the association.


=head2 Parameters => L<Paws::AppConfig::ParameterValueMap>

The parameter names and values defined in the association.


=head2 ResourceArn => Str

The ARNs of applications, configuration profiles, or environments
defined in the association.


=head2 _request_id => Str


=cut

