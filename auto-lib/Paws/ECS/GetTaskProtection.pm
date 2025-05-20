
package Paws::ECS::GetTaskProtection;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' , required => 1);
  has Tasks => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'tasks' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTaskProtection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::GetTaskProtectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::GetTaskProtection - Arguments for method GetTaskProtection on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTaskProtection on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method GetTaskProtection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTaskProtection.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $GetTaskProtectionResponse = $ecs->GetTaskProtection(
      Cluster => 'MyString',
      Tasks   => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $Failures       = $GetTaskProtectionResponse->Failures;
    my $ProtectedTasks = $GetTaskProtectionResponse->ProtectedTasks;

    # Returns a L<Paws::ECS::GetTaskProtectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/GetTaskProtection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the service that the task sets exist in.



=head2 Tasks => ArrayRef[Str|Undef]

A list of up to 100 task IDs or full ARN entries.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTaskProtection in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

