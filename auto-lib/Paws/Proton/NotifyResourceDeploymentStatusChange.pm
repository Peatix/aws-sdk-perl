
package Paws::Proton::NotifyResourceDeploymentStatusChange;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId' );
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::Proton::Output]', traits => ['NameInRequest'], request_name => 'outputs' );
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'NotifyResourceDeploymentStatusChange');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Proton::NotifyResourceDeploymentStatusChangeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton::NotifyResourceDeploymentStatusChange - Arguments for method NotifyResourceDeploymentStatusChange on L<Paws::Proton>

=head1 DESCRIPTION

This class represents the parameters used for calling the method NotifyResourceDeploymentStatusChange on the
L<AWS Proton|Paws::Proton> service. Use the attributes of this class
as arguments to method NotifyResourceDeploymentStatusChange.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to NotifyResourceDeploymentStatusChange.

=head1 SYNOPSIS

    my $proton = Paws->service('Proton');
    my $NotifyResourceDeploymentStatusChangeOutput =
      $proton->NotifyResourceDeploymentStatusChange(
      ResourceArn  => 'MyArn',
      DeploymentId => 'MyDeploymentId',    # OPTIONAL
      Outputs      => [
        {
          Key         => 'MyOutputKey',            # min: 1, max: 1024; OPTIONAL
          ValueString => 'MyOutputValueString',    # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Status        => 'IN_PROGRESS',    # OPTIONAL
      StatusMessage =>
        'MyNotifyResourceDeploymentStatusChangeInputStatusMessageString'
      ,                                  # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton/NotifyResourceDeploymentStatusChange>

=head1 ATTRIBUTES


=head2 DeploymentId => Str

The deployment ID for your provisioned resource.



=head2 Outputs => ArrayRef[L<Paws::Proton::Output>]

The provisioned resource state change detail data that's returned by
Proton.



=head2 B<REQUIRED> ResourceArn => Str

The provisioned resource Amazon Resource Name (ARN).



=head2 Status => Str

The status of your provisioned resource.

Valid values are: C<"IN_PROGRESS">, C<"FAILED">, C<"SUCCEEDED">

=head2 StatusMessage => Str

The deployment status message for your provisioned resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method NotifyResourceDeploymentStatusChange in L<Paws::Proton>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

