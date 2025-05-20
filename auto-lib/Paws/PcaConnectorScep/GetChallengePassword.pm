
package Paws::PcaConnectorScep::GetChallengePassword;
  use Moose;
  has ChallengeArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChallengeArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetChallengePassword');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/challengePasswords/{ChallengeArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PcaConnectorScep::GetChallengePasswordResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorScep::GetChallengePassword - Arguments for method GetChallengePassword on L<Paws::PcaConnectorScep>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetChallengePassword on the
L<Private CA Connector for SCEP|Paws::PcaConnectorScep> service. Use the attributes of this class
as arguments to method GetChallengePassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetChallengePassword.

=head1 SYNOPSIS

    my $pca-connector-scep = Paws->service('PcaConnectorScep');
    my $GetChallengePasswordResponse =
      $pca -connector-scep->GetChallengePassword(
      ChallengeArn => 'MyChallengeArn',

      );

    # Results:
    my $Password = $GetChallengePasswordResponse->Password;

    # Returns a L<Paws::PcaConnectorScep::GetChallengePasswordResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep/GetChallengePassword>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChallengeArn => Str

The Amazon Resource Name (ARN) of the challenge.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetChallengePassword in L<Paws::PcaConnectorScep>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

