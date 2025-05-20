
package Paws::Rekognition::DeleteProjectPolicy;
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyRevisionId => (is => 'ro', isa => 'Str');
  has ProjectArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteProjectPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::DeleteProjectPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DeleteProjectPolicy - Arguments for method DeleteProjectPolicy on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteProjectPolicy on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method DeleteProjectPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteProjectPolicy.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $DeleteProjectPolicyResponse = $rekognition->DeleteProjectPolicy(
      PolicyName       => 'MyProjectPolicyName',
      ProjectArn       => 'MyProjectArn',
      PolicyRevisionId => 'MyProjectPolicyRevisionId',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/DeleteProjectPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyName => Str

The name of the policy that you want to delete.



=head2 PolicyRevisionId => Str

The ID of the project policy revision that you want to delete.



=head2 B<REQUIRED> ProjectArn => Str

The Amazon Resource Name (ARN) of the project that the project policy
you want to delete is attached to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteProjectPolicy in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

