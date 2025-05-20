
package Paws::Macie2::UpdateRevealConfiguration;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::Macie2::RevealConfiguration', traits => ['NameInRequest'], request_name => 'configuration', required => 1);
  has RetrievalConfiguration => (is => 'ro', isa => 'Paws::Macie2::UpdateRetrievalConfiguration', traits => ['NameInRequest'], request_name => 'retrievalConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRevealConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/reveal-configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::UpdateRevealConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::UpdateRevealConfiguration - Arguments for method UpdateRevealConfiguration on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRevealConfiguration on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method UpdateRevealConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRevealConfiguration.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $UpdateRevealConfigurationResponse = $macie2->UpdateRevealConfiguration(
      Configuration => {
        Status   => 'ENABLED',                  # values: ENABLED, DISABLED
        KmsKeyId => 'My__stringMin1Max2048',    # min: 1, max: 2048; OPTIONAL
      },
      RetrievalConfiguration => {
        RetrievalMode =>
          'CALLER_CREDENTIALS',    # values: CALLER_CREDENTIALS, ASSUME_ROLE
        RoleName => 'My__stringMin1Max64PatternW',   # min: 1, max: 64; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Configuration = $UpdateRevealConfigurationResponse->Configuration;
    my $RetrievalConfiguration =
      $UpdateRevealConfigurationResponse->RetrievalConfiguration;

    # Returns a L<Paws::Macie2::UpdateRevealConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/UpdateRevealConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => L<Paws::Macie2::RevealConfiguration>

The KMS key to use to encrypt the sensitive data, and the status of the
configuration for the Amazon Macie account.



=head2 RetrievalConfiguration => L<Paws::Macie2::UpdateRetrievalConfiguration>

The access method and settings to use when retrieving the sensitive
data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRevealConfiguration in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

