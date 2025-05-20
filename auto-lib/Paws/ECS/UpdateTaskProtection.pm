
package Paws::ECS::UpdateTaskProtection;
  use Moose;
  has Cluster => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cluster' , required => 1);
  has ExpiresInMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'expiresInMinutes' );
  has ProtectionEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'protectionEnabled' , required => 1);
  has Tasks => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'tasks' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTaskProtection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::UpdateTaskProtectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::UpdateTaskProtection - Arguments for method UpdateTaskProtection on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTaskProtection on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method UpdateTaskProtection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTaskProtection.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $UpdateTaskProtectionResponse = $ecs->UpdateTaskProtection(
      Cluster           => 'MyString',
      ProtectionEnabled => 1,
      Tasks             => [ 'MyString', ... ],
      ExpiresInMinutes  => 1,                     # OPTIONAL
    );

    # Results:
    my $Failures       = $UpdateTaskProtectionResponse->Failures;
    my $ProtectedTasks = $UpdateTaskProtectionResponse->ProtectedTasks;

    # Returns a L<Paws::ECS::UpdateTaskProtectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/UpdateTaskProtection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cluster => Str

The short name or full Amazon Resource Name (ARN) of the cluster that
hosts the service that the task sets exist in.



=head2 ExpiresInMinutes => Int

If you set C<protectionEnabled> to C<true>, you can specify the
duration for task protection in minutes. You can specify a value from 1
minute to up to 2,880 minutes (48 hours). During this time, your task
will not be terminated by scale-in events from Service Auto Scaling or
deployments. After this time period lapses, C<protectionEnabled> will
be reset to C<false>.

If you donE<rsquo>t specify the time, then the task is automatically
protected for 120 minutes (2 hours).



=head2 B<REQUIRED> ProtectionEnabled => Bool

Specify C<true> to mark a task for protection and C<false> to unset
protection, making it eligible for termination.



=head2 B<REQUIRED> Tasks => ArrayRef[Str|Undef]

A list of up to 10 task IDs or full ARN entries.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTaskProtection in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

