
package Paws::SSMGuiConnect::UpdateConnectionRecordingPreferences;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ConnectionRecordingPreferences => (is => 'ro', isa => 'Paws::SSMGuiConnect::ConnectionRecordingPreferences', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConnectionRecordingPreferences');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/UpdateConnectionRecordingPreferences');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMGuiConnect::UpdateConnectionRecordingPreferencesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMGuiConnect::UpdateConnectionRecordingPreferences - Arguments for method UpdateConnectionRecordingPreferences on L<Paws::SSMGuiConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConnectionRecordingPreferences on the
L<AWS SSM-GUIConnect|Paws::SSMGuiConnect> service. Use the attributes of this class
as arguments to method UpdateConnectionRecordingPreferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConnectionRecordingPreferences.

=head1 SYNOPSIS

    my $ssm-guiconnect = Paws->service('SSMGuiConnect');
    my $UpdateConnectionRecordingPreferencesResponse =
      $ssm -guiconnect->UpdateConnectionRecordingPreferences(
      ConnectionRecordingPreferences => {
        KMSKeyArn =>
          'MyConnectionRecordingPreferencesKMSKeyArnString', # min: 1, max: 2048
        RecordingDestinations => {
          S3Buckets => [
            {
              BucketName  => 'MyBucketName',
              BucketOwner => 'MyAccountId',

            },
            ...
          ],    # min: 1, max: 1

        },

      },
      ClientToken => 'MyClientToken',    # OPTIONAL
      );

    # Results:
    my $ClientToken =
      $UpdateConnectionRecordingPreferencesResponse->ClientToken;
    my $ConnectionRecordingPreferences =
      $UpdateConnectionRecordingPreferencesResponse
      ->ConnectionRecordingPreferences;

# Returns a L<Paws::SSMGuiConnect::UpdateConnectionRecordingPreferencesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-guiconnect/UpdateConnectionRecordingPreferences>

=head1 ATTRIBUTES


=head2 ClientToken => Str

User-provided idempotency token.



=head2 B<REQUIRED> ConnectionRecordingPreferences => L<Paws::SSMGuiConnect::ConnectionRecordingPreferences>

The set of preferences used for recording RDP connections in the
requesting Amazon Web Services account and Amazon Web Services Region.
This includes details such as which S3 bucket recordings are stored in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConnectionRecordingPreferences in L<Paws::SSMGuiConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

