
package Paws::Rekognition::PutProjectPolicy;
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyRevisionId => (is => 'ro', isa => 'Str');
  has ProjectArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutProjectPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::PutProjectPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::PutProjectPolicy - Arguments for method PutProjectPolicy on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutProjectPolicy on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method PutProjectPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutProjectPolicy.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $PutProjectPolicyResponse = $rekognition->PutProjectPolicy(
      PolicyDocument   => 'MyProjectPolicyDocument',
      PolicyName       => 'MyProjectPolicyName',
      ProjectArn       => 'MyProjectArn',
      PolicyRevisionId => 'MyProjectPolicyRevisionId',    # OPTIONAL
    );

    # Results:
    my $PolicyRevisionId = $PutProjectPolicyResponse->PolicyRevisionId;

    # Returns a L<Paws::Rekognition::PutProjectPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/PutProjectPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyDocument => Str

A resource policy to add to the model. The policy is a JSON structure
that contains one or more statements that define the policy. The policy
must follow the IAM syntax. For more information about the contents of
a JSON policy document, see IAM JSON policy reference
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies.html).



=head2 B<REQUIRED> PolicyName => Str

A name for the policy.



=head2 PolicyRevisionId => Str

The revision ID for the Project Policy. Each time you modify a policy,
Amazon Rekognition Custom Labels generates and assigns a new
C<PolicyRevisionId> and then deletes the previous version of the
policy.



=head2 B<REQUIRED> ProjectArn => Str

The Amazon Resource Name (ARN) of the project that the project policy
is attached to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutProjectPolicy in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

