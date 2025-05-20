
package Paws::ECS::DeleteTaskDefinitions;
  use Moose;
  has TaskDefinitions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'taskDefinitions' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTaskDefinitions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::DeleteTaskDefinitionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::DeleteTaskDefinitions - Arguments for method DeleteTaskDefinitions on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTaskDefinitions on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method DeleteTaskDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTaskDefinitions.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $DeleteTaskDefinitionsResponse = $ecs->DeleteTaskDefinitions(
      TaskDefinitions => [ 'MyString', ... ],

    );

    # Results:
    my $Failures        = $DeleteTaskDefinitionsResponse->Failures;
    my $TaskDefinitions = $DeleteTaskDefinitionsResponse->TaskDefinitions;

    # Returns a L<Paws::ECS::DeleteTaskDefinitionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/DeleteTaskDefinitions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TaskDefinitions => ArrayRef[Str|Undef]

The C<family> and C<revision> (C<family:revision>) or full Amazon
Resource Name (ARN) of the task definition to delete. You must specify
a C<revision>.

You can specify up to 10 task definitions as a comma separated list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTaskDefinitions in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

