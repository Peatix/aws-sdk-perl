
package Paws::AppConfig::GetAccountSettings;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppConfig::AccountSettings');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::GetAccountSettings - Arguments for method GetAccountSettings on L<Paws::AppConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccountSettings on the
L<Amazon AppConfig|Paws::AppConfig> service. Use the attributes of this class
as arguments to method GetAccountSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccountSettings.

=head1 SYNOPSIS

    my $appconfig = Paws->service('AppConfig');
    my $AccountSettings = $appconfig->GetAccountSettings();

    # Results:
    my $DeletionProtection = $AccountSettings->DeletionProtection;

    # Returns a L<Paws::AppConfig::AccountSettings> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig/GetAccountSettings>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccountSettings in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

