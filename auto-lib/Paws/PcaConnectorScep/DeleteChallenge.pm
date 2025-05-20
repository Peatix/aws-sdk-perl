
package Paws::PcaConnectorScep::DeleteChallenge;
  use Moose;
  has ChallengeArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ChallengeArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteChallenge');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/challenges/{ChallengeArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorScep::DeleteChallenge - Arguments for method DeleteChallenge on L<Paws::PcaConnectorScep>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteChallenge on the
L<Private CA Connector for SCEP|Paws::PcaConnectorScep> service. Use the attributes of this class
as arguments to method DeleteChallenge.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteChallenge.

=head1 SYNOPSIS

    my $pca-connector-scep = Paws->service('PcaConnectorScep');
    $pca -connector-scep->DeleteChallenge(
      ChallengeArn => 'MyChallengeArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep/DeleteChallenge>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChallengeArn => Str

The Amazon Resource Name (ARN) of the challenge password to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteChallenge in L<Paws::PcaConnectorScep>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

