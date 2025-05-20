
package Paws::RedShift::PutResourcePolicy;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::PutResourcePolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PutResourcePolicyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $PutResourcePolicyResult = $redshift->PutResourcePolicy(
      Policy      => 'MyString',
      ResourceArn => 'MyString',

    );

    # Results:
    my $ResourcePolicy = $PutResourcePolicyResult->ResourcePolicy;

    # Returns a L<Paws::RedShift::PutResourcePolicyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Policy => Str

The content of the resource policy being updated.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource of which its resource
policy is updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

