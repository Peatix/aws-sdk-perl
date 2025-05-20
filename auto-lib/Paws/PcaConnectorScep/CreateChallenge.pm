
package Paws::PcaConnectorScep::CreateChallenge;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ConnectorArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::PcaConnectorScep::Tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChallenge');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/challenges');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PcaConnectorScep::CreateChallengeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorScep::CreateChallenge - Arguments for method CreateChallenge on L<Paws::PcaConnectorScep>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChallenge on the
L<Private CA Connector for SCEP|Paws::PcaConnectorScep> service. Use the attributes of this class
as arguments to method CreateChallenge.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChallenge.

=head1 SYNOPSIS

    my $pca-connector-scep = Paws->service('PcaConnectorScep');
    my $CreateChallengeResponse = $pca -connector-scep->CreateChallenge(
      ConnectorArn => 'MyConnectorArn',
      ClientToken  => 'MyClientToken',                  # OPTIONAL
      Tags         => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $Challenge = $CreateChallengeResponse->Challenge;

    # Returns a L<Paws::PcaConnectorScep::CreateChallengeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep/CreateChallenge>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Custom string that can be used to distinguish between calls to the
CreateChallenge
(https://docs.aws.amazon.com/C4SCEP_API/pca-connector-scep/latest/APIReference/API_CreateChallenge.html)
action. Client tokens for C<CreateChallenge> time out after five
minutes. Therefore, if you call C<CreateChallenge> multiple times with
the same client token within five minutes, Connector for SCEP
recognizes that you are requesting only one challenge and will only
respond with one. If you change the client token for each call,
Connector for SCEP recognizes that you are requesting multiple
challenge passwords.



=head2 B<REQUIRED> ConnectorArn => Str

The Amazon Resource Name (ARN) of the connector that you want to create
a challenge for.



=head2 Tags => L<Paws::PcaConnectorScep::Tags>

The key-value pairs to associate with the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChallenge in L<Paws::PcaConnectorScep>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

