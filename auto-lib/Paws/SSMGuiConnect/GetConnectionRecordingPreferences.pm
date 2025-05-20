
package Paws::SSMGuiConnect::GetConnectionRecordingPreferences;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConnectionRecordingPreferences');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetConnectionRecordingPreferences');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMGuiConnect::GetConnectionRecordingPreferencesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMGuiConnect::GetConnectionRecordingPreferences - Arguments for method GetConnectionRecordingPreferences on L<Paws::SSMGuiConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConnectionRecordingPreferences on the
L<AWS SSM-GUIConnect|Paws::SSMGuiConnect> service. Use the attributes of this class
as arguments to method GetConnectionRecordingPreferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConnectionRecordingPreferences.

=head1 SYNOPSIS

    my $ssm-guiconnect = Paws->service('SSMGuiConnect');
    my $GetConnectionRecordingPreferencesResponse =
      $ssm -guiconnect->GetConnectionRecordingPreferences();

    # Results:
    my $ClientToken = $GetConnectionRecordingPreferencesResponse->ClientToken;
    my $ConnectionRecordingPreferences =
      $GetConnectionRecordingPreferencesResponse
      ->ConnectionRecordingPreferences;

# Returns a L<Paws::SSMGuiConnect::GetConnectionRecordingPreferencesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect/GetConnectionRecordingPreferences>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConnectionRecordingPreferences in L<Paws::SSMGuiConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

